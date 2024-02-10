-- Customers
INSERT INTO Customers (CustomerID, CustomerFirstName, CustomerLastName, Gender, Mobile, Email, Address)
VALUES
(1, 'Alice', 'Johnson', 'Female', '1234567890', 'alice.j@email.com', '123 Oak St'),
(2, 'Bob', 'Smith', 'Male', '9876543210', 'bob.smith@email.com', '456 Maple St'),
(3, 'Charlie', 'Davis', 'Male', '5551112233', 'charlie.d@email.com', '789 Birch St'),
(4, 'Diana', 'Miller', 'Female', '4442221111', 'diana.m@email.com', '101 Pine St'),
(5, 'Eva', 'Taylor', 'Female', '9998887777', 'eva.t@email.com', '202 Cedar St'),
(6, 'Frank', 'Moore', 'Male', '6663335555', 'frank.m@email.com', '303 Elm St'),
(7, 'Grace', 'White', 'Female', '1119994444', 'grace.w@email.com', '404 Spruce St'),
(8, 'Harry', 'Brown', 'Male', '7774440000', 'harry.b@email.com', '505 Walnut St'),
(9, 'Ivy', 'Martin', 'Female', '2225558888', 'ivy.m@email.com', '606 Pine St'),
(10, 'Jack', 'Clark', 'Male', '8880006666', 'jack.c@email.com', '707 Birch St'),
(11, 'Katie', 'Anderson', 'Female', '3336669999', 'katie.a@email.com', '808 Oak St'),
(12, 'Leo', 'Wilson', 'Male', '6669993333', 'leo.w@email.com', '909 Maple St'),
(13, 'Mia', 'Hall', 'Female', '1114447777', 'mia.h@email.com', '1010 Elm St'),
(14, 'Noah', 'Cooper', 'Male', '4447771111', 'noah.c@email.com', '1111 Spruce St'),
(15, 'Olivia', 'Hill', 'Female', '7771114444', 'olivia.h@email.com', '1212 Walnut St');

-- Professionals
INSERT INTO Professionals (ProfessionalID, ProfessionalFirstName, ProfessionalLastName, Profession, Bio, Mobile, Email, Address, ExperienceInYears)
VALUES
(1, 'Sam', 'Roberts', 'Plumber', 'Experienced plumber with a focus on pipe repairs.', '5552228888', 'sam.r@email.com', '123 Main St', '8'),
(2, 'Emma', 'Brown', 'Electrician', 'Certified electrician specializing in wiring installations.', '4449993333', 'emma.b@email.com', '456 Oak St', '10'),
(3, 'Liam', 'Baker', 'Gardener', 'Passionate gardener offering landscaping services.', '3338884444', 'liam.b@email.com', '789 Pine St', '5'),
(4, 'Sophia', 'Woods', 'Painter', 'Skilled painter with expertise in interior and exterior painting.', '2227770000', 'sophia.w@email.com', '101 Cedar St', '7'),
(5, 'Aiden', 'Fisher', 'Handyman', 'Versatile handyman providing a range of home maintenance services.', '1116662222', 'aiden.f@email.com', '202 Elm St', '6'),
(6, 'Ava', 'Miller', 'Hair Stylist', 'Creative hair stylist with a focus on trendy and classic styles.', '8885551111', 'ava.m@email.com', '303 Walnut St', '9'),
(7, 'Ethan', 'Ward', 'IT Specialist', 'Experienced IT specialist offering computer repair and troubleshooting services.', '7774449999', 'ethan.w@email.com', '404 Spruce St', '12'),
(8, 'Isabella', 'Foster', 'Chef', 'Professional chef providing catering services for events and special occasions.', '6663338888', 'isabella.f@email.com', '505 Maple St', '15'),
(9, 'Lucas', 'Smith', 'Fitness Trainer', 'Certified fitness trainer offering personalized workout plans and coaching sessions.', '5552227777', 'lucas.s@email.com', '606 Pine St', '8'),
(10, 'Olivia', 'Cooper', 'Interior Designer', 'Creative interior designer specializing in residential and commercial spaces.', '4449996666', 'olivia.c@email.com', '707 Birch St', '10'),
(11, 'Mason', 'Hill', 'Photographer', 'Talented photographer capturing special moments in weddings and events.', '3338885555', 'mason.h@email.com', '808 Oak St', '7'),
(12, 'Amelia', 'Carter', 'Event Planner', 'Experienced event planner coordinating weddings, parties, and corporate events.', '2227774444', 'amelia.c@email.com', '909 Pine St', '9'),
(13, 'Logan', 'Mitchell', 'Carpenter', 'Skilled carpenter providing custom woodworking and furniture services.', '1116663333', 'logan.m@email.com', '1010 Elm St', '11'),
(14, 'Ella', 'Barnes', 'Makeup Artist', 'Professional makeup artist specializing in bridal and special occasion makeup.', '8885550000', 'ella.b@email.com', '1111 Spruce St', '6'),
(15, 'Jackson', 'Dixon', 'Plumbing Engineer', 'Plumbing engineer with expertise in designing and implementing plumbing systems.', '8945550000','jackson.d@email.com', '145 bean St', '4');

