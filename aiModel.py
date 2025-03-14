import os
from openai import OpenAI

client = OpenAI(

    api_key="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"
)

response = client.responses.create(
    model="gpt-4o",
    instructions="You are building a to-do list",
    input= "{\"title\": \"\", \"description\": \"\", \"Adonis\": { \"profileImage\": \"https://pbs.twimg.com/profile_images/3647943215/d7f12830b3c17a5a9e4afcc370e3a37e_400x400.jpeg\" }, { \"viewUrl\": \"\", \"ToDoOne\": \"\", \"ToDoTwo\": \"\", \"InquiryAd\": \"\", \"ToDoThree\": \"\" }} Fill out the provided JSON prompt. Include only task, datetime.datetime, and Event. Use no extra added inserts or variables. Utilize InquiryAd to generate a short suggestion for the user to purchase based on the tasks within the to-do list. Do NOT change the order of the internal variables. If a variable isn't available, disregard it. If regard is not present, disregard it. Do not create suggestions on the to-do list itself. Avoid suggesting organizational systems. DO base the list on what a user would need in between the set meetings. Personalize the format of each to-do to be friendly and helpful in tone. [(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 'USA', 'CA', '123 Main St, Anytown', 5551234567, '90210', 'Software Engineer', 32, 'Meeting with team', 'N/A', 'Technology, Travel', 'www.example.com, www.techblog.com', 10, 25, datetime.datetime(2023, 11, 1, 9, 0), datetime.datetime(2023, 11, 1, 9, 45), datetime.timedelta(seconds=2700)), (2, 'Bob', 'Smith', 'bob.smith@example.net', 'Canada', 'ON', '456 Oak Ave, Toronto', 1239876543, '12345', 'Marketing Manager', 45, 'Conference call', 'N/A', 'Marketing, Sports', 'www.marketingsite.org, www.sportsnews.ca', 5, 12, datetime.datetime(2023, 11, 1, 10, 30), datetime.datetime(2023, 11, 1, 11, 15), datetime.timedelta(seconds=2700)), (3, 'Charlie', 'Brown', 'charlie.brown@example.org', 'UK', 'LDN', '789 Pine Ln, London', 44777123456, 'SW1A 1AA', 'Teacher', 28, 'Parent-teacher meeting', 'N/A', 'Education, Reading', 'www.education.gov.uk, www.books.co.uk', 2, 8, datetime.datetime(2023, 11, 1, 13, 0), datetime.datetime(2023, 11, 1, 13, 30), datetime.timedelta(seconds=1800)), (4, 'David', 'Lee', 'david.lee@example.io', 'Australia', 'NSW', '101 Maple Rd, Sydney', 61298765432, '2000', 'Accountant', 38, 'Client meeting', 'N/A', 'Finance, Cooking', 'www.finance.au, www.recipes.au', 8, 18, datetime.datetime(2023, 11, 1, 14, 15), datetime.datetime(2023, 11, 1, 15, 0), datetime.timedelta(seconds=2700)), (5, 'Eve', 'Wilson', 'eve.wilson@example.co', 'Germany', 'BER', '202 Birch St, Berlin', 49301234567, '10115', 'Graphic Designer', 26, 'Design workshop', 'N/A', 'Design, Art', 'www.design.de, www.artgallery.de', 3, 15, datetime.datetime(2023, 11, 1, 15, 30), datetime.datetime(2023, 11, 1, 16, 45), datetime.timedelta(seconds=4500))] {\"title\": \"\", \"description\": \"\", \"Adonis\": { \"profileImage\": \"https://pbs.twimg.com/profile_images/3647943215/d7f12830b3c17a5a9e4afcc370e3a37e_400x400.jpeg\" }, { \"viewUrl\": \"\", \"ToDoOne\": \"\", \"ToDoTwo\": \"\", \"InquiryAd\": \"\", \"ToDoThree\": \"\" }}"

)


''' Variant 1 Result
{
  "title": "Today's To-Do List",
  "description": "A productive day ahead with these key tasks!",
  "Adonis": {
    "profileImage": "https://pbs.twimg.com/profile_images/3647943215/d7f12830b3c17a5a9e4afcc370e3a37e_400x400.jpeg"
  },
  {
    "viewUrl": "",
    "ToDoOne": "Grab a coffee and review meeting notes before the team meeting at 9:00 AM.",
    "ToDoTwo": "Prepare a summary of marketing strategies for the conference call at 10:30 AM.",
    "InquiryAd": "Consider purchasing a comfortable office chair to enhance your work-from-home setup during meetings!",
    "ToDoThree": "Relax with a good book or an inspirational podcast before the next meeting!"
  }
}
'''



print(response.output_text)