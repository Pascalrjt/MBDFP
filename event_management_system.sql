--Script: Event Management System
--Pascal Roger Junior Tauran    - 5025211072
--Faraihan Rafi Adityawarman    - 5025211074
--Ariel Pratama Menlolo         - 5025211194

Create table Handlers ( 
        Handler_ID          VARCHAR(20), 
        Handler_name        VARCHAR(20), 
        Handler_jobdesk     VARCHAR(20), 
        Handler_phoneNum    VARCHAR(20), 
        Events_Event_ID     VARCHAR(20), 
        constraint Handler_ID_PK primary key (Handler_ID) 
    );

 Create table Attendee ( 
        Attendee_ID         VARCHAR(20), 
        Attendee_name       VARCHAR(20), 
        Attendee_email      VARCHAR(40), 
        Attendee_phoneNum   VARCHAR(20), 
        constraint Attendee_ID_PK primary key (Attendee_ID) 
    );

Create table Sponsors ( 
        Sponsor_ID              VARCHAR(20), 
        Sponsor_name            VARCHAR(30), 
        Sponsor_money           DECIMAL(16,2), 
        Sponsor_contact_person  VARCHAR(20), 
        Sponsor_phoneNum        VARCHAR(20), 
        Events_Event_ID         VARCHAR(20), 
        constraint Spnsor_ID_PK primary key (Sponsor_ID) 
    );

Create table Events( 
        Event_ID                VARCHAR(20), 
        Event_name              VARCHAR(40), 
        Event_location          VARCHAR(40), 
        Event_start_date        DATE, 
        Event_end_date          DATE, 
        Handlers_Handler_ID     VARCHAR(20), 
        Special_Guests_Guest_ID VARCHAR(20), 
        Stalls_Stall_ID         VARCHAR(10), 
        Sponsors_Sponsor_ID     VARCHAR(20), 
        constraint Event_ID_PK primary key (Event_ID) 
         
    );

Create table Stalls ( 
        Stall_ID            VARCHAR(10), 
        Stall_name          VARCHAR(20), 
        Stall_handler       VARCHAR(20), 
        Stall_fee           DECIMAL(16,2), 
        Events_Event_ID     VARCHAR(20), 
        constraint Stall_ID_PK primary key (Stall_ID) 
    );

Create table Special_Guest ( 
        Guest_ID            VARCHAR(20), 
        Guest_name          VARCHAR(20), 
        Guest_fee           DECIMAL(16,2), 
        Events_Event_ID     VARCHAR(20), 
        constraint Guest_ID_PK primary key (Guest_ID) 
    );

Create table Tickets ( 
        Ticket_ID           VARCHAR(20), 
        Ticket_price        DECIMAL(16,2), 
        Ticket_stock        INTEGER, 
        constraint Tickets_ID_PK primary key (Ticket_ID) 
    );

Create table Ticket_transaction ( 
        Transaction_ID              VARCHAR(20), 
        Attendee_Attendee_ID        VARCHAR(20), 
        Events_Event_ID             VARCHAR(20), 
        Tickets_Ticket_ID           VARCHAR(20), 
        Handlers_Handler_ID         VARCHAR(20), 
        CONSTRAINT Attendee_Attendee_ID_FK FOREIGN KEY (Attendee_Attendee_ID) REFERENCES Attendee (Attendee_ID), 
        CONSTRAINT Events_Event_ID_FK FOREIGN KEY (Events_Event_ID) REFERENCES Events (Event_ID), 
        CONSTRAINT Tickets_Ticket_ID_FK FOREIGN KEY (Tickets_Ticket_ID) REFERENCES Tickets (Ticket_ID), 
        CONSTRAINT Handlers_Handler_ID_FK FOREIGN KEY (Handlers_Handler_ID) REFERENCES Handlers (Handler_ID) 
    );

Alter table Handlers 
    add constraint Events_Event_ID_FK_HD FOREIGN KEY (Events_Event_ID) REFERENCES Events (Event_ID);

Alter table Sponsors 
    add constraint Events_Event_ID_FK_SP FOREIGN KEY (Events_Event_ID) REFERENCES Events (Event_ID);

Alter table Events 
    add constraint Handlers_Handler_ID_FK_EV FOREIGN KEY (Handlers_Handler_ID) REFERENCES Handlers (Handler_ID);

