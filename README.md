

The application, Adonis, is an AI assistant that utilizes user data to compile personalized advertisements based on each consumer’s provided interests, location, schedule, and other unique demographics. This seamlessly provides companies with an easier and more sustainable way to advertise their products through enhanced personalization. 

This is achievable by using Visual Studio 2022 (used for Python and Flask HTML), MySQL for database development, Python for the API, and OpenAI sourcing for demonstrative purposes to simulate how the app would generate a daily schedule with a built-in advertisement, for example.

To run the SQL sector, the file must first be unzipped, and the SQL files need to be compiled to initialize the database in this order: company_initializationDB, customerInformation, companyInformation, storageTable, and then orderTable. Additionally, administrative access is required to inspect the tables visually. The Python API and Python scripts operate independently. The user can submit input to the API for practical use to obtain the desired results. To test functionality, run the SelectQuery() statement for the tables to view the databases before modification. 

The Widget UI utilized the Windows AdaptiveCards.io system to create our core functionality on the Front End. To operate CardPlayLoadDeveloper.IO implement the code accordingly within: 

https://adaptivecards.io/designer/

The documentation for the database design framework and query execution is developed within the context of a simulated sample company, focusing on a comprehensive table that catalogs customers, their contact information, routines, schedules, and personalized values. The overarching purpose of this database is to provide a small yet illustrative example of data management and utilization, demonstrating how companies can align their marketing strategies with their core values while simultaneously personalizing advertisements to meet the unique needs of individuals. 

Building the Adonis widget required an ensemble of resources outside the scope of Github, including Visual Studio 2022, C++/WinRT Widget Provider extensions and libraries, and Microsoft’s Adaptive Cards widget-building service. Once the user acquires the necessary extensions and loads all of the code, they can test the widget by first right-clicking the Solution Folder and clicking Build. Then, by right-clicking the Widget Provider Package and clicking Deploy, the user can navigate to their computer’s widget add menu and find Adonis as an added option at the bottom. Opting to pin will allow Adonis to sit as a main, visible widget.

Since the functionality of Adonis’s widget provider is mainly dependent on accessing the libraries, extensions, and functionalities of Visual Studio, migrating and implementing the solution in Github proved to be an operation beyond the scope of our solution due to Github’s size constraints (100 MB). However, these resources may still be downloaded and utilized with our code to build and deploy their widget via Visual Studio, should the user genuinely want to see its functionality. The following link can be used as a guide to understanding how to set up Visual Studio 2022 and download/select the right extensions and dependencies, mainly including the Universal Windows Platform development workload, the C++/WinRT template, and Microsoft.Windows.Implementation.Library (via Visual Studio NuGet Package): Implement a widget provider in a C# Windows App - Windows apps | Microsoft Learn

The AI model was built via accessing OpenAI’s publicly available API documentation. By writing effective, prompt engineering that implements information from the connected database, the user can run and query OpenAI to generate a JSON payload that, when fed to Adonis, will display a recommended to-do list for the user. If still using OpenAI, please note that the service may require the purchase of additional tokens to ensure there is space for the queries to be made.


https://learn.microsoft.com/en-us/windows/apps/develop/widgets/implement-widget-provider-win32

