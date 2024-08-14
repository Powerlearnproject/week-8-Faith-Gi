CREATE TABLE Energy_Sources (
    Source_ID INT PRIMARY KEY,
    Source_Name VARCHAR(255),
    Type VARCHAR(100),
    Cost_Per_KWh DECIMAL(10, 2)
);

CREATE TABLE Households (
    Household_ID INT PRIMARY KEY,
    Location VARCHAR(255),
    Energy_Consumption DECIMAL(10, 2),
    Income_Level VARCHAR(50)
);

CREATE TABLE Energy_Providers (
    Provider_ID INT PRIMARY KEY,
    Provider_Name VARCHAR(255),
    Area_Covered VARCHAR(255)
);

CREATE TABLE Energy_Access (
    Access_ID INT PRIMARY KEY,
    Household_ID INT,
    Provider_ID INT,
    Source_ID INT,
    Access_Date DATE,
    FOREIGN KEY (Household_ID) REFERENCES Households(Household_ID),
    FOREIGN KEY (Provider_ID) REFERENCES Energy_Providers(Provider_ID),
    FOREIGN KEY (Source_ID) REFERENCES Energy_Sources(Source_ID)
);