Alter table Events 
    add constraint Special_Guests_Guest_ID_FK FOREIGN KEY (Special_Guests_Guest_ID) REFERENCES Special_Guest (Guest_ID);

Alter table Events 
    add constraint Stalls_Stall_ID_FK FOREIGN KEY (Stalls_Stall_ID) REFERENCES Stalls (Stall_ID);

Alter table Events 
    add constraint Sponsors_Sponsor_ID_FK FOREIGN KEY (Sponsors_Sponsor_ID) REFERENCES Sponsors (Sponsor_ID);

Alter table Stalls 
    add constraint Events_Event_ID_FK_ST FOREIGN KEY (Events_Event_ID) REFERENCES Events (Event_ID);

Alter table Special_Guest 
    add constraint Events_Event_ID_FK_GST FOREIGN KEY (Events_Event_ID) REFERENCES Events (Event_ID);

ALTER TABLE Events ADD COLUMN Total_revenue DECIMAL(16,2) DEFAULT 0;

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('8457412763', 'Emily Smith', 'EmilySmith@gmail.com', '0816-7315-6629');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('8672054198', 'James Johnson', 'JamesJohnson@gmail.com', '0851-7129-8115');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('195824367', 'Sophia Williams', 'SophiaWilliams@gmail.com', '0855-5298-4822');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('4958731260', 'Michael Brown', 'MichaelBrown@gmail.com', '0819-5566-5996');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('6103269547', 'Olivia Jones', 'OliviaJones@gmail.com', '0819-7388-3199');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('4905167392', 'William Davis', 'WilliamDavis@gmail.com', '0895-8685-2466');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('6847531092', 'Madison Thompson', 'MadisonThompson@gmail.com', '0856-9181-6292');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('2395641780', 'Benjamin Miller', 'BenjaminMiller@gmail.com', '0899-1445-8115');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('6783912054', 'Elizabeth Anderson', 'ElizabethAnderson@gmail.com', '0851-3895-9222');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('2978346501', 'Matthew Taylor', 'MatthewTaylor@gmail.com', '0853-2895-2228');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('7593812460', 'Rini Wijayanti', 'DewiSutanto@gmail.com', '0842-369-708');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('2345681790', 'Budi Hartono', 'AgusSetiawan@gmail.com', '0871-352-647');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('9876543210', 'Siti Nurhaliza', 'LusiNovitasari@gmail.com', '0853-217-486');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('1234567890', 'Andi Prasetyo', 'KikiPratiwi@gmail.com', '0824-193-657');

Insert into Attendee (Attendee_ID, Attendee_name, Attendee_email, Attendee_phoneNum) values ('6543219870', 'Rizki Aditya', 'YadiSusanto@gmail.com', '0879-452-319');

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000001', 'Mixue', 'Emma Jones', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000002', 'Haus', 'Noah Williams', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000003', 'Mr. Moou', 'Olivia Brown', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000004', 'Corn Dog Genoise', 'Liam Davis', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000005', 'D Kriuk', 'Ava Miller', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000006', 'Es Teh', 'Ethan Anderson', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000007', 'The Epicurean', 'Sophia Taylor', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000008', 'A Slice of Heaven', 'Benjamin Wilson', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000009', 'Geprek Joder', 'Ka Dhani', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000010', 'The Culinary Artist', 'Michael Johnson', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10000034', 'The Savory Savor', 'Sarah Johnson', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10001256', 'The Hearty Harvest', 'Michael Smith', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10009876', 'Delicious Delight', 'Jessica Williams', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10004567', 'The Filling Station', 'John Thompson', 100);

Insert into Stalls (Stall_ID, Stall_name, Stall_handler, Stall_fee) values ('10009283', 'The Yummy Yum-Yum', 'Rachel Davis', 100);

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('24597', 'PT. Pertamina', 10000, 'Emily Smith', '0812-123-4567');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('31486', 'MNC Group', 20000, 'William Johnson', '0821-345-6789');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('60987', 'Mixue LLC', 30000, 'Madison White', '0857-678-9012');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('52468', 'Shoppee', 20000, 'Ethan Davis', '0813-901-2345');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('47389', 'PT. Indofood', 10000, 'Charlotte Brown', '0819-234-5678');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('39607', 'Next Gen Technology Solutions', 30000, 'Michael Anderson', '0895-678-9012');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('20349', 'Forward Thinking Corporation', 50000, 'Abigail Jones', '0851-234-5678');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('29158', 'Global Innovations Inc.', 30000, 'Benjamin Wilson', '0831-567-8901');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('78634', 'Forward Progress Technologies', 20000, 'Elizabeth Taylor', '0899-876-5432');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('81597', 'Innovative Minds LLC', 10000, 'Alexander Miller', '0898-765-4321');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('75938', 'Alpha Corp', 22000, 'Olivia Anderson', '0865-243-710');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('23456', 'Omega Enterprises', 16000, 'Ethan Johnson', '0841-927-653');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('98765', 'Delta Solutions', 23000, 'Sophie Williams', '0872-513-946');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('12345', 'Gamma Technologies', 30000, 'Liam Thompson', '0893-421-657');