-- PremiumCustomers
INSERT INTO PremiumCustomers (MembershipID, CustomerID, MembershipType, MembershipExpiryDate)
VALUES
(1, 1, 'Monthly', '2023-01-31'),
(2, 3, 'Annually', '2024-12-31'),
(3, 5, 'Monthly', '2023-02-28'),
(4, 7, 'Annually', '2024-11-30'),
(5, 9, 'Monthly', '2023-03-31'),
(6, 11, 'Annually', '2024-10-31'),
(7, 13, 'Monthly', '2023-04-30'),
(8, 15, 'Annually', '2024-09-30'),
(9, 2, 'Monthly', '2023-05-31'),
(10, 4, 'Annually', '2024-08-31'),
(11, 6, 'Monthly', '2023-06-30'),
(12, 8, 'Annually', '2024-07-31'),
(13, 10, 'Monthly', '2023-07-31'),
(14, 12, 'Annually', '2024-06-30'),
(15, 14, 'Monthly', '2023-08-31');

-- WorkEquipment
INSERT INTO WorkEquipment (EquipmentID, EquipmentName, EquipmentBrand, EquipmentQuantity, ProfessionalID)
VALUES
(1, 'Pipe Cutter', 'PlumbMaster', 2, 1),
(2, 'Plumbing Toolkit', 'PipePro', 3, 2),
(3, 'Wrench Set', 'FixItAll', 1, 3),
(4, 'Pipe Wrench', 'PlumbMaster', 5, 4),
(5, 'Plumbing Snakes', 'SnakeMaster', 2, 5),
(6, 'Wire Stripper', 'ElectroTech', 3, 6),
(7, 'Multimeter', 'TechPro', 1, 7),
(8, 'Circuit Tester', 'ElectroCheck', 2, 8),
(9, 'Electrical Tape Set', 'SparkyTools', 5, 9),
(10, 'Power Drill', 'DrillPro', 1, 10),
(11, 'Sawzall', 'CutMaster', 1, 11),
(12, 'Voltage Tester', 'ElectroCheck', 1, 12),
(13, 'Circular Saw', 'WoodPro', 2, 13),
(14, 'Electricians Toolkit', 'SparkyTools', 3, 14),
(15, 'Wire Spool Rack', 'ElectroTech', 1, 15);

-- Reviews
INSERT INTO Reviews (ReviewID, Review, Rating)
VALUES
(1, 'Great service! Fixed the issue quickly.', 4.5),
(2, 'Very professional and courteous.', 4.8),
(3, 'Excellent work, highly recommended.', 5.0),
(4, 'On-time service, but room for improvement.', 3.5),
(5, 'Efficient and knowledgeable professional.', 4.9),
(6, 'Quick response and effective solution.', 4.7),
(7, 'Satisfactory service, but a bit pricey.', 3.8),
(8, 'Friendly and skilled. Will hire again.', 4.6),
(9, 'Overall good experience with the service.', 4.2),
(10, 'Prompt and reliable service provider.', 4.9),
(11, 'Skillful and neat workmanship.', 4.8),
(12, 'Communication could be better.', 3.6),
(13, 'Highly satisfied with the service.', 5.0),
(14, 'Good service, fair pricing.', 4.0),
(15, 'Courteous and professional throughout.', 4.7);

-- ServiceCategories
INSERT INTO ServiceCategories (ServiceCategoryID, ServiceSubCategoryID, ServiceCategory, ServiceSubCategory)
VALUES
(1, 1.1, 'Plumbing', 'Pipe Repairs'),
(1, 1.2, 'Plumbing', 'Leak Detection'),
(1, 1.3, 'Plumbing', 'Drain Cleaning'),
(2, 2.1, 'Electrical Repair', 'Wiring Installation'),
(2, 2.2, 'Electrical Repair', 'Circuit Breaker Replacement'),
(2, 2.3, 'Electrical Repair', 'Lighting Installation'),
(3, 3.1, 'Home Maintenance', 'General Handyman'),
(3, 3.2, 'Home Maintenance', 'Painting'),
(3, 3.3, 'Home Maintenance', 'Carpentry'),
(4, 4.1, 'Beauty salon', 'Haircut and Styling'),
(4, 4.2, 'Beauty salon', 'Manicure and Pedicure'),
(4, 4.3, 'Beauty salon', 'Facial and Skincare'),
(4, 4.4, 'Beauty salon', 'Massage Therapy'),
(4, 4.5, 'Beauty salon', 'Makeup and Beauty'),
(4, 4.6, 'Beauty salon', 'Spa and Wellness');


