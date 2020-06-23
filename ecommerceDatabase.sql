/*SQL Database Project by Nancy Tran*/

CREATE TABLE 'Customer' (
	'customer_ID' int(10) NOT NULL PRIMARY KEY,
	'customer_firstName' varchar(20) NOT NULL,
	'customer_lastName' varchar(20) NOT NULL,
	'primaryPhone' integer(10) NOT NULL,
	'secondaryPhone' integer(10),
	'email' varchar (50) NOT NULL,
	'streetAddressLine1' varchar(50) NOT NULL,
	'streetAddressLine2' varchar(50),
	'city' varchar(20) NOT NULL,
	'state' varchar(15) NOT NULL,
	'zipCode' integer(5) NOT NULL
);
/*Data for the table `Customer_Profile` */
INSERT INTO 'Customer_Profile' ('customer_ID', 'customer_firstName', 'customer_lastName', 'primaryPhone', 'secondaryPhone', 'email', 
'streetAddressLine1',  'streetAddressLine2', 'city',  'state', 'zipCode')
VALUES
(0000000001, 'John', 'Smith', 1234567890, null, 'john.smith@email.com', '123 Alpha Street', null, 'Somecity', 'Somestate', 12345),
(0000000002, 'Jane', 'Smith', 1234567891, 0124875634, 'jane.smith@email.com', '123 Bravo Street', null, 'Somecity', 'Somestate', 12345),
(0000000003, 'Troy', 'Bolton', 1234567892, null, 'troy.bolton@email.com', '123 Charlie Street', null, 'Somecity', 'Somestate', 12345),
(0000000004, 'Gabriella', 'Montez', 1234567893, null, 'gabriella.montez@email.com', '123 Delta Street', null, 'Somecity', 'Somestate', 12345),
(0000000005, 'Sharpay', 'Evans', 1234567894, null, 'sharpay.evans@email.com', '123 Echo Street', null, 'Somecity', 'Somestate', 12345),
(0000000006, 'Ryan', 'Evans', 1234567895, null, 'ryan.evans@email.com', '123 Foxtrot Street', 'Apt. A', 'Somecity', 'Somestate', 12345),
(0000000007, 'Lara', 'Jean', 1234567896, null, 'lara.jean@email.com', '123 Golf Street', null, 'Somecity', 'Somestate', 12345),
(0000000008, 'Peter', 'Krasinski', 1234567897, null, 'peter.krasinski@email.com', '123 Hotel Street', null, 'Somecity', 'Somestate', 12345),
(0000000009, 'Regina', 'George', 1234567898, null, 'regina.george@email.com', '123 India Street', null, 'Somecity', 'Somestate', 12345),
(0000000010, 'Abraham', 'Lincoln', 1234567899, null, 'abraham.lincoln@email.com', '123 Juliett Street', null, 'Somecity', 'Somestate', 12345),
(0000000011, 'Harriett', 'Tubman', 1234567880, null, 'harriett.tubman@email.com', '123 Kilo Street', null, 'Somecity', 'Somestate', 12345),
(0000000012, 'George', 'Washington', 1234567870, null, 'george.washington@email.com', '123 Lima Street', null, 'Somecity', 'Somestate', 12345),
(0000000013, 'Rosa', 'Parks', 1234567860, null, 'rosa.parks@email.com', '123 Mike Street', null, 'Somecity', 'Somestate', 12345),
(0000000014, 'Beyonce', 'Knowles', 1234567850, null, 'beyonce.knowles@email.com', '123 November Street', null, 'Somecity', 'Somestate', 12345),
(0000000015, 'Jay', 'Carter', 1234567840, null, 'jay.carter@email.com', '123 Oscar Street', null, 'Somecity', 'Somestate', 12345),
(0000000016, 'Ariana', 'Grande', 1234567830,0124875345, 'ariana.grande@email.com', '123 Papa Street', null, 'Somecity', 'Somestate', 12345),
(0000000017, 'Justin', 'Beiber', 1234567820, null, 'justin.beiber@email.com', '123 Quebec Street', 'Suite F.', 'Somecity', 'Somestate', 12345),
(0000000018, 'Kiana', 'Lede', 1234567810, null, 'kiana.lede@email.com', '123 Romeo Street', null, 'Somecity', 'Somestate', 12345),
(0000000019, 'Summer', 'Walker', 1234567889, null, 'summer.walker@email.com', '123 Sierra Street', null, 'Somecity', 'Somestate', 12345),
(0000000020, 'Jermaine', 'Cole', 1234567888, null, 'jermaine.cole@email.com', '123 Tango Street', null, 'Somecity', 'Somestate', 12345),
(0000000021, 'Taylor', 'Swift', 1234567887, null, 'taylor.swift@email.com', '123 Uniform Street', null, 'Somecity', 'Somestate', 12345),
(0000000022, 'Shawn', 'Mendes', 1234567886, null, 'shawn.mendes@email.com', '123 Victor Street', null, 'Somecity', 'Somestate', 12345),
(0000000023, 'Camilla', 'Cabello', 1234567885, null, 'camilla.cabello@email.com', '123 Whiskey Street', null, 'Somecity', 'Somestate', 12345),
(0000000024, 'Steve', 'Harvey', 1234567884, null, 'steve.harvey@email.com', '123 Xray Street', null, 'Somecity', 'Somestate', 12345),
(0000000025, 'Mariah', 'Carey', 1234567883, null, 'mariah.carey@email.com', '123 Yankee Street', null, 'Somecity', 'Somestate', 12345)
;