Insert into Sponsors (Sponsor_ID, Sponsor_name, Sponsor_money, Sponsor_contact_person, Sponsor_phoneNum) values ('65432', 'Sigma Resources', 58000, 'Emily Davis', '0852-679-310');

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('6239', 'Agnez Mo', 15000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('8741', 'Kufaku', 10000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('1596', 'Raisa Andriana', 20000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('3276', 'Afgan', 17000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('5910', 'Tulus', 10000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('7452', 'Rossa', 19000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('2963', 'Isyana Sarasvati', 20000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('4680', 'Kahitna', 10000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('1278', 'Lil Salmonella', 10000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('9365', 'The Overtunes', 22000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('7593', 'Deddy Corbuzier', 15000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('2345', 'Rayi Putra', 23000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('9876', 'Maudy Ayunda', 12000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('1234', 'Andien', 21000);

Insert into Special_Guest (Guest_ID, Guest_name, Guest_fee) values ('6543', 'Marcell Siahaan', 17000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('459382', 15, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('781394', 22, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('724659', 26, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('362841', 23, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('821473', 25, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('569280', 15, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('938452', 15, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('471956', 15, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('650438', 17, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('293871', 10, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('759381', 23, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('234568', 31, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('987654', 23, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('123456', 28, 5000);

Insert into Tickets (Ticket_ID, Ticket_price, Ticket_stock) values ('654321', 25, 5000);

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('72597330248', 'SCHEMATICS REEVA', 'The Robotics Building', DATE '2022-01-05', DATE '2022-01-12', '65432', '6239');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('48330525142', 'SCHEMATICS NLC', 'The Informatics Building', DATE '2022-02-16', DATE '2022-02-23', '12345', '8741');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('12312686899', 'SCHEMATICS NPC', 'The Cafeteria', DATE '2022-03-28', DATE '2022-04-04', '98765', '1596');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('64569316648', 'Ini Lho ITS! 2023', 'Graha Sepuluh Nopember', DATE '2022-04-09', DATE '2022-04-16', '23456', '3276');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('70910949630', 'Mabacup 2022', 'The Sport Building', DATE '2022-05-21', DATE '2022-05-28', '75938', '5910');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('74230130051', 'ARA 4.0', 'The Business Building', DATE '2022-06-02', DATE '2022-06-09', '81597', '7452');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('90369801891', 'Petrolida 2023', 'The Machine Engineering Building', DATE '2022-07-14', DATE '2022-07-21', '78634', '2963');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('45961750305', 'Wisuda 126', 'Graha Sepuluh Nopember', DATE '2022-08-25', DATE '2022-09-01', '29158', '4680');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('46958987968', 'Gerigi ITS', 'Institut Teknologi Sepuluh Nopember', DATE '2022-09-06', DATE'2022-09-13', '20349', '1278');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('95293450399', 'Dies Natalis ITS', 'Graha Sepuluh Nopember', DATE '2022-10-18', DATE '2022-10-25', '39607', '9365');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('12444437253', 'LKMM PRA-TD', 'Informatics Field', DATE '2022-02-14', DATE '2022-02-21', '47389', '7593');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('61539471910', 'Student elections', 'Student center', DATE '2022-04-22', DATE '2022-04-29', '52468', '2345');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('24692933672', 'Lecture series', 'Classroom building', DATE '2022-06-09', DATE '2022-06-16', '60987', '9876');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('30708832719', 'Career fair', 'Student center', DATE '2022-08-03', DATE '2022-08-10', '31486', '1234');

Insert into Events (Event_ID, Event_name, Event_location, Event_start_date, Event_end_date, Sponsors_Sponsor_ID, Special_Guests_Guest_ID) values ('67340405553', 'Campus festivals', 'Student center', DATE '2022-11-26', DATE '2022-12-03', '24597', '6543');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000006', 'Ava Smith', 'Ticket_seller', '0857-8264-1495', '72597330248');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000043', 'Michael Brown', 'Vendor_manager', '0813-6288-8998', '48330525142');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000091', 'Olivia Johnson', 'Chief', '0851-9314-3926', '12312686899');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000017', 'Ethan Williams', 'Operational', '0853-6786-6921', '64569316648');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000078', 'Charlotte Jones', 'Creative', '0813-4444-2528', '70910949630');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000055', 'Benjamin Davis', 'Ticket_seller', '0822-7235-7766', '74230130051');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000033', 'Abigail Miller', 'Creative', '0896-5575-1939', '90369801891');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000080', 'James Taylor', 'Ticket_seller', '0815-6422-1928', '45961750305');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000094', 'Emily Davis', 'Vendor_manager', '0856-9812-3865', '46958987968');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('500000001', 'William Rodriguez', 'Operational', '0811-4499-9885', '95293450399');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('501234567', 'Dewi Sutanto', 'Operational', '0812-345-678', '12444437253');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('509876543', 'Agus Setiawan', 'Vendor_manager', '0821-234-567', '61539471910');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('503456789', 'Lusi Novitasari', 'Ticket_seller', '0857-123-456', '24692933672');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('509283471', 'Kiki Pratiwi', 'Creative', '0813-321-789', '30708832719');

Insert into Handlers (Handler_ID, Handler_name, Handler_jobdesk, Handler_phoneNum, Events_Event_ID) values ('504567819', 'Yadi Susanto', 'Creative', '0895-432-761', '67340405553');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('1', '8457412763', '72597330248', '459382', '500000006');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('2', '8672054198', '72597330248', '781394', '500000006');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('3', '195824367', '48330525142', '724659', '500000006');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('4', '4958731260', '48330525142', '362841', '500000055');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('5', '6103269547', '12312686899', '821473', '500000055');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('6', '4905167392', '12312686899', '569280', '500000055');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('7', '6847531092', '64569316648', '938452', '500000080');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('8', '2395641780', '64569316648', '471956', '500000080');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('9', '6783912054', '70910949630', '650438', '500000080');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('10', '2978346501', '70910949630', '293871', '500000080');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('11', '7593812460', '74230130051', '759381', '501234567');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('12', '2345681790', '74230130051', '234568', '509876543');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('13', '9876543210', '90369801891', '987654', '503456789');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('14', '1234567890', '90369801891', '123456', '509283471');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('15', '6543219870', '45961750305', '654321', '504567819');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('16', '8457412763', '45961750305', '459382', '500000006');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('17', '8672054198', '46958987968', '781394', '500000043');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('18', '195824367', '46958987968', '724659', '500000091');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('19', '4958731260', '95293450399', '362841', '500000017');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('20', '6103269547', '95293450399', '821473', '500000078');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('21', '4905167392', '12444437253', '569280', '500000055');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('22', '6847531092', '12444437253', '938452', '500000033');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('23', '2395641780', '61539471910', '471956', '500000080');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('24', '6783912054', '61539471910', '650438', '500000094');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('25', '2978346501', '24692933672', '293871', '500000001');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('26', '7593812460', '24692933672', '759381', '501234567');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('27', '2345681790', '30708832719', '234568', '509876543');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('28', '9876543210', '30708832719', '987654', '503456789');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('29', '1234567890', '30708832719', '123456', '509283471');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('30', '6543219870', '30708832719', '654321', '504567819');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('31', '8457412763', '30708832719', '654321', '504567819');

Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('32', '195824367', '30708832719', '654321', '504567819');

SELECT Event_ID, Event_name 
FROM Events 
WHERE Event_start_date > DATE '2022-04-01' 
ORDER BY Event_start_date;

SELECT Stall_name, Stall_handler 
FROM stalls 
ORDER BY Stall_fee;

SELECT EVENT_LOCATION, 
    COUNT(*) 
FROM EVENTS 
GROUP BY EVENT_LOCATION;

SELECT EVENTS.EVENT_NAME, 
    ATTENDEE.ATTENDEE_NAME, 
    COUNT(*) 
FROM TICKET_TRANSACTION 
    INNER JOIN EVENTS 
    ON TICKET_TRANSACTION.EVENTS_EVENT_ID = EVENTS.EVENT_ID 
    INNER JOIN ATTENDEE 
    ON TICKET_TRANSACTION.ATTENDEE_ATTENDEE_ID = ATTENDEE.ATTENDEE_ID 
GROUP BY EVENTS.EVENT_NAME, 
    ATTENDEE.ATTENDEE_NAME;

SELECT TICKETS.TICKET_ID, 
    TICKETS.TICKET_PRICE, 
    TICKET_TRANSACTION.TRANSACTION_ID 
FROM TICKETS 
    INNER JOIN TICKET_TRANSACTION 
    ON TICKETS.TICKET_ID = TICKET_TRANSACTION.TICKETS_TICKET_ID 
ORDER BY TICKETS.TICKET_PRICE;

SELECT Events.Event_name, Ticket_transaction.Transaction_ID, Ticket_transaction.Tickets_Ticket_ID 
FROM Events INNER JOIN Ticket_transaction 
ON Events.Event_ID = Ticket_transaction.Events_Event_ID 
ORDER BY Events.Event_name DESC;

SELECT ATTENDEE_NAME, 
    ATTENDEE_EMAIL 
FROM ATTENDEE 
WHERE ATTENDEE_NAME IN ( 
        SELECT ATTENDEE_NAME 
        FROM TICKET_TRANSACTION 
        WHERE EVENTS_EVENT_ID = '61539471910' 
    );


SELECT Handlers.Handler_name, Attendee.Attendee_name, Ticket_transaction.Transaction_ID, Ticket_transaction.Tickets_Ticket_ID 
FROM Handlers INNER JOIN Ticket_transaction 
ON Handlers.Handler_ID = Ticket_transaction.Handlers_Handler_ID 
INNER JOIN Attendee 
ON Ticket_transaction.Attendee_Attendee_ID = Attendee.Attendee_ID 
ORDER BY Attendee.Attendee_name;

SELECT Handlers.Handler_name, Ticket_transaction.Transaction_ID, Ticket_transaction.Tickets_Ticket_ID 
FROM Handlers INNER JOIN Ticket_transaction 
ON Handlers.Handler_ID = Ticket_transaction.Handlers_Handler_ID 
WHERE Ticket_transaction.Transaction_ID IN ( 
    SELECT Transaction_ID FROM Ticket_transaction 
);

-- query to see total revenue from an event from the ticket transactions
SELECT SUM(t.Ticket_price) AS Total_revenue
FROM Tickets t
JOIN Ticket_transaction tt ON t.Ticket_ID = tt.Tickets_Ticket_ID
WHERE tt.Events_Event_ID = '72597330248';


SELECT * 
FROM Handlers;

SELECT * 
FROM Attendee;

SELECT * 
FROM Sponsors;

SELECT * 
FROM Events;

SELECT * 
FROM Stalls;

SELECT * 
FROM Special_Guest;

SELECT * 
FROM Tickets;

SELECT * 
FROM Ticket_transaction;

-- creating an index on the "Event_location" column in the "Events" table
CREATE INDEX idx_Events_Event_location ON Events (Event_location);

-- query utilising the index to retrieve events taking place at a specific location
SELECT Event_name, Event_start_date, Event_end_date
FROM Events
WHERE Event_location = 'Your Location';

-- creating an index on the "Event_start_date" column in the "Events" table
CREATE INDEX idx_event_start_date ON Events (Event_start_date);

-- query utilizing index on "Event_start_date" column in the "Events" table, and ordering the events that take place before current date
SELECT Event_name, Event_start_date, Event_location
FROM Events
WHERE Event_start_date < CURRENT_DATE
ORDER BY Event_start_date;

-- creating an index on the "Ticket_price" column in the "Tickets" table
CREATE INDEX idx_tickets_price ON Tickets (Ticket_price);

-- query utilizing index on "Ticket_price" to retrieve tickets within a specific price range
SELECT Ticket_ID, Ticket_price
FROM Tickets
WHERE Ticket_price BETWEEN 15.00 AND 25.00;

-- procedure 1: update ticket stock procedure
CREATE OR REPLACE PROCEDURE update_ticket_stock(
  p_ticket_id VARCHAR(20),
  p_quantity INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE Tickets
  SET Ticket_stock = Ticket_stock - p_quantity
  WHERE Ticket_ID = p_ticket_id;
END;
$$;
-- calling procedure 1
CALL update_ticket_stock('your_ticket_id', your_quantity);

-- viewing the updated ticket stock
SELECT Ticket_stock
FROM Tickets
WHERE Ticket_ID = 'your_ticket_id';

-- procedure 2: Updating sponsor contact person and their phone number
CREATE OR REPLACE PROCEDURE update_sponsor_contact_person(
    sponsor_id VARCHAR(20),
    new_contact_person VARCHAR(20),
    new_phone_num VARCHAR(20)
)
LANGUAGE SQL
AS $$
UPDATE Sponsors
SET Sponsor_contact_person = new_contact_person,
    Sponsor_phoneNum = new_phone_num
WHERE Sponsor_ID = sponsor_id;
$$;

-- calling procedure 2
CALL update_sponsor_contact_person('24597', 'John Doe', '987654321');

-- viewing the updated sponsor contact person
SELECT Sponsor_contact_person, Sponsor_phoneNum
FROM Sponsors
WHERE Sponsor_ID = '24597';

-- procedure 3: Updating the event location for a specific event
CREATE OR REPLACE PROCEDURE update_event_location(
    event_id VARCHAR(20),
    new_location VARCHAR(40)
)
LANGUAGE SQL
AS $$
UPDATE Events
SET Event_location = new_location
WHERE Event_ID = event_id;
$$;

-- calling procedure 3
CALL update_event_location('72597330248', 'Tower ITS');

-- viewing updated location of event
SELECT Event_location
FROM Events
WHERE Event_ID = '72597330248';

-- function 1: retrieve the total number of attendees for an event
CREATE FUNCTION get_total_attendees(event_id VARCHAR(20)) RETURNS INTEGER AS $$
DECLARE
    total_attendees INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_attendees
    FROM Ticket_transaction
    WHERE Events_Event_ID = event_id;
    
    RETURN COALESCE(total_attendees, 0);
END;
$$ LANGUAGE plpgsql;


-- calling function 1
SELECT get_total_attendees('61539471910');

-- function 2: calculating the average ticket price for an event
CREATE FUNCTION calculate_average_ticket_price(event_id VARCHAR(20)) RETURNS DECIMAL(16,2) AS $$
DECLARE
    average_price DECIMAL(16,2);
BEGIN
    SELECT AVG(T.Ticket_price) INTO average_price
    FROM Tickets T
    INNER JOIN Ticket_transaction TT ON T.Ticket_ID = TT.Tickets_Ticket_ID
    WHERE TT.Events_Event_ID = event_id;
    
    RETURN COALESCE(average_price, 0.0);
END;
$$ LANGUAGE plpgsql;

-- calling function 2
SELECT calculate_average_ticket_price('72597330248');

-- function 3: displaying the duration of an event (in days)
CREATE OR REPLACE FUNCTION get_event_duration(event_id VARCHAR(20))
RETURNS INTEGER
LANGUAGE SQL
AS $$
SELECT (Event_end_date - Event_start_date) AS event_duration
FROM Events
WHERE Event_ID = event_id;s
$$;

-- calling function 3
SELECT get_event_duration('your_event_id') AS event_duration;

-- function 4: displaying details of a special guest along with the events that they are a special guest of
CREATE OR REPLACE FUNCTION get_special_guest_details(input_guest_id VARCHAR(20)) RETURNS TABLE
(Guest_ID VARCHAR(20), Guest_name VARCHAR(20), Guest_fee DECIMAL(16,2), Event_ID VARCHAR(20), Event_name VARCHAR(40)) AS $$
BEGIN
    RETURN QUERY
    SELECT SG.Guest_ID, SG.Guest_name, SG.Guest_fee, E.Event_ID, E.Event_name
    FROM Events E
    JOIN Special_Guest SG ON E.Special_Guests_Guest_ID = SG.Guest_ID
    WHERE SG.Guest_ID = input_guest_id;
END;
$$ LANGUAGE plpgsql;

-- calling function 4
SELECT * FROM get_special_guest_details('8741'); 

-- function 5: displaying the sponsors associated with a specific event
CREATE OR REPLACE FUNCTION get_event_sponsors(p_event_id VARCHAR(20)) RETURNS TABLE
(Sponsor_ID VARCHAR(20), Sponsor_name VARCHAR(30), Sponsor_money DECIMAL(16,2), Sponsor_contact_person VARCHAR(20), Sponsor_phoneNum VARCHAR(20), Event_name VARCHAR(40)) AS $$
BEGIN
    RETURN QUERY
    SELECT S.Sponsor_ID, S.Sponsor_name, S.Sponsor_money, S.Sponsor_contact_person, S.Sponsor_phoneNum, E.Event_name
    FROM Sponsors S
    INNER JOIN Events E ON S.Sponsor_ID = E.Sponsors_Sponsor_ID
    WHERE E.Event_ID = p_event_id;
END;
$$ LANGUAGE plpgsql;

-- calling function 5
SELECT * FROM get_event_sponsors('70910949630');

-- function 6: Showing available tickets for a specific event (where ticket_stock > 0)
CREATE OR REPLACE FUNCTION get_available_tickets(event_id VARCHAR(20)) RETURNS TABLE
(Ticket_ID VARCHAR(20), Ticket_price DECIMAL(16,2), Ticket_stock INTEGER) AS $$
BEGIN
    RETURN QUERY
    SELECT T.Ticket_ID, T.Ticket_price, T.Ticket_stock
    FROM Tickets T
    INNER JOIN Ticket_transaction TT ON T.Ticket_ID = TT.Tickets_Ticket_ID
    WHERE TT.Events_Event_ID = event_id AND T.Ticket_stock > 0;
END;
$$ LANGUAGE plpgsql;

-- calling function 6
SELECT * FROM get_available_tickets('45961750305');    

-- trigger & function 1 to automatically update the Ticket_stock column in the Tickets table whenever a new ticket transaction is inserted into the Ticket_transaction table. 
-- function for trigger 1
CREATE OR REPLACE FUNCTION update_ticket_stock()
RETURNS TRIGGER AS $$
DECLARE
    ticket_id_var VARCHAR(20);
    ticket_stock_var INTEGER;
BEGIN
    -- Get the ticket ID and current stock for the inserted transaction
    SELECT Ticket_ID, Ticket_stock
    INTO ticket_id_var, ticket_stock_var
    FROM Tickets
    WHERE Ticket_ID = NEW.Tickets_Ticket_ID;
    
    -- Update the ticket stock
    UPDATE Tickets
    SET Ticket_stock = ticket_stock_var - 1
    WHERE Ticket_ID = ticket_id_var;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger 1
CREATE TRIGGER update_ticket_stock_trigger
AFTER INSERT ON Ticket_transaction
FOR EACH ROW
EXECUTE FUNCTION update_ticket_stock();

-- Running the trigger by doing an insert to ticket_transaction
Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('33', '195824367', '30708832719', '459382', '504567819');

-- Seeing the change in the ticket stock for the respective ticket_ID (run before and after the insert in order to see the difference)
SELECT Ticket_ID, Ticket_stock                                                                                                   
FROM Tickets                                                   
WHERE Ticket_ID = '459382';

-- trigger and function 2 to update the total revenue 
CREATE TRIGGER update_total_revenue
AFTER INSERT ON Ticket_transaction
FOR EACH ROW
EXECUTE FUNCTION update_total_revenue_function();

CREATE OR REPLACE FUNCTION update_total_revenue_function()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Events
    SET Total_revenue = Total_revenue + (
        SELECT Ticket_price FROM Tickets WHERE Ticket_ID = NEW.Tickets_Ticket_ID
    )
    WHERE Event_ID = NEW.Events_Event_ID;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- calling trigger 2 with the insert function
Insert into Ticket_transaction (Transaction_ID, Attendee_Attendee_ID, Events_Event_ID, Tickets_Ticket_ID, Handlers_Handler_ID) values ('35', '8457412763', '72597330248', '459382', '500000006');

-- query to see total revenue from an event from the ticket transactions
SELECT SUM(t.Ticket_price) AS Total_revenue
FROM Tickets t
JOIN Ticket_transaction tt ON t.Ticket_ID = tt.Tickets_Ticket_ID
WHERE tt.Events_Event_ID = '72597330248';

-- trigger and function 3 
CREATE OR REPLACE FUNCTION update_handler_jobdesk()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Handlers
    SET Handler_jobdesk = 'Unassigned'
    WHERE Handler_ID = NEW.Handler_ID;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_handler_jobdesk_trigger
AFTER UPDATE OF Handler_name ON Handlers
FOR EACH ROW
EXECUTE FUNCTION update_handler_jobdesk();

-- calling trigger 3;
UPDATE Handlers                                    
SET Handler_name = 'John Doe'
WHERE Handler_ID = '500000043';

-- query to see the changes made by the trigger
SELECT * FROM Handlers;
