//pch.h
#include <stdint.h>
#include <combaseapi.h>

// In .exe local servers the class object must not contribute to the module ref count, and use
// winrt::no_module_lock, the other objects must and this is the hook into the C++ WinRT ref counting system
// that enables this.
void SignalLocalServerShutdown();

namespace winrt
{
    inline auto get_module_lock() noexcept
    {
        struct service_lock
        {
            uint32_t operator++() noexcept
            {
                return ::CoAddRefServerProcess();
            }

            uint32_t operator--() noexcept
            {
                const auto ref = ::CoReleaseServerProcess();

                if (ref == 0)
                {
                    SignalLocalServerShutdown();
                }
                return ref;
            }
        };

        return service_lock{};
    }
}


#define WINRT_CUSTOM_MODULE_LOCK


#pragma once

#include <winrt/Windows.Foundation.h>
#include <winrt/Windows.Foundation.Collections.h>

#include <wil/cppwinrt.h>
#include <wil/resource.h>
#include <winrt/Microsoft.Windows.Widgets.Providers.h>