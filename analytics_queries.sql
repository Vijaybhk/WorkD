USE WorkD;

-- Revenue Analysis by Service Category

SELECT SC.ServiceCategory, SUM(I.InvoiceAmount) AS TotalRevenue
FROM ServiceCategories SC
JOIN Appointments A ON SC.ServiceCategoryID = A.ServiceCategoryID
JOIN ServicesCompleted S ON A.AppointmentID= S.AppointmentID
JOIN Invoice I ON S.InvoiceID = I.InvoiceID
GROUP BY SC.ServiceCategory;

-- Average Rating for Each Professional

SELECT P.ProfessionalID, P.ProfessionalFirstName, P.ProfessionalLastName, AVG(R.Rating) AS AverageRating
FROM Professionals P
JOIN Appointments A ON P.ProfessionalID = A.ProfessionalID
JOIN Reviews R ON A.ReviewID = R.ReviewID
GROUP BY P.ProfessionalID, P.ProfessionalFirstName, P.ProfessionalLastName;

-- Appointment Count by Service Sub-Category

SELECT SC.ServiceSubCategory, COUNT(A.AppointmentID) AS AppointmentCount
FROM ServiceCategories SC
JOIN Appointments A ON SC.ServiceCategoryID = A.ServiceCategoryID AND SC.ServiceSubCategoryID = A.ServiceSubCategoryID
GROUP BY SC.ServiceSubCategory;

-- Payment Method Distribution

SELECT P.PaymentMethod, COUNT(P.PaymentID) AS PaymentCount
FROM Payments P
GROUP BY P.PaymentMethod;

-- Membership Type Distribution

SELECT PC.MembershipType, COUNT(PC.MembershipID) AS MembershipCount
FROM PremiumCustomers PC
GROUP BY PC.MembershipType;

-- Top 5 Professionals by Total Revenue

SELECT P.ProfessionalID, P.ProfessionalFirstName, P.ProfessionalLastName, SUM(I.InvoiceAmount) AS TotalRevenue
FROM Professionals P
JOIN WorkEquipment WE ON P.ProfessionalID = WE.ProfessionalID
JOIN Invoice I ON WE.EquipmentID = I.PartID
GROUP BY P.ProfessionalID, P.ProfessionalFirstName, P.ProfessionalLastName
ORDER BY TotalRevenue DESC
LIMIT 5;

-- Average Invoice Amount by Gender

SELECT C.Gender, AVG(I.InvoiceAmount) AS AverageInvoiceAmount
FROM Customers C
JOIN Appointments A ON C.CustomerID = A.CustomerID
JOIN ServicesCompleted S ON A.AppointmentID= S.AppointmentID
JOIN Invoice I ON S.InvoiceID = I.InvoiceID
GROUP BY C.Gender;

-- Total Quantity of Supplies Used by Equipment Brand

SELECT WE.EquipmentBrand, SUM(SU.Quantity) AS TotalQuantityUsed
FROM WorkEquipment WE
JOIN SuppliesUsed SU ON WE.EquipmentID = SU.PartID
GROUP BY WE.EquipmentBrand;

-- Appointment Status Distribution

SELECT A.AppointmentPriority, COUNT(A.AppointmentID) AS AppointmentCount
FROM Appointments A
GROUP BY A.AppointmentPriority;

-- Professionals with Most Appointments

SELECT P.ProfessionalID, P.ProfessionalFirstName, P.ProfessionalLastName, COUNT(A.AppointmentID) AS AppointmentCount
FROM Professionals P
JOIN Appointments A ON P.ProfessionalID = A.ProfessionalID
GROUP BY P.ProfessionalID, P.ProfessionalFirstName, P.ProfessionalLastName
ORDER BY AppointmentCount DESC
LIMIT 5;

-- Average Rating by Service Category

SELECT SC.ServiceCategory, AVG(R.Rating) AS AverageRating
FROM ServiceCategories SC
JOIN Appointments A ON SC.ServiceCategoryID = A.ServiceCategoryID
JOIN Reviews R ON A.ReviewID = R.ReviewID
GROUP BY SC.ServiceCategory;

-- Top 3 Service Sub-Categories by Appointment Count

SELECT SC.ServiceSubCategory, COUNT(A.AppointmentID) AS AppointmentCount
FROM ServiceCategories SC
JOIN Appointments A ON SC.ServiceCategoryID = A.ServiceCategoryID AND SC.ServiceSubCategoryID = A.ServiceSubCategoryID
GROUP BY SC.ServiceSubCategory
ORDER BY AppointmentCount DESC
LIMIT 3;

-- Pending Payments by Payment Method

SELECT P.PaymentMethod, COUNT(P.PaymentID) AS PendingPaymentCount
FROM Payments P
WHERE P.PaymentStatus = 'Pending'
GROUP BY P.PaymentMethod;
