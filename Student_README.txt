DOMAIN: Omnichannel Electronics Retail
SESSION FOCUS: Extract data from different sources.

Files simulate multiple enterprise repositories:
- Sales_SQL_Server_Setup.sql -> SQL Server sales source
- HR_Employees.xlsx -> Excel HR source
- Warehouse_Shipments.csv -> flat-file logistics source
- Customer_Feedback.json -> app/API-style JSON source
- Sales_Goals_SharePoint_Export.csv -> SharePoint-style business target export

Suggested classroom goals:
1) Connect to at least 3 source types.
2) Compare Import vs DirectQuery where SQL Server is available.
3) Validate keys and data types after import.
4) Relate OrderID / CustomerID / SalesRepID fields conceptually.
5) Discuss storage mode and refresh implications.
