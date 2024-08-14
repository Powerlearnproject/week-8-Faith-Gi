INSERT INTO Energy_Sources (Source_ID, Source_Name, Type, Cost_Per_KWh) VALUES
(1, 'Solar Panel', 'Renewable', 0.12),
(2, 'Wind Turbine', 'Renewable', 0.10),
(3, 'Coal', 'Non-Renewable', 0.20);

INSERT INTO Households (Household_ID, Location, Energy_Consumption, Income_Level) VALUES
(1, 'Rural Area A', 150.00, 'Low'),
(2, 'Rural Area B', 200.00, 'Medium');

INSERT INTO Energy_Providers (Provider_ID, Provider_Name, Area_Covered) VALUES
(1, 'Provider X', 'Rural Area A'),
(2, 'Provider Y', 'Rural Area B');

INSERT INTO Energy_Access (Access_ID, Household_ID, Provider_ID, Source_ID, Access_Date) VALUES
(1, 1, 1, 1, '2024-01-01'),
(2, 2, 2, 2, '2024-01-01');
