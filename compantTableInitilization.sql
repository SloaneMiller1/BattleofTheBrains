use companyDatabase;
drop table companyInfo;
create table companyInfo(
 id INT PRIMARY KEY AUTO_INCREMENT,
companyName VARCHAR(100) default "CompanyName",
companyDescription VARCHAR(7500),
companyValueKeyWords VarChar(100)
);
-- Sample Data for companyInfo

INSERT INTO companyInfo (companyName, companyDescription, companyValueKeyWords) VALUES
('TechInnovate Solutions', 
 'We specialize in providing cutting-edge software solutions for businesses of all sizes. Our mission is to empower our clients with innovative technology that drives growth and efficiency.', 
 'Software, Innovation, Technology, Solutions, Growth, Efficiency'),

('GreenEarth Organics', 
 'We are committed to sustainable agriculture and providing our customers with the highest quality organic produce. Our focus is on environmental responsibility and healthy living.', 
 'Organic, Sustainable, Agriculture, Produce, Environment, Health'),

('FashionForward Trends', 
 'Our brand is dedicated to bringing the latest fashion trends to our customers at affordable prices. We believe that everyone deserves to look and feel their best.', 
 'Fashion, Trends, Clothing, Affordable, Style, Retail'),

('GlobalEdu Learning', 
 'We offer online educational resources and courses for students of all ages. Our goal is to make quality education accessible to everyone, everywhere.', 
 'Education, Online, Learning, Courses, Resources, Accessibility'),

('AutoMax Performance', 
 'We provide top-of-the-line automotive parts and services for performance enthusiasts. Our passion is helping our customers achieve the ultimate driving experience.', 
 'Automotive, Performance, Parts, Services, Driving, Enthusiasts');
select * from companyInfo;

