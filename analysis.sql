SELECT h.Income_Level, AVG(e.Cost_Per_KWh) AS Avg_Cost_Per_KWh
FROM Households h
JOIN Energy_Access ea ON h.Household_ID = ea.Household_ID
JOIN Energy_Sources e ON ea.Source_ID = e.Source_ID
GROUP BY h.Income_Level;

SELECT e.Type, COUNT(*) AS Number_Of_Households
FROM Energy_Access ea
JOIN Energy_Sources e ON ea.Source_ID = e.Source_ID
GROUP BY e.Type;
