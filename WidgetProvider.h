#pragma once
#include <unordered_map>
struct CompactWidgetInfo
{
    winrt::hstring widgetId;
    winrt::hstring widgetName;
    int customState = 0;
    bool isActive = false;
};

struct WidgetProvider : winrt::implements<WidgetProvider, winrt::Microsoft::Windows::Widgets::Providers::IWidgetProvider>
{
    WidgetProvider();

    /* IWidgetProvider required functions that need to be implemented */
    void CreateWidget(winrt::Microsoft::Windows::Widgets::Providers::WidgetContext widgetContext);
    void DeleteWidget(winrt::hstring const& widgetId, winrt::hstring const& customState);
    void OnActionInvoked(winrt::Microsoft::Windows::Widgets::Providers::WidgetActionInvokedArgs actionInvokedArgs);
    void OnWidgetContextChanged(winrt::Microsoft::Windows::Widgets::Providers::WidgetContextChangedArgs contextChangedArgs);
    void Activate(winrt::Microsoft::Windows::Widgets::Providers::WidgetContext widgetContext);
    void Deactivate(winrt::hstring widgetId);
    /* IWidgetProvider required functions that need to be implemented */

    // WidgetProvider.h
private:

    void UpdateWidget(CompactWidgetInfo const& localWidgetInfo);
    static std::unordered_map<winrt::hstring, CompactWidgetInfo> RunningWidgets;
};


const std::string widgetTemplate = R"(
{
    "type": "AdaptiveCard",
    "body": [
        {
            "type": "TextBlock",
            "size": "Medium",
            "weight": "Bolder",
            "wrap": true,
            "text": "${title}"
        },
        {
            "type": "TextBlock",
            "size": "Small",
            "text": "${description}",
            "wrap": true
        },
        {
            "type": "Input.Toggle",
            "title": "${ToDoOne}",
            "wrap": true,
            "spacing": "Medium"
        },
        {
            "type": "Input.Toggle",
            "title": "${ToDoTwo}",
            "wrap": true
        },
        {
            "type": "Input.Toggle",
            "title": "${InquiryAd}",
            "wrap": true
        },
        {
            "type": "Input.Toggle",
            "title": "${ToDoThree}",
            "wrap": true
        },
        {
            "type": "Image",
            "style": "Person",
            "url": "${Adonis.profileImage}",
            "size": "Medium",
            "horizontalAlignment": "Right"
        }
    ],
    "actions": [
        {
            "type": "Action.OpenUrl",
            "title": "Order Here",
            "url": "${viewUrl}"
        }
    ],
    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
    "version": "1.5",
    "rtl": false
})";