-- SuppliesUsed
INSERT INTO SuppliesUsed (PartID, PartName, Brand, Description, Quantity)
VALUES
(1, 'Pipe Wrench', 'ABC Plumbing', 'Standard pipe wrench for plumbing tasks', 2),
(2, 'Electrical Tape', 'Sparky Electronics', 'High-quality electrical tape for repairs', 5),
(3, 'Gardening Gloves', 'GreenThumb', 'Durable gloves for gardening work', 3),
(4, 'Moving Boxes', 'MoveMaster', 'Sturdy boxes for packing and moving', 10),
(5, 'Faucet Repair Kit', 'PlumbFix', 'Essential kit for fixing common faucet issues', 1),
(6, 'LED Bulbs', 'BrightLite', 'Energy-efficient LED bulbs for lighting installations', 8),
(7, 'Scissors', 'CutItRight', 'Professional-grade scissors for salon services', 2),
(8, 'Cleaning Detergent', 'CleanWave', 'Deep cleaning detergent for home maintenance', 3),
(9, 'Plumbing Pipes', 'PipePro', 'High-quality plumbing pipes for installations', 4),
(10, 'Appliance Repair Kit', 'FixItAll', 'Tools and components for appliance repairs', 1),
(11, 'Facial Masks', 'BeautyGlow', 'Face masks for beauty salon services', 5),
(12, 'Gardening Shears', 'GreenSnip', 'Sharp shears for precise gardening work', 2),
(13, 'Toilet Repair Kit', 'FlushFix', 'Kit for fixing common toilet issues', 1),
(14, 'Electrical Wiring', 'WireWise', 'High-quality electrical wiring for circuits', 5),
(15, 'Skin Tan Removal Cream', 'GlowAway', 'Cream for tan removal in beauty services', 3);

-- Appointments
INSERT INTO Appointments (AppointmentID, AppointmentDate, AppointmentTime, AppointmentPriority, ReviewID, ProfessionalID, CustomerID, ServiceCategoryID, ServiceSubCategoryID)
VALUES
(1, '2023-12-15', '09:00:00', 'High', 1, 1, 1, 1, 1.1),
(2, '2023-12-16', '10:30:00', 'Medium', 2, 2, 2, 3, 3.1),
(3, '2023-12-17', '14:00:00', 'High', 3, 3, 3, 2, 2.1),
(4, '2023-12-18', '11:45:00', 'Medium', 4, 4, 4, 4, 4.1),
(5, '2023-12-19', '15:30:00', 'High', 5, 5, 5, 1, 1.2),
(6, '2023-12-20', '16:45:00', 'Medium', 6, 6, 6, 3, 3.2),
(7, '2023-12-21', '13:15:00', 'High', 7, 7, 7, 2, 2.2),
(8, '2023-12-22', '11:00:00', 'Medium', 8, 8, 8, 4, 4.2),
(9, '2023-12-23', '14:30:00', 'High', 9, 9, 9, 1, 1.3),
(10, '2023-12-24', '17:00:00', 'Medium', 10, 10, 10, 3, 3.3),
(11, '2023-12-25', '12:45:00', 'High', 11, 11, 11, 2, 2.3),
(12, '2023-12-26', '09:00:00', 'Medium', 12, 12, 12, 4, 4.3),
(13, '2023-12-27', '13:30:00', 'High', 13, 13, 13, 1, 1.3),
(14, '2023-12-28', '16:15:00', 'Medium', 14, 14, 14, 3, 3.1),
(15, '2023-12-29', '14:45:00', 'High', 15, 15, 15, 4, 4.5);

-- Invoice
INSERT INTO Invoice (InvoiceID, InvoiceAmount, InvoiceDate, PartID)
VALUES
(1, 150.00, '2023-12-15', 1),
(2, 200.00, '2023-12-16', 2),
(3, 120.00, '2023-12-17', 3),
(4, 250.00, '2023-12-18', 4),
(5, 100.00, '2023-12-19', 5),
(6, 180.00, '2023-12-20', 6),
(7, 80.00, '2023-12-21', 7),
(8, 300.00, '2023-12-22', 8),
(9, 90.00, '2023-12-23', 9),
(10, 220.00, '2023-12-24', 10),
(11, 110.00, '2023-12-25', 11),
(12, 160.00, '2023-12-26', 12),
(13, 70.00, '2023-12-27', 13),
(14, 240.00, '2023-12-28', 14),
(15, 130.00, '2023-12-29', 15);




