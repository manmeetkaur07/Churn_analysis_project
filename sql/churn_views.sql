-- Drop and recreate views for churn analysis

DROP VIEW IF EXISTS vw_ChurnData;
GO
CREATE VIEW vw_ChurnData AS
    SELECT * 
    FROM prod_Churn 
    WHERE Customer_Status IN ('Churned', 'Stayed');
GO

DROP VIEW IF EXISTS vw_JoinData;
GO
CREATE VIEW vw_JoinData AS
    SELECT * 
    FROM prod_Churn 
    WHERE Customer_Status = 'Joined';
GO
