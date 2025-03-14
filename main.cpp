#include "pch.h"
#include "WidgetProvider.h"
#include <mutex>

using namespace winrt;
using namespace Windows::Foundation;


wil::unique_event g_shudownEvent(wil::EventOptions::None);

void SignalLocalServerShutdown()
{
    g_shudownEvent.SetEvent();
}

// {80F4CB41-5758-4493-9180-4FB8D480E3F5}
static constexpr GUID widget_provider_clsid
{
    0x80f4cb41, 0x5758, 0x4493, { 0x91, 0x80, 0x4f, 0xb8, 0xd4, 0x80, 0xe3, 0xf5 }
};

// main.cpp
template <typename T>
struct SingletonClassFactory : winrt::implements<SingletonClassFactory<T>, IClassFactory>
{
    STDMETHODIMP CreateInstance(
        ::IUnknown* outer,
        GUID const& iid,
        void** result) noexcept final
    {
        *result = nullptr;

        std::unique_lock lock(mutex);

        if (outer)
        {
            return CLASS_E_NOAGGREGATION;
        }

        if (!instance)
        {
            instance = winrt::make<WidgetProvider>();
        }

        return instance.as(iid, result);
    }

    STDMETHODIMP LockServer(BOOL) noexcept final
    {
        return S_OK;
    }

private:
    T instance{ nullptr };
    std::mutex mutex;
};

int main()
{
    winrt::init_apartment();
    wil::unique_com_class_object_cookie widgetProviderFactory;
    auto factory = winrt::make<SingletonClassFactory<winrt::Microsoft::Windows::Widgets::Providers::IWidgetProvider>>();

    winrt::check_hresult(CoRegisterClassObject(
        widget_provider_clsid,
        factory.get(),
        CLSCTX_LOCAL_SERVER,
        REGCLS_MULTIPLEUSE,
        widgetProviderFactory.put()));

    DWORD index{};
    HANDLE events[] = { g_shudownEvent.get() };
    winrt::check_hresult(CoWaitForMultipleObjects(CWMO_DISPATCH_CALLS | CWMO_DISPATCH_WINDOW_MESSAGES,
        INFINITE,
        static_cast<ULONG>(std::size(events)), events, &index));

    return 0;
}