-- Notifications
INSERT INTO Notifications (NotificationID, NotificationType, Description, NotificationTime, NotificationStatus, AppointmentID)
VALUES
(1, 'Reminder', 'Your upcoming plumbing service appointment is tomorrow.', '2023-12-15 12:00:00', 'Sent', 1),
(2, 'Update', 'The electrician is on the way for your electrical repair appointment.', '2023-12-16 09:30:00', 'Sent', 2),
(3, 'Confirmation', 'Your gardening service appointment is confirmed.', '2023-12-17 14:00:00', 'Sent', 3),
(4, 'Alert', 'Your moving service has been scheduled for next week. Please be prepared.', '2023-12-18 10:00:00', 'Sent', 4),
(5, 'Reminder', 'Dont forget your faucet repair appointment today.', '2023-12-19 15:30:00', 'Sent', 5),
(6, 'Update', 'The lighting installation service is completed. Please review your experience.', '2023-12-20 16:45:00', 'Sent', 6),
(7, 'Confirmation', 'Your salon appointment is confirmed. Get ready to look fabulous!', '2023-12-21 13:15:00', 'Sent', 7),
(8, 'Alert', 'Your home cleaning service is underway. Expect completion by evening.', '2023-12-22 11:00:00', 'Sent', 8),
(9, 'Reminder', 'Your plumbing service is scheduled for next week. Be prepared for some noise.', '2023-12-23 14:30:00', 'Sent', 9),
(10, 'Update', 'The appliance repair is complete. Please check the functionality.', '2023-12-24 17:00:00', 'Sent', 10),
(11, 'Confirmation', 'Your beauty salon appointment is confirmed. Relax and enjoy!', '2023-12-25 12:45:00', 'Sent', 11),
(12, 'Alert', 'Your gardening service is rescheduled due to weather conditions.', '2023-12-26 09:00:00', 'Sent', 12),
(13, 'Reminder', 'Toilet repair service is tomorrow. Ensure the bathroom is accessible.', '2023-12-27 13:30:00', 'Sent', 13),
(14, 'Update', 'The electrical wiring is completed successfully. Check your circuits.', '2023-12-28 16:15:00', 'Sent', 14),
(15, 'Confirmation', 'Your beauty service for skin tan removal is confirmed. Get ready to glow!', '2023-12-29 14:45:00', 'Sent', 15);



-- Payments
INSERT INTO Payments (PaymentID, Amount, PaymentMethod, PaymentStatus, PaymentDate, AppointmentID, InvoiceID)
VALUES
(1, 150.00, 'Card', 'Approved', '2023-12-15', 1, 1),
(2, 200.00, 'Cash', 'Approved', '2023-12-16', 2, 2),
(3, 120.00, 'Paypal', 'Approved', '2023-12-17', 3, 3),
(4, 250.00, 'Card', 'Pending', '2023-12-18', 4, 4),
(5, 100.00, 'Cash', 'Pending', '2023-12-19', 5, 5),
(6, 180.00, 'Paypal', 'Pending', '2023-12-20', 6, 6),
(7, 80.00, 'Card', 'Approved', '2023-12-21', 7, 7),
(8, 300.00, 'Cash', 'Approved', '2023-12-22', 8, 8),
(9, 90.00, 'Paypal', 'Pending', '2023-12-23', 9, 9),
(10, 220.00, 'Card', 'Pending', '2023-12-24', 10, 10),
(11, 110.00, 'Cash', 'Approved', '2023-12-25', 11, 11),
(12, 160.00, 'Paypal', 'Approved', '2023-12-26', 12, 12),
(13, 70.00, 'Card', 'Pending', '2023-12-27', 13, 13),
(14, 240.00, 'Cash', 'Pending', '2023-12-28', 14, 14),
(15, 130.00, 'Paypal', 'Approved', '2023-12-29', 15, 15);

-- ServicesCompleted
INSERT INTO ServicesCompleted (ServiceID, ServiceDescription, InvoiceID, AppointmentID)
VALUES
(1, 'Plumbing repair', 1, 1),
(2, 'Electrical installation', 2, 2),
(3, 'Beauty salon session', 3, 3),
(4, 'Home maintenance service', 4, 4),
(5, 'Plumbing installation', 5, 5),
(6, 'Electrical repair', 6, 6),
(7, 'Beauty salon haircut', 7, 7),
(8, 'Home cleaning service', 8, 8),
(9, 'Plumbing maintenance', 9, 9),
(10, 'Electrical maintenance', 10, 10),
(11, 'Beauty salon massage', 11, 11),
(12, 'Home painting service', 12, 12),
(13, 'Plumbing inspection', 13, 13),
(14, 'Electrical inspection', 14, 14),
(15, 'Beauty salon manicure', 15, 15);

