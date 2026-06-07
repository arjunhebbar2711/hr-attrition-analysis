-- Query 1: Overall Attrition Rate
SELECT
    COUNT(*) as Total_Employees,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) as Employees_Left,
    COUNT(CASE WHEN Attrition = 'No' THEN 1 END) as Employees_Stayed,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) as Attrition_Rate
FROM "WA_Fn-UseC_-HR-Employee-Attrition";

-- Query 2: Attrition by Department
SELECT
    Department,
    COUNT(*) as Total_Employees,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) as Employees_Left,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) as Attrition_Rate
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- Query 3: Overtime Impact on Attrition
SELECT
    OverTime,
    COUNT(*) as Total_Employees,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) as Employees_Left,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) as Attrition_Rate
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY OverTime
ORDER BY Attrition_Rate DESC;

-- Query 4: Attrition by Job Role
SELECT
    JobRole,
    COUNT(*) as Total_Employees,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) as Employees_Left,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) as Attrition_Rate
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

-- Query 5: Salary Impact on Attrition
SELECT
    Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS "Average Income"
FROM "WA_Fn-UseC_-HR-Employee-Attrition"
GROUP BY Attrition;