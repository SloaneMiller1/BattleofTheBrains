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
}

{
    "title": "Today's To-Do List",
    "description": "A productive day ahead with these key tasks!",
    "Adonis": {
        "profileImage": "https://adaptivecards.io/content/cats/1.png"
    },
     "viewUrl": "https://about.starbucks.com/press/2024/summer-app-y-days-a-season-full-of-exciting-offers-in-the-starbucks-app/",
    "ToDoOne": "Grab a coffee and review meeting notes before the team meeting at 9:00 AM.",
    "ToDoTwo": "Prepare a summary of marketing strategies for the conference call at 10:30 AM.",
    "InquiryAd": "Consider purchasing a comfortable office chair to enhance your work-from-home setup during meetings!",
    "ToDoThree": "Relax with a good book or an inspirational podcast before the next meeting!"
}