/*----------------------------------------------------------------*/
CREATE TABLE 'Order_Details' (
	'order_ID' int(4) NOT NULL PRIMARY KEY,
    FOREIGN KEY 'customer_ID' int(10) REFERENCES 'Customer_Profile',
  	'productCode' varchar(2) NOT NULL,
  	'quantityOrdered' int(100) NOT NULL,
  	'priceEach' decimal(10) NOT NULL
);
/*Data for the table `Order_Details` */
INSERT INTO 'Order_Details' ('order_ID', 'customer_ID', 'productCode', 'quantityOrdered', 'priceEach')
VALUES
(0001, '0000000023', '01', '1', '1.99'),
(0002, '0000000018', '02', '2', '2.99'),
(0003, '0000000019', '03', '4', '3.99'),
(0004, '0000000001', '04', '6', '4.99'),
(0005, '0000000015', '05', '11', '5.99'),
(0006, '0000000008', '06', '9', '6.99'),
(0007, '0000000025', '04', '67', '7.99'),
(0008, '0000000022', '03', '34', '8.99'),
(0009, '0000000011', '10', '4', '9.99'),
(0010, '0000000003', '05', '2', '10.00')
;

ALTER TABLE 'Order_Details'
ADD 'DateOrdered' varchar(10) NOT NULL;

SELECT 'customer.customer_ID', 'Order_Details' FROM
'Customer' JOIN 'Order_Details' ON
'customer_id' = 'order_ID';


/*----------------------------------------------------------------*/
CREATE TABLE 'Payment_Confirmation' (
    'PaymentConfirmation_ID' int(3) NOT NULL PRIMARY KEY, 
    FOREIGN KEY 'order_ID' integer(4) REFERENCES 'Order_Details',
	FOREIGN KEY 'customer_ID' int(10) REFERENCES 'Customer_Profile',
	'amountTotal' smallmoney(100) NOT NULL,
	'recipientFirstName' varchar(20) NOT NULL,
	'recipientLastName' varchar(20) NOT NULL,
	'mailingStreetAddressLine1' varchar(50) NOT NULL,
	'mailingStreetAddressLine2' varchar(50),
	'mailingCity' varchar(20) NOT NULL,
	'mailingState' varchar(15) NOT NULL,
	'mailingZipCode' integer(5) NOT NULL,
	'email' varchar(50) NOT NULL
);
/*Data for the table 'Payment_Information' */
INSERT INTO 'Payment_Information' ('PaymentConfirmation_ID', 'order_ID', 'customer_ID', 'amountTotal', 
'recipientFirstName', 'recipientLastName', 'mailingStreetAddressLine1', 'mailingStreetAddressLine2', 'mailingCity', 
'mailingState', 'mailingZipCode', 'email')
VALUES
(111, 0001, '0000000023', '14.78', 'Camilla', 'Cabello', '123 Whiskey Street', null, 'Somecity', 'Somestate', 12345),
(222, 0002, '0000000018', '100.23', 'Kiana', 'Lede', '123 Romeo Street', null, 'Somecity', 'Somestate', 12345),
(333, 0003, '0000000019', '3.08', 'Summer', 'Walker', '123 Sierra Street', null, 'Somecity', 'Somestate', 12345),
(444, 0004, '0000000001', '222.30','John', 'Smith', '123 Alpha Street', null, 'Somecity', 'Somestate', 12345),
(555, 0005, '0000000015', '65.77', 'Jay', 'Carter', '123 Oscar Street', null, 'Somecity', 'Somestate', 12345),
(660, 0006, '0000000008', '233.00', 'Peter', 'Krasinski', '123 Hotel Street', null, 'Somecity', 'Somestate', 12345),
(777, 0007, '0000000025', '232.34', 'Mariah', 'Carey', '123 Yankee Street', null, 'Somecity', 'Somestate', 12345),
(888, 0008, '0000000022', '19.97', 'Shawn', 'Mendes', '123 Victor Street', null, 'Somecity', 'Somestate', 12345),
(999, 0009, '0000000011', '256.96', 'Harriett', 'Tubman', '123 Kilo Street', null, 'Somecity', 'Somestate', 12345),
(199, 0010, '0000000003', '14.99', 'Troy', 'Bolton', '123 Charlie Street', null, 'Somecity', 'Somestate', 12345)
;

SELECT 'customer.customer_ID', 'PaymentConfirmation_ID' FROM
'Customer' JOIN 'Payment_Confirmation' ON
'customer_id' = 'PaymentConfirmation_ID';