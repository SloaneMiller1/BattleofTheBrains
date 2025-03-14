use companyDatabase;
CREATE TABLE customerInformation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) DEFAULT "John",
    last_name VARCHAR(50) DEFAULT "Doe",
    email VARCHAR(100) UNIQUE,
    country VARCHAR(150) NOT NULL,
    stateorprovidence VARCHAR(10) NOT NULL,
    homeaddress VARCHAR(200) NOT NULL,
    phoneNumber BIGINT NOT NULL,
    ZipCode VARCHAR(20) NOT NULL, -- Changed to VARCHAR
    occupation VARCHAR(50) DEFAULT "N/A",
    age SMALLINT NOT NULL,
    calendarEvents VARCHAR(250) DEFAULT "N/A",
    emailEvent VARCHAR(500) DEFAULT "N/A",
    interests VARCHAR(250) DEFAULT "N/A",
    visitedSites VARCHAR(1000) NOT NULL,
    adsClicked INT,
    likedContent INT,
    visitStartTime DATETIME,
    visitEndTime DATETIME,
    elapsedTime TIME GENERATED ALWAYS AS (TIMEDIFF(visitEndTime, visitStartTime)) VIRTUAL
);
INSERT INTO customerInformation (
    first_name, last_name, email, country, stateorprovidence, homeaddress, phoneNumber, ZipCode, occupation, age, calendarEvents, interests, visitedSites, adsClicked, likedContent, visitStartTime, visitEndTime
) VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com', 'USA', 'CA', '123 Main St, Anytown', 5551234567, 90210, 'Software Engineer', 32, 'Meeting with team', 'Technology, Travel', 'www.example.com, www.techblog.com', 10, 25, '2023-11-01 09:00:00', '2023-11-01 09:45:00'),
    ('Bob', 'Smith', 'bob.smith@example.net', 'Canada', 'ON', '456 Oak Ave, Toronto', 1239876543, 12345, 'Marketing Manager', 45, 'Conference call', 'Marketing, Sports', 'www.marketingsite.org, www.sportsnews.ca', 5, 12, '2023-11-01 10:30:00', '2023-11-01 11:15:00'),
    ('Charlie', 'Brown', 'charlie.brown@example.org', 'UK', 'LDN', '789 Pine Ln, London', 44777123456, 'SW1A 1AA', 'Teacher', 28, 'Parent-teacher meeting', 'Education, Reading', 'www.education.gov.uk, www.books.co.uk', 2, 8, '2023-11-01 13:00:00', '2023-11-01 13:30:00'),
    ('David', 'Lee', 'david.lee@example.io', 'Australia', 'NSW', '101 Maple Rd, Sydney', 61298765432, '2000', 'Accountant', 38, 'Client meeting', 'Finance, Cooking', 'www.finance.au, www.recipes.au', 8, 18, '2023-11-01 14:15:00', '2023-11-01 15:00:00'),
    ('Eve', 'Wilson', 'eve.wilson@example.co', 'Germany', 'BER', '202 Birch St, Berlin', 49301234567, '10115', 'Graphic Designer', 26, 'Design workshop', 'Design, Art', 'www.design.de, www.artgallery.de', 3, 15, '2023-11-01 15:30:00', '2023-11-01 16:45:00');
select * from customerInformation;
