-- Total Sales by Department
SELECT Department, SUM(SalesAmount) AS TotalSales
FROM SalesData
GROUP BY Department;

-- Projects with Delay > 5 Days
SELECT ProjectName, DelayDays
FROM ProjectData
WHERE DelayDays > 5;

-- Risk Score Calculation
SELECT ProjectName,
       (CostVariance + DelayDays) AS RiskScore
FROM ProjectData;
