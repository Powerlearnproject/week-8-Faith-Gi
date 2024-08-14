SELECT h.Location, e.Source_Name, ea.Access_Date
FROM Households h
JOIN Energy_Access ea ON h.Household_ID = ea.Household_ID
JOIN Energy_Sources e ON ea.Source_ID = e.Source_ID;

