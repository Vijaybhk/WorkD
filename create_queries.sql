CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerFirstName VARCHAR(255),
    CustomerLastName VARCHAR(255),
    Gender VARCHAR(10),
    Mobile VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(255)
);


CREATE TABLE Professionals (
    ProfessionalID INT PRIMARY KEY,
    ProfessionalFirstName VARCHAR(255),
    ProfessionalLastName VARCHAR(255),
    Profession VARCHAR(255),
    Bio VARCHAR(255),
    Mobile VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(255),
    ExperienceInYears VARCHAR(10)
);


CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    Review VARCHAR(255),
    Rating DECIMAL(5, 2)
);

CREATE TABLE SuppliesUsed (
    PartID INT PRIMARY KEY,
    PartName VARCHAR(255),
    Brand VARCHAR(255),
    Description VARCHAR(255),
    Quantity INT
);

CREATE TABLE WorkEquipment (
    EquipmentID INT PRIMARY KEY,
    EquipmentName VARCHAR(255),
    EquipmentBrand VARCHAR(255),
    EquipmentQuantity INT,
    ProfessionalID INT,
    FOREIGN KEY (ProfessionalID) REFERENCES Professionals(ProfessionalID)
);

CREATE TABLE PremiumCustomers (
    MembershipID INT PRIMARY KEY,
    CustomerID INT,
    MembershipType VARCHAR(255) CHECK (MembershipType IN ('Monthly', 'Annually')),
    MembershipExpiryDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE ServiceCategories (
    ServiceCategoryID INT,
    ServiceSubCategoryID FLOAT,
    ServiceCategory VARCHAR(255) CHECK (ServiceCategory IN ('Beauty salon', 'Plumbing', 'Electrical Repair', 'Home Maintenance')),
    ServiceSubCategory VARCHAR(255),
    PRIMARY KEY (ServiceCategoryID, ServiceSubCategoryID)
);


CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    AppointmentDate DATE,
    AppointmentTime TIME,
    AppointmentPriority VARCHAR(20) CHECK (AppointmentPriority IN ('Low', 'Medium', 'High')),
    ReviewID INT,
    ProfessionalID INT,
    CustomerID INT,
    ServiceCategoryID INT,
    ServiceSubCategoryID FLOAT,
    FOREIGN KEY (ProfessionalID) REFERENCES Professionals(ProfessionalID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ReviewID) REFERENCES Reviews(ReviewID),
    FOREIGN KEY (ServiceCategoryID, ServiceSubCategoryID) REFERENCES ServiceCategories(ServiceCategoryID, ServiceSubCategoryID)

);


CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    InvoiceAmount DECIMAL(10, 2),
    InvoiceDate DATE,
    PartID INT,
    FOREIGN KEY (PartID) REFERENCES SuppliesUsed(PartID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(20) CHECK (PaymentMethod IN ('Card', 'Cash', 'Paypal')),
    PaymentStatus VARCHAR(20) CHECK (PaymentStatus IN ('Pending', 'Approved', 'Declined', 'Refund')),
    PaymentDate DATE,
    AppointmentID INT,
    InvoiceID INT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);

CREATE TABLE Notifications (
    NotificationID INT PRIMARY KEY,
    NotificationType VARCHAR(20),
    Description VARCHAR(255),
    NotificationTime TIMESTAMP,
    NotificationStatus VARCHAR(20) CHECK (NotificationStatus IN ('Delivered', 'Sent', 'Read')),
    AppointmentID INT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);


CREATE TABLE ServicesCompleted (
    ServiceID INT PRIMARY KEY,
    ServiceDescription VARCHAR(255),
    InvoiceID INT,
    AppointmentID INT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);









