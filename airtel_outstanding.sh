#TRUNCATE TABLE Airtel_Outstanding_0to30;
#TRUNCATE TABLE Airtel_Outstanding_31to60;
#TRUNCATE TABLE Airtel_Outstanding_61to90;
#TRUNCATE TABLE Airtel_Outstanding_Greater_90;


LOAD DATA LOCAL INFILE '/home/sathish/Final_Airtel_Outstanding/Final_outstanding0to30.txt' INTO TABLE Airtel_Outstanding_0to30 FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/home/sathish/Final_Airtel_Outstanding/Final_outstanding31to60.txt' INTO TABLE Airtel_Outstanding_31to60 FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/home/sathish/Final_Airtel_Outstanding/Final_outstanding61to90.txt' INTO TABLE Airtel_Outstanding_61to90 FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';
LOAD DATA LOCAL INFILE '/home/sathish/Final_Airtel_Outstanding/Final_outstandingGreaterThan90.txt' INTO TABLE Airtel_Outstanding_Greater_90 FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';
