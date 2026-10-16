CREATE TABLE Customer_Feedback (
    FeedbackID VARCHAR(20) PRIMARY KEY,
    OrderID INT,
    CustomerID INT,
    Rating INT,
    Channel NVARCHAR(50),
    CommentCategory NVARCHAR(100),
    SubmittedAt DATETIME
);
DECLARE @json NVARCHAR(MAX) = N'[
  {
    "FeedbackID": "FB-71582",
    "OrderID": 71582,
    "CustomerID": 1063,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-07-25 00:00:00"
  },
  {
    "FeedbackID": "FB-71297",
    "OrderID": 71297,
    "CustomerID": 1322,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-09 00:00:00"
  },
  {
    "FeedbackID": "FB-73826",
    "OrderID": 73826,
    "CustomerID": 1028,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77597",
    "OrderID": 77597,
    "CustomerID": 1251,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-75266",
    "OrderID": 75266,
    "CustomerID": 1403,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72270",
    "OrderID": 72270,
    "CustomerID": 1565,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-09-06 00:00:00"
  },
  {
    "FeedbackID": "FB-73967",
    "OrderID": 73967,
    "CustomerID": 1226,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-03-26 00:00:00"
  },
  {
    "FeedbackID": "FB-78906",
    "OrderID": 78906,
    "CustomerID": 1197,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-03 00:00:00"
  },
  {
    "FeedbackID": "FB-75284",
    "OrderID": 75284,
    "CustomerID": 1478,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-14 00:00:00"
  },
  {
    "FeedbackID": "FB-70186",
    "OrderID": 70186,
    "CustomerID": 1107,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-10-07 00:00:00"
  },
  {
    "FeedbackID": "FB-76225",
    "OrderID": 76225,
    "CustomerID": 1077,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-17 00:00:00"
  },
  {
    "FeedbackID": "FB-75436",
    "OrderID": 75436,
    "CustomerID": 1586,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-20 00:00:00"
  },
  {
    "FeedbackID": "FB-77119",
    "OrderID": 77119,
    "CustomerID": 1377,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-19 00:00:00"
  },
  {
    "FeedbackID": "FB-78231",
    "OrderID": 78231,
    "CustomerID": 1226,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-19 00:00:00"
  },
  {
    "FeedbackID": "FB-70735",
    "OrderID": 70735,
    "CustomerID": 1097,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-20 00:00:00"
  },
  {
    "FeedbackID": "FB-77771",
    "OrderID": 77771,
    "CustomerID": 1131,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-02-09 00:00:00"
  },
  {
    "FeedbackID": "FB-74238",
    "OrderID": 74238,
    "CustomerID": 1259,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-24 00:00:00"
  },
  {
    "FeedbackID": "FB-72734",
    "OrderID": 72734,
    "CustomerID": 1080,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-25 00:00:00"
  },
  {
    "FeedbackID": "FB-74470",
    "OrderID": 74470,
    "CustomerID": 1162,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75094",
    "OrderID": 75094,
    "CustomerID": 1326,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-12-03 00:00:00"
  },
  {
    "FeedbackID": "FB-75148",
    "OrderID": 75148,
    "CustomerID": 1205,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-05-06 00:00:00"
  },
  {
    "FeedbackID": "FB-75969",
    "OrderID": 75969,
    "CustomerID": 1126,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-07 00:00:00"
  },
  {
    "FeedbackID": "FB-72042",
    "OrderID": 72042,
    "CustomerID": 1570,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-08-31 00:00:00"
  },
  {
    "FeedbackID": "FB-75671",
    "OrderID": 75671,
    "CustomerID": 1322,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-70381",
    "OrderID": 70381,
    "CustomerID": 1302,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75078",
    "OrderID": 75078,
    "CustomerID": 1348,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-02-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77133",
    "OrderID": 77133,
    "CustomerID": 1310,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-12 00:00:00"
  },
  {
    "FeedbackID": "FB-78166",
    "OrderID": 78166,
    "CustomerID": 1296,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-02 00:00:00"
  },
  {
    "FeedbackID": "FB-76262",
    "OrderID": 76262,
    "CustomerID": 1510,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-06-22 00:00:00"
  },
  {
    "FeedbackID": "FB-70296",
    "OrderID": 70296,
    "CustomerID": 1469,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-03-31 00:00:00"
  },
  {
    "FeedbackID": "FB-71825",
    "OrderID": 71825,
    "CustomerID": 1228,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72624",
    "OrderID": 72624,
    "CustomerID": 1320,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-10-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72621",
    "OrderID": 72621,
    "CustomerID": 1576,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-01 00:00:00"
  },
  {
    "FeedbackID": "FB-78369",
    "OrderID": 78369,
    "CustomerID": 1074,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-02-09 00:00:00"
  },
  {
    "FeedbackID": "FB-78080",
    "OrderID": 78080,
    "CustomerID": 1451,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-71782",
    "OrderID": 71782,
    "CustomerID": 1050,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-08-06 00:00:00"
  },
  {
    "FeedbackID": "FB-74963",
    "OrderID": 74963,
    "CustomerID": 1052,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-18 00:00:00"
  },
  {
    "FeedbackID": "FB-74154",
    "OrderID": 74154,
    "CustomerID": 1055,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-18 00:00:00"
  },
  {
    "FeedbackID": "FB-78492",
    "OrderID": 78492,
    "CustomerID": 1250,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-08-27 00:00:00"
  },
  {
    "FeedbackID": "FB-73287",
    "OrderID": 73287,
    "CustomerID": 1072,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-05 00:00:00"
  },
  {
    "FeedbackID": "FB-76681",
    "OrderID": 76681,
    "CustomerID": 1431,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-02 00:00:00"
  },
  {
    "FeedbackID": "FB-76940",
    "OrderID": 76940,
    "CustomerID": 1121,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-24 00:00:00"
  },
  {
    "FeedbackID": "FB-74913",
    "OrderID": 74913,
    "CustomerID": 1397,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-29 00:00:00"
  },
  {
    "FeedbackID": "FB-70913",
    "OrderID": 70913,
    "CustomerID": 1024,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-01 00:00:00"
  },
  {
    "FeedbackID": "FB-71748",
    "OrderID": 71748,
    "CustomerID": 1052,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-09-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72434",
    "OrderID": 72434,
    "CustomerID": 1319,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-26 00:00:00"
  },
  {
    "FeedbackID": "FB-78999",
    "OrderID": 78999,
    "CustomerID": 1072,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-05-05 00:00:00"
  },
  {
    "FeedbackID": "FB-71006",
    "OrderID": 71006,
    "CustomerID": 1555,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73157",
    "OrderID": 73157,
    "CustomerID": 1371,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-07-29 00:00:00"
  },
  {
    "FeedbackID": "FB-71755",
    "OrderID": 71755,
    "CustomerID": 1337,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-04-18 00:00:00"
  },
  {
    "FeedbackID": "FB-74138",
    "OrderID": 74138,
    "CustomerID": 1117,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-08 00:00:00"
  },
  {
    "FeedbackID": "FB-76474",
    "OrderID": 76474,
    "CustomerID": 1397,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-24 00:00:00"
  },
  {
    "FeedbackID": "FB-77104",
    "OrderID": 77104,
    "CustomerID": 1077,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-15 00:00:00"
  },
  {
    "FeedbackID": "FB-70370",
    "OrderID": 70370,
    "CustomerID": 1241,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-26 00:00:00"
  },
  {
    "FeedbackID": "FB-72874",
    "OrderID": 72874,
    "CustomerID": 1210,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-26 00:00:00"
  },
  {
    "FeedbackID": "FB-76024",
    "OrderID": 76024,
    "CustomerID": 1542,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-30 00:00:00"
  },
  {
    "FeedbackID": "FB-76750",
    "OrderID": 76750,
    "CustomerID": 1287,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72043",
    "OrderID": 72043,
    "CustomerID": 1355,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-31 00:00:00"
  },
  {
    "FeedbackID": "FB-70264",
    "OrderID": 70264,
    "CustomerID": 1046,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-01 00:00:00"
  },
  {
    "FeedbackID": "FB-74245",
    "OrderID": 74245,
    "CustomerID": 1535,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-21 00:00:00"
  },
  {
    "FeedbackID": "FB-72687",
    "OrderID": 72687,
    "CustomerID": 1438,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-09-11 00:00:00"
  },
  {
    "FeedbackID": "FB-74212",
    "OrderID": 74212,
    "CustomerID": 1569,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-06-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73453",
    "OrderID": 73453,
    "CustomerID": 1231,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-06 00:00:00"
  },
  {
    "FeedbackID": "FB-71216",
    "OrderID": 71216,
    "CustomerID": 1157,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-28 00:00:00"
  },
  {
    "FeedbackID": "FB-70488",
    "OrderID": 70488,
    "CustomerID": 1056,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-17 00:00:00"
  },
  {
    "FeedbackID": "FB-74553",
    "OrderID": 74553,
    "CustomerID": 1561,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-15 00:00:00"
  },
  {
    "FeedbackID": "FB-76477",
    "OrderID": 76477,
    "CustomerID": 1099,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-02 00:00:00"
  },
  {
    "FeedbackID": "FB-74664",
    "OrderID": 74664,
    "CustomerID": 1039,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-20 00:00:00"
  },
  {
    "FeedbackID": "FB-77653",
    "OrderID": 77653,
    "CustomerID": 1148,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-10-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72761",
    "OrderID": 72761,
    "CustomerID": 1012,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-11-22 00:00:00"
  },
  {
    "FeedbackID": "FB-77475",
    "OrderID": 77475,
    "CustomerID": 1593,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-13 00:00:00"
  },
  {
    "FeedbackID": "FB-72902",
    "OrderID": 72902,
    "CustomerID": 1200,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-08 00:00:00"
  },
  {
    "FeedbackID": "FB-73114",
    "OrderID": 73114,
    "CustomerID": 1600,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-08 00:00:00"
  },
  {
    "FeedbackID": "FB-75283",
    "OrderID": 75283,
    "CustomerID": 1168,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-08-10 00:00:00"
  },
  {
    "FeedbackID": "FB-73188",
    "OrderID": 73188,
    "CustomerID": 1382,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-76974",
    "OrderID": 76974,
    "CustomerID": 1052,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-10 00:00:00"
  },
  {
    "FeedbackID": "FB-77368",
    "OrderID": 77368,
    "CustomerID": 1456,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-03 00:00:00"
  },
  {
    "FeedbackID": "FB-73961",
    "OrderID": 73961,
    "CustomerID": 1227,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72101",
    "OrderID": 72101,
    "CustomerID": 1163,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-30 00:00:00"
  },
  {
    "FeedbackID": "FB-74214",
    "OrderID": 74214,
    "CustomerID": 1278,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-75239",
    "OrderID": 75239,
    "CustomerID": 1266,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-08 00:00:00"
  },
  {
    "FeedbackID": "FB-74574",
    "OrderID": 74574,
    "CustomerID": 1108,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-71548",
    "OrderID": 71548,
    "CustomerID": 1186,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-17 00:00:00"
  },
  {
    "FeedbackID": "FB-78126",
    "OrderID": 78126,
    "CustomerID": 1165,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73141",
    "OrderID": 73141,
    "CustomerID": 1421,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72091",
    "OrderID": 72091,
    "CustomerID": 1594,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-14 00:00:00"
  },
  {
    "FeedbackID": "FB-72295",
    "OrderID": 72295,
    "CustomerID": 1170,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-01-07 00:00:00"
  },
  {
    "FeedbackID": "FB-78187",
    "OrderID": 78187,
    "CustomerID": 1533,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-10-02 00:00:00"
  },
  {
    "FeedbackID": "FB-74581",
    "OrderID": 74581,
    "CustomerID": 1017,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-03 00:00:00"
  },
  {
    "FeedbackID": "FB-71734",
    "OrderID": 71734,
    "CustomerID": 1158,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-76074",
    "OrderID": 76074,
    "CustomerID": 1195,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-25 00:00:00"
  },
  {
    "FeedbackID": "FB-72097",
    "OrderID": 72097,
    "CustomerID": 1036,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-02-22 00:00:00"
  },
  {
    "FeedbackID": "FB-70023",
    "OrderID": 70023,
    "CustomerID": 1271,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-10-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72461",
    "OrderID": 72461,
    "CustomerID": 1181,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-25 00:00:00"
  },
  {
    "FeedbackID": "FB-77636",
    "OrderID": 77636,
    "CustomerID": 1140,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-05-24 00:00:00"
  },
  {
    "FeedbackID": "FB-73760",
    "OrderID": 73760,
    "CustomerID": 1371,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-31 00:00:00"
  },
  {
    "FeedbackID": "FB-75050",
    "OrderID": 75050,
    "CustomerID": 1288,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-15 00:00:00"
  },
  {
    "FeedbackID": "FB-70387",
    "OrderID": 70387,
    "CustomerID": 1016,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-12 00:00:00"
  },
  {
    "FeedbackID": "FB-73629",
    "OrderID": 73629,
    "CustomerID": 1419,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73718",
    "OrderID": 73718,
    "CustomerID": 1004,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-03-19 00:00:00"
  },
  {
    "FeedbackID": "FB-74895",
    "OrderID": 74895,
    "CustomerID": 1114,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-12-08 00:00:00"
  },
  {
    "FeedbackID": "FB-76401",
    "OrderID": 76401,
    "CustomerID": 1393,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-08-05 00:00:00"
  },
  {
    "FeedbackID": "FB-71698",
    "OrderID": 71698,
    "CustomerID": 1234,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-23 00:00:00"
  },
  {
    "FeedbackID": "FB-73851",
    "OrderID": 73851,
    "CustomerID": 1267,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-07 00:00:00"
  },
  {
    "FeedbackID": "FB-77027",
    "OrderID": 77027,
    "CustomerID": 1336,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-02-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72526",
    "OrderID": 72526,
    "CustomerID": 1360,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-11-20 00:00:00"
  },
  {
    "FeedbackID": "FB-76250",
    "OrderID": 76250,
    "CustomerID": 1005,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-01-07 00:00:00"
  },
  {
    "FeedbackID": "FB-76557",
    "OrderID": 76557,
    "CustomerID": 1486,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-04-22 00:00:00"
  },
  {
    "FeedbackID": "FB-71126",
    "OrderID": 71126,
    "CustomerID": 1311,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-71372",
    "OrderID": 71372,
    "CustomerID": 1245,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-10-22 00:00:00"
  },
  {
    "FeedbackID": "FB-75609",
    "OrderID": 75609,
    "CustomerID": 1209,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-20 00:00:00"
  },
  {
    "FeedbackID": "FB-73964",
    "OrderID": 73964,
    "CustomerID": 1437,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-07-31 00:00:00"
  },
  {
    "FeedbackID": "FB-74119",
    "OrderID": 74119,
    "CustomerID": 1221,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-07-04 00:00:00"
  },
  {
    "FeedbackID": "FB-78908",
    "OrderID": 78908,
    "CustomerID": 1346,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-25 00:00:00"
  },
  {
    "FeedbackID": "FB-76432",
    "OrderID": 76432,
    "CustomerID": 1492,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-09 00:00:00"
  },
  {
    "FeedbackID": "FB-75536",
    "OrderID": 75536,
    "CustomerID": 1596,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-72217",
    "OrderID": 72217,
    "CustomerID": 1376,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-71737",
    "OrderID": 71737,
    "CustomerID": 1443,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-01-31 00:00:00"
  },
  {
    "FeedbackID": "FB-74162",
    "OrderID": 74162,
    "CustomerID": 1335,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-10-27 00:00:00"
  },
  {
    "FeedbackID": "FB-70623",
    "OrderID": 70623,
    "CustomerID": 1117,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-07-20 00:00:00"
  },
  {
    "FeedbackID": "FB-71129",
    "OrderID": 71129,
    "CustomerID": 1152,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-07 00:00:00"
  },
  {
    "FeedbackID": "FB-73277",
    "OrderID": 73277,
    "CustomerID": 1226,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-06-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72347",
    "OrderID": 72347,
    "CustomerID": 1135,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-08-10 00:00:00"
  },
  {
    "FeedbackID": "FB-75901",
    "OrderID": 75901,
    "CustomerID": 1415,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-10-02 00:00:00"
  },
  {
    "FeedbackID": "FB-76158",
    "OrderID": 76158,
    "CustomerID": 1103,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-24 00:00:00"
  },
  {
    "FeedbackID": "FB-76371",
    "OrderID": 76371,
    "CustomerID": 1406,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-20 00:00:00"
  },
  {
    "FeedbackID": "FB-73881",
    "OrderID": 73881,
    "CustomerID": 1263,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-02-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72341",
    "OrderID": 72341,
    "CustomerID": 1194,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77051",
    "OrderID": 77051,
    "CustomerID": 1314,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-10-12 00:00:00"
  },
  {
    "FeedbackID": "FB-75623",
    "OrderID": 75623,
    "CustomerID": 1480,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-12-23 00:00:00"
  },
  {
    "FeedbackID": "FB-71838",
    "OrderID": 71838,
    "CustomerID": 1476,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72822",
    "OrderID": 72822,
    "CustomerID": 1222,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-17 00:00:00"
  },
  {
    "FeedbackID": "FB-75012",
    "OrderID": 75012,
    "CustomerID": 1115,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-10-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76446",
    "OrderID": 76446,
    "CustomerID": 1428,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-05 00:00:00"
  },
  {
    "FeedbackID": "FB-73802",
    "OrderID": 73802,
    "CustomerID": 1270,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-17 00:00:00"
  },
  {
    "FeedbackID": "FB-76618",
    "OrderID": 76618,
    "CustomerID": 1531,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72083",
    "OrderID": 72083,
    "CustomerID": 1577,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72574",
    "OrderID": 72574,
    "CustomerID": 1282,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-18 00:00:00"
  },
  {
    "FeedbackID": "FB-73558",
    "OrderID": 73558,
    "CustomerID": 1545,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-03 00:00:00"
  },
  {
    "FeedbackID": "FB-75061",
    "OrderID": 75061,
    "CustomerID": 1323,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-03-28 00:00:00"
  },
  {
    "FeedbackID": "FB-72813",
    "OrderID": 72813,
    "CustomerID": 1342,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-07-26 00:00:00"
  },
  {
    "FeedbackID": "FB-77978",
    "OrderID": 77978,
    "CustomerID": 1104,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72976",
    "OrderID": 72976,
    "CustomerID": 1232,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-07 00:00:00"
  },
  {
    "FeedbackID": "FB-74527",
    "OrderID": 74527,
    "CustomerID": 1149,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-07-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72156",
    "OrderID": 72156,
    "CustomerID": 1287,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-05-12 00:00:00"
  },
  {
    "FeedbackID": "FB-75703",
    "OrderID": 75703,
    "CustomerID": 1281,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-22 00:00:00"
  },
  {
    "FeedbackID": "FB-74641",
    "OrderID": 74641,
    "CustomerID": 1433,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-10-15 00:00:00"
  },
  {
    "FeedbackID": "FB-73578",
    "OrderID": 73578,
    "CustomerID": 1299,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-27 00:00:00"
  },
  {
    "FeedbackID": "FB-73271",
    "OrderID": 73271,
    "CustomerID": 1559,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-10 00:00:00"
  },
  {
    "FeedbackID": "FB-74089",
    "OrderID": 74089,
    "CustomerID": 1250,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-31 00:00:00"
  },
  {
    "FeedbackID": "FB-77344",
    "OrderID": 77344,
    "CustomerID": 1132,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-01-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73203",
    "OrderID": 73203,
    "CustomerID": 1344,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-07-13 00:00:00"
  },
  {
    "FeedbackID": "FB-70634",
    "OrderID": 70634,
    "CustomerID": 1184,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-22 00:00:00"
  },
  {
    "FeedbackID": "FB-77516",
    "OrderID": 77516,
    "CustomerID": 1446,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-02-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72179",
    "OrderID": 72179,
    "CustomerID": 1133,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-06-05 00:00:00"
  },
  {
    "FeedbackID": "FB-71931",
    "OrderID": 71931,
    "CustomerID": 1085,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-17 00:00:00"
  },
  {
    "FeedbackID": "FB-72256",
    "OrderID": 72256,
    "CustomerID": 1189,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-26 00:00:00"
  },
  {
    "FeedbackID": "FB-75138",
    "OrderID": 75138,
    "CustomerID": 1498,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-08-30 00:00:00"
  },
  {
    "FeedbackID": "FB-76527",
    "OrderID": 76527,
    "CustomerID": 1149,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-04-03 00:00:00"
  },
  {
    "FeedbackID": "FB-73215",
    "OrderID": 73215,
    "CustomerID": 1475,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-01-08 00:00:00"
  },
  {
    "FeedbackID": "FB-72550",
    "OrderID": 72550,
    "CustomerID": 1453,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-08-21 00:00:00"
  },
  {
    "FeedbackID": "FB-74018",
    "OrderID": 74018,
    "CustomerID": 1485,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-07-10 00:00:00"
  },
  {
    "FeedbackID": "FB-75568",
    "OrderID": 75568,
    "CustomerID": 1150,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-02-22 00:00:00"
  },
  {
    "FeedbackID": "FB-73139",
    "OrderID": 73139,
    "CustomerID": 1574,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-02 00:00:00"
  },
  {
    "FeedbackID": "FB-77290",
    "OrderID": 77290,
    "CustomerID": 1133,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-23 00:00:00"
  },
  {
    "FeedbackID": "FB-76040",
    "OrderID": 76040,
    "CustomerID": 1185,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-06 00:00:00"
  },
  {
    "FeedbackID": "FB-74058",
    "OrderID": 74058,
    "CustomerID": 1324,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-06-10 00:00:00"
  },
  {
    "FeedbackID": "FB-75875",
    "OrderID": 75875,
    "CustomerID": 1127,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-06 00:00:00"
  },
  {
    "FeedbackID": "FB-77784",
    "OrderID": 77784,
    "CustomerID": 1138,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-05-27 00:00:00"
  },
  {
    "FeedbackID": "FB-71870",
    "OrderID": 71870,
    "CustomerID": 1579,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-11-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75667",
    "OrderID": 75667,
    "CustomerID": 1423,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-02-03 00:00:00"
  },
  {
    "FeedbackID": "FB-71794",
    "OrderID": 71794,
    "CustomerID": 1415,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-21 00:00:00"
  },
  {
    "FeedbackID": "FB-78390",
    "OrderID": 78390,
    "CustomerID": 1051,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-30 00:00:00"
  },
  {
    "FeedbackID": "FB-71547",
    "OrderID": 71547,
    "CustomerID": 1033,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-07-16 00:00:00"
  },
  {
    "FeedbackID": "FB-70740",
    "OrderID": 70740,
    "CustomerID": 1491,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-11-19 00:00:00"
  },
  {
    "FeedbackID": "FB-73905",
    "OrderID": 73905,
    "CustomerID": 1504,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-03-01 00:00:00"
  },
  {
    "FeedbackID": "FB-74344",
    "OrderID": 74344,
    "CustomerID": 1440,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-05-22 00:00:00"
  },
  {
    "FeedbackID": "FB-73538",
    "OrderID": 73538,
    "CustomerID": 1149,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-04 00:00:00"
  },
  {
    "FeedbackID": "FB-77840",
    "OrderID": 77840,
    "CustomerID": 1217,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-06 00:00:00"
  },
  {
    "FeedbackID": "FB-71527",
    "OrderID": 71527,
    "CustomerID": 1503,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-74189",
    "OrderID": 74189,
    "CustomerID": 1371,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-11-26 00:00:00"
  },
  {
    "FeedbackID": "FB-75856",
    "OrderID": 75856,
    "CustomerID": 1145,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-10 00:00:00"
  },
  {
    "FeedbackID": "FB-70243",
    "OrderID": 70243,
    "CustomerID": 1065,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-12 00:00:00"
  },
  {
    "FeedbackID": "FB-71932",
    "OrderID": 71932,
    "CustomerID": 1276,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77334",
    "OrderID": 77334,
    "CustomerID": 1452,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77039",
    "OrderID": 77039,
    "CustomerID": 1467,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-05-07 00:00:00"
  },
  {
    "FeedbackID": "FB-73534",
    "OrderID": 73534,
    "CustomerID": 1272,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71161",
    "OrderID": 71161,
    "CustomerID": 1385,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76515",
    "OrderID": 76515,
    "CustomerID": 1449,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-31 00:00:00"
  },
  {
    "FeedbackID": "FB-75435",
    "OrderID": 75435,
    "CustomerID": 1453,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-06 00:00:00"
  },
  {
    "FeedbackID": "FB-74917",
    "OrderID": 74917,
    "CustomerID": 1568,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-14 00:00:00"
  },
  {
    "FeedbackID": "FB-75826",
    "OrderID": 75826,
    "CustomerID": 1465,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-03 00:00:00"
  },
  {
    "FeedbackID": "FB-73438",
    "OrderID": 73438,
    "CustomerID": 1286,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-02-16 00:00:00"
  },
  {
    "FeedbackID": "FB-73599",
    "OrderID": 73599,
    "CustomerID": 1231,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-07 00:00:00"
  },
  {
    "FeedbackID": "FB-71784",
    "OrderID": 71784,
    "CustomerID": 1280,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-08-11 00:00:00"
  },
  {
    "FeedbackID": "FB-78797",
    "OrderID": 78797,
    "CustomerID": 1198,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-08-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75448",
    "OrderID": 75448,
    "CustomerID": 1336,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-31 00:00:00"
  },
  {
    "FeedbackID": "FB-71296",
    "OrderID": 71296,
    "CustomerID": 1149,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-12-03 00:00:00"
  },
  {
    "FeedbackID": "FB-70422",
    "OrderID": 70422,
    "CustomerID": 1526,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-10-25 00:00:00"
  },
  {
    "FeedbackID": "FB-70647",
    "OrderID": 70647,
    "CustomerID": 1323,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-08-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78502",
    "OrderID": 78502,
    "CustomerID": 1218,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-10-10 00:00:00"
  },
  {
    "FeedbackID": "FB-73616",
    "OrderID": 73616,
    "CustomerID": 1026,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-09-24 00:00:00"
  },
  {
    "FeedbackID": "FB-77779",
    "OrderID": 77779,
    "CustomerID": 1289,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-07 00:00:00"
  },
  {
    "FeedbackID": "FB-75096",
    "OrderID": 75096,
    "CustomerID": 1387,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-74072",
    "OrderID": 74072,
    "CustomerID": 1472,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-26 00:00:00"
  },
  {
    "FeedbackID": "FB-74832",
    "OrderID": 74832,
    "CustomerID": 1296,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-13 00:00:00"
  },
  {
    "FeedbackID": "FB-76400",
    "OrderID": 76400,
    "CustomerID": 1593,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-11-07 00:00:00"
  },
  {
    "FeedbackID": "FB-78727",
    "OrderID": 78727,
    "CustomerID": 1514,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-18 00:00:00"
  },
  {
    "FeedbackID": "FB-76244",
    "OrderID": 76244,
    "CustomerID": 1322,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-08 00:00:00"
  },
  {
    "FeedbackID": "FB-73049",
    "OrderID": 73049,
    "CustomerID": 1227,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-20 00:00:00"
  },
  {
    "FeedbackID": "FB-73674",
    "OrderID": 73674,
    "CustomerID": 1198,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-01-15 00:00:00"
  },
  {
    "FeedbackID": "FB-70098",
    "OrderID": 70098,
    "CustomerID": 1454,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78016",
    "OrderID": 78016,
    "CustomerID": 1281,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-07-10 00:00:00"
  },
  {
    "FeedbackID": "FB-70635",
    "OrderID": 70635,
    "CustomerID": 1330,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-74860",
    "OrderID": 74860,
    "CustomerID": 1185,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-07 00:00:00"
  },
  {
    "FeedbackID": "FB-72125",
    "OrderID": 72125,
    "CustomerID": 1322,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-02-10 00:00:00"
  },
  {
    "FeedbackID": "FB-72382",
    "OrderID": 72382,
    "CustomerID": 1387,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-15 00:00:00"
  },
  {
    "FeedbackID": "FB-76688",
    "OrderID": 76688,
    "CustomerID": 1138,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73766",
    "OrderID": 73766,
    "CustomerID": 1246,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-04-12 00:00:00"
  },
  {
    "FeedbackID": "FB-76544",
    "OrderID": 76544,
    "CustomerID": 1540,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-22 00:00:00"
  },
  {
    "FeedbackID": "FB-76657",
    "OrderID": 76657,
    "CustomerID": 1562,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-05-17 00:00:00"
  },
  {
    "FeedbackID": "FB-76389",
    "OrderID": 76389,
    "CustomerID": 1497,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-02-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77755",
    "OrderID": 77755,
    "CustomerID": 1268,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-27 00:00:00"
  },
  {
    "FeedbackID": "FB-74725",
    "OrderID": 74725,
    "CustomerID": 1568,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-04 00:00:00"
  },
  {
    "FeedbackID": "FB-78376",
    "OrderID": 78376,
    "CustomerID": 1133,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-23 00:00:00"
  },
  {
    "FeedbackID": "FB-76863",
    "OrderID": 76863,
    "CustomerID": 1493,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-12-28 00:00:00"
  },
  {
    "FeedbackID": "FB-74556",
    "OrderID": 74556,
    "CustomerID": 1336,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-11 00:00:00"
  },
  {
    "FeedbackID": "FB-70158",
    "OrderID": 70158,
    "CustomerID": 1171,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-08-10 00:00:00"
  },
  {
    "FeedbackID": "FB-77908",
    "OrderID": 77908,
    "CustomerID": 1172,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-15 00:00:00"
  },
  {
    "FeedbackID": "FB-71845",
    "OrderID": 71845,
    "CustomerID": 1098,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-17 00:00:00"
  },
  {
    "FeedbackID": "FB-78681",
    "OrderID": 78681,
    "CustomerID": 1418,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74057",
    "OrderID": 74057,
    "CustomerID": 1574,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72928",
    "OrderID": 72928,
    "CustomerID": 1381,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-29 00:00:00"
  },
  {
    "FeedbackID": "FB-76163",
    "OrderID": 76163,
    "CustomerID": 1373,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-09-07 00:00:00"
  },
  {
    "FeedbackID": "FB-70671",
    "OrderID": 70671,
    "CustomerID": 1092,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-15 00:00:00"
  },
  {
    "FeedbackID": "FB-70405",
    "OrderID": 70405,
    "CustomerID": 1582,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-14 00:00:00"
  },
  {
    "FeedbackID": "FB-77651",
    "OrderID": 77651,
    "CustomerID": 1041,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-10-05 00:00:00"
  },
  {
    "FeedbackID": "FB-70811",
    "OrderID": 70811,
    "CustomerID": 1158,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-05 00:00:00"
  },
  {
    "FeedbackID": "FB-72327",
    "OrderID": 72327,
    "CustomerID": 1071,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-11-25 00:00:00"
  },
  {
    "FeedbackID": "FB-71474",
    "OrderID": 71474,
    "CustomerID": 1062,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-30 00:00:00"
  },
  {
    "FeedbackID": "FB-78942",
    "OrderID": 78942,
    "CustomerID": 1262,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-09-27 00:00:00"
  },
  {
    "FeedbackID": "FB-72996",
    "OrderID": 72996,
    "CustomerID": 1572,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-17 00:00:00"
  },
  {
    "FeedbackID": "FB-78044",
    "OrderID": 78044,
    "CustomerID": 1469,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-05-07 00:00:00"
  },
  {
    "FeedbackID": "FB-74209",
    "OrderID": 74209,
    "CustomerID": 1469,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-23 00:00:00"
  },
  {
    "FeedbackID": "FB-75924",
    "OrderID": 75924,
    "CustomerID": 1088,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72118",
    "OrderID": 72118,
    "CustomerID": 1153,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77730",
    "OrderID": 77730,
    "CustomerID": 1501,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-20 00:00:00"
  },
  {
    "FeedbackID": "FB-77057",
    "OrderID": 77057,
    "CustomerID": 1579,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74705",
    "OrderID": 74705,
    "CustomerID": 1183,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-25 00:00:00"
  },
  {
    "FeedbackID": "FB-72476",
    "OrderID": 72476,
    "CustomerID": 1597,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-06 00:00:00"
  },
  {
    "FeedbackID": "FB-70443",
    "OrderID": 70443,
    "CustomerID": 1061,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-07-02 00:00:00"
  },
  {
    "FeedbackID": "FB-74224",
    "OrderID": 74224,
    "CustomerID": 1010,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-06-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78905",
    "OrderID": 78905,
    "CustomerID": 1353,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-02-28 00:00:00"
  },
  {
    "FeedbackID": "FB-73017",
    "OrderID": 73017,
    "CustomerID": 1266,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-03-29 00:00:00"
  },
  {
    "FeedbackID": "FB-74540",
    "OrderID": 74540,
    "CustomerID": 1591,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-30 00:00:00"
  },
  {
    "FeedbackID": "FB-72690",
    "OrderID": 72690,
    "CustomerID": 1359,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-27 00:00:00"
  },
  {
    "FeedbackID": "FB-77780",
    "OrderID": 77780,
    "CustomerID": 1271,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-01-06 00:00:00"
  },
  {
    "FeedbackID": "FB-75352",
    "OrderID": 75352,
    "CustomerID": 1299,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-01-14 00:00:00"
  },
  {
    "FeedbackID": "FB-71873",
    "OrderID": 71873,
    "CustomerID": 1442,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-02-23 00:00:00"
  },
  {
    "FeedbackID": "FB-78485",
    "OrderID": 78485,
    "CustomerID": 1540,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-26 00:00:00"
  },
  {
    "FeedbackID": "FB-78955",
    "OrderID": 78955,
    "CustomerID": 1485,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-09-28 00:00:00"
  },
  {
    "FeedbackID": "FB-70441",
    "OrderID": 70441,
    "CustomerID": 1118,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-02-12 00:00:00"
  },
  {
    "FeedbackID": "FB-70605",
    "OrderID": 70605,
    "CustomerID": 1365,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-23 00:00:00"
  },
  {
    "FeedbackID": "FB-77752",
    "OrderID": 77752,
    "CustomerID": 1587,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74077",
    "OrderID": 74077,
    "CustomerID": 1018,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-10-16 00:00:00"
  },
  {
    "FeedbackID": "FB-71779",
    "OrderID": 71779,
    "CustomerID": 1348,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-03 00:00:00"
  },
  {
    "FeedbackID": "FB-75045",
    "OrderID": 75045,
    "CustomerID": 1438,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-21 00:00:00"
  },
  {
    "FeedbackID": "FB-72897",
    "OrderID": 72897,
    "CustomerID": 1296,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-09-08 00:00:00"
  },
  {
    "FeedbackID": "FB-70616",
    "OrderID": 70616,
    "CustomerID": 1509,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72332",
    "OrderID": 72332,
    "CustomerID": 1565,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-01-24 00:00:00"
  },
  {
    "FeedbackID": "FB-78801",
    "OrderID": 78801,
    "CustomerID": 1058,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-13 00:00:00"
  },
  {
    "FeedbackID": "FB-78379",
    "OrderID": 78379,
    "CustomerID": 1179,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-17 00:00:00"
  },
  {
    "FeedbackID": "FB-71942",
    "OrderID": 71942,
    "CustomerID": 1341,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-02-10 00:00:00"
  },
  {
    "FeedbackID": "FB-71148",
    "OrderID": 71148,
    "CustomerID": 1037,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-11-22 00:00:00"
  },
  {
    "FeedbackID": "FB-75426",
    "OrderID": 75426,
    "CustomerID": 1136,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-01 00:00:00"
  },
  {
    "FeedbackID": "FB-71626",
    "OrderID": 71626,
    "CustomerID": 1547,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-24 00:00:00"
  },
  {
    "FeedbackID": "FB-71763",
    "OrderID": 71763,
    "CustomerID": 1277,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-04-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72119",
    "OrderID": 72119,
    "CustomerID": 1407,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-76029",
    "OrderID": 76029,
    "CustomerID": 1458,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-08-26 00:00:00"
  },
  {
    "FeedbackID": "FB-71142",
    "OrderID": 71142,
    "CustomerID": 1220,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-07 00:00:00"
  },
  {
    "FeedbackID": "FB-74956",
    "OrderID": 74956,
    "CustomerID": 1510,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-05-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78890",
    "OrderID": 78890,
    "CustomerID": 1386,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-20 00:00:00"
  },
  {
    "FeedbackID": "FB-71265",
    "OrderID": 71265,
    "CustomerID": 1304,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-02-10 00:00:00"
  },
  {
    "FeedbackID": "FB-76673",
    "OrderID": 76673,
    "CustomerID": 1471,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-13 00:00:00"
  },
  {
    "FeedbackID": "FB-73119",
    "OrderID": 73119,
    "CustomerID": 1492,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-21 00:00:00"
  },
  {
    "FeedbackID": "FB-72514",
    "OrderID": 72514,
    "CustomerID": 1118,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78508",
    "OrderID": 78508,
    "CustomerID": 1582,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-01 00:00:00"
  },
  {
    "FeedbackID": "FB-76453",
    "OrderID": 76453,
    "CustomerID": 1338,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-15 00:00:00"
  },
  {
    "FeedbackID": "FB-73204",
    "OrderID": 73204,
    "CustomerID": 1528,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71424",
    "OrderID": 71424,
    "CustomerID": 1140,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-10 00:00:00"
  },
  {
    "FeedbackID": "FB-76689",
    "OrderID": 76689,
    "CustomerID": 1014,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-02-14 00:00:00"
  },
  {
    "FeedbackID": "FB-76427",
    "OrderID": 76427,
    "CustomerID": 1394,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-01-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75401",
    "OrderID": 75401,
    "CustomerID": 1503,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-02 00:00:00"
  },
  {
    "FeedbackID": "FB-70674",
    "OrderID": 70674,
    "CustomerID": 1175,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78356",
    "OrderID": 78356,
    "CustomerID": 1545,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-29 00:00:00"
  },
  {
    "FeedbackID": "FB-73282",
    "OrderID": 73282,
    "CustomerID": 1500,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-02 00:00:00"
  },
  {
    "FeedbackID": "FB-73280",
    "OrderID": 73280,
    "CustomerID": 1237,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78010",
    "OrderID": 78010,
    "CustomerID": 1539,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-01 00:00:00"
  },
  {
    "FeedbackID": "FB-76644",
    "OrderID": 76644,
    "CustomerID": 1159,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-05 00:00:00"
  },
  {
    "FeedbackID": "FB-77748",
    "OrderID": 77748,
    "CustomerID": 1102,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-09-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73099",
    "OrderID": 73099,
    "CustomerID": 1563,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-03 00:00:00"
  },
  {
    "FeedbackID": "FB-78159",
    "OrderID": 78159,
    "CustomerID": 1362,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-15 00:00:00"
  },
  {
    "FeedbackID": "FB-70745",
    "OrderID": 70745,
    "CustomerID": 1086,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75917",
    "OrderID": 75917,
    "CustomerID": 1458,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-11 00:00:00"
  },
  {
    "FeedbackID": "FB-70879",
    "OrderID": 70879,
    "CustomerID": 1582,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-02-28 00:00:00"
  },
  {
    "FeedbackID": "FB-73468",
    "OrderID": 73468,
    "CustomerID": 1357,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-74662",
    "OrderID": 74662,
    "CustomerID": 1162,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-07 00:00:00"
  },
  {
    "FeedbackID": "FB-77004",
    "OrderID": 77004,
    "CustomerID": 1362,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-72588",
    "OrderID": 72588,
    "CustomerID": 1032,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-11 00:00:00"
  },
  {
    "FeedbackID": "FB-74373",
    "OrderID": 74373,
    "CustomerID": 1383,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74305",
    "OrderID": 74305,
    "CustomerID": 1559,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-12 00:00:00"
  },
  {
    "FeedbackID": "FB-75065",
    "OrderID": 75065,
    "CustomerID": 1358,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-25 00:00:00"
  },
  {
    "FeedbackID": "FB-70017",
    "OrderID": 70017,
    "CustomerID": 1559,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-08-22 00:00:00"
  },
  {
    "FeedbackID": "FB-71235",
    "OrderID": 71235,
    "CustomerID": 1072,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-11 00:00:00"
  },
  {
    "FeedbackID": "FB-70506",
    "OrderID": 70506,
    "CustomerID": 1466,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-06-11 00:00:00"
  },
  {
    "FeedbackID": "FB-77073",
    "OrderID": 77073,
    "CustomerID": 1400,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-03 00:00:00"
  },
  {
    "FeedbackID": "FB-78960",
    "OrderID": 78960,
    "CustomerID": 1410,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72227",
    "OrderID": 72227,
    "CustomerID": 1568,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-13 00:00:00"
  },
  {
    "FeedbackID": "FB-72192",
    "OrderID": 72192,
    "CustomerID": 1209,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73339",
    "OrderID": 73339,
    "CustomerID": 1122,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-70815",
    "OrderID": 70815,
    "CustomerID": 1592,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-02-12 00:00:00"
  },
  {
    "FeedbackID": "FB-71029",
    "OrderID": 71029,
    "CustomerID": 1163,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-09-15 00:00:00"
  },
  {
    "FeedbackID": "FB-76583",
    "OrderID": 76583,
    "CustomerID": 1139,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78567",
    "OrderID": 78567,
    "CustomerID": 1133,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-11 00:00:00"
  },
  {
    "FeedbackID": "FB-71421",
    "OrderID": 71421,
    "CustomerID": 1567,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-10 00:00:00"
  },
  {
    "FeedbackID": "FB-70809",
    "OrderID": 70809,
    "CustomerID": 1266,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72879",
    "OrderID": 72879,
    "CustomerID": 1023,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-07-10 00:00:00"
  },
  {
    "FeedbackID": "FB-77916",
    "OrderID": 77916,
    "CustomerID": 1112,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72524",
    "OrderID": 72524,
    "CustomerID": 1213,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-26 00:00:00"
  },
  {
    "FeedbackID": "FB-70324",
    "OrderID": 70324,
    "CustomerID": 1511,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-02 00:00:00"
  },
  {
    "FeedbackID": "FB-78164",
    "OrderID": 78164,
    "CustomerID": 1522,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-12 00:00:00"
  },
  {
    "FeedbackID": "FB-72647",
    "OrderID": 72647,
    "CustomerID": 1205,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-03-28 00:00:00"
  },
  {
    "FeedbackID": "FB-71003",
    "OrderID": 71003,
    "CustomerID": 1317,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-03-04 00:00:00"
  },
  {
    "FeedbackID": "FB-78718",
    "OrderID": 78718,
    "CustomerID": 1388,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-01-03 00:00:00"
  },
  {
    "FeedbackID": "FB-75937",
    "OrderID": 75937,
    "CustomerID": 1445,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-29 00:00:00"
  },
  {
    "FeedbackID": "FB-72876",
    "OrderID": 72876,
    "CustomerID": 1139,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-04-01 00:00:00"
  },
  {
    "FeedbackID": "FB-74670",
    "OrderID": 74670,
    "CustomerID": 1192,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73803",
    "OrderID": 73803,
    "CustomerID": 1593,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-16 00:00:00"
  },
  {
    "FeedbackID": "FB-73346",
    "OrderID": 73346,
    "CustomerID": 1266,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-01-20 00:00:00"
  },
  {
    "FeedbackID": "FB-70281",
    "OrderID": 70281,
    "CustomerID": 1189,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-29 00:00:00"
  },
  {
    "FeedbackID": "FB-76872",
    "OrderID": 76872,
    "CustomerID": 1488,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-01-06 00:00:00"
  },
  {
    "FeedbackID": "FB-72898",
    "OrderID": 72898,
    "CustomerID": 1564,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-06 00:00:00"
  },
  {
    "FeedbackID": "FB-72943",
    "OrderID": 72943,
    "CustomerID": 1470,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-05 00:00:00"
  },
  {
    "FeedbackID": "FB-76248",
    "OrderID": 76248,
    "CustomerID": 1113,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-18 00:00:00"
  },
  {
    "FeedbackID": "FB-74508",
    "OrderID": 74508,
    "CustomerID": 1397,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-02-25 00:00:00"
  },
  {
    "FeedbackID": "FB-70943",
    "OrderID": 70943,
    "CustomerID": 1149,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-14 00:00:00"
  },
  {
    "FeedbackID": "FB-70344",
    "OrderID": 70344,
    "CustomerID": 1568,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-07 00:00:00"
  },
  {
    "FeedbackID": "FB-74591",
    "OrderID": 74591,
    "CustomerID": 1129,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-09-22 00:00:00"
  },
  {
    "FeedbackID": "FB-73456",
    "OrderID": 73456,
    "CustomerID": 1513,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-05 00:00:00"
  },
  {
    "FeedbackID": "FB-72768",
    "OrderID": 72768,
    "CustomerID": 1268,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-13 00:00:00"
  },
  {
    "FeedbackID": "FB-70241",
    "OrderID": 70241,
    "CustomerID": 1071,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-03-14 00:00:00"
  },
  {
    "FeedbackID": "FB-76646",
    "OrderID": 76646,
    "CustomerID": 1159,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-75161",
    "OrderID": 75161,
    "CustomerID": 1073,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-05-18 00:00:00"
  },
  {
    "FeedbackID": "FB-70203",
    "OrderID": 70203,
    "CustomerID": 1484,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-11-15 00:00:00"
  },
  {
    "FeedbackID": "FB-71868",
    "OrderID": 71868,
    "CustomerID": 1358,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76034",
    "OrderID": 76034,
    "CustomerID": 1486,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-18 00:00:00"
  },
  {
    "FeedbackID": "FB-77867",
    "OrderID": 77867,
    "CustomerID": 1553,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-30 00:00:00"
  },
  {
    "FeedbackID": "FB-71060",
    "OrderID": 71060,
    "CustomerID": 1281,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-02-01 00:00:00"
  },
  {
    "FeedbackID": "FB-77489",
    "OrderID": 77489,
    "CustomerID": 1486,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72548",
    "OrderID": 72548,
    "CustomerID": 1122,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-78596",
    "OrderID": 78596,
    "CustomerID": 1405,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74097",
    "OrderID": 74097,
    "CustomerID": 1415,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74743",
    "OrderID": 74743,
    "CustomerID": 1362,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-31 00:00:00"
  },
  {
    "FeedbackID": "FB-77879",
    "OrderID": 77879,
    "CustomerID": 1433,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-05-27 00:00:00"
  },
  {
    "FeedbackID": "FB-77195",
    "OrderID": 77195,
    "CustomerID": 1308,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-05-10 00:00:00"
  },
  {
    "FeedbackID": "FB-73819",
    "OrderID": 73819,
    "CustomerID": 1343,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-20 00:00:00"
  },
  {
    "FeedbackID": "FB-72619",
    "OrderID": 72619,
    "CustomerID": 1005,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-70210",
    "OrderID": 70210,
    "CustomerID": 1353,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-06 00:00:00"
  },
  {
    "FeedbackID": "FB-77055",
    "OrderID": 77055,
    "CustomerID": 1402,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-70942",
    "OrderID": 70942,
    "CustomerID": 1051,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-08 00:00:00"
  },
  {
    "FeedbackID": "FB-76050",
    "OrderID": 76050,
    "CustomerID": 1131,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-12-11 00:00:00"
  },
  {
    "FeedbackID": "FB-74242",
    "OrderID": 74242,
    "CustomerID": 1372,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-10-07 00:00:00"
  },
  {
    "FeedbackID": "FB-71731",
    "OrderID": 71731,
    "CustomerID": 1097,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-20 00:00:00"
  },
  {
    "FeedbackID": "FB-71206",
    "OrderID": 71206,
    "CustomerID": 1456,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-26 00:00:00"
  },
  {
    "FeedbackID": "FB-73671",
    "OrderID": 73671,
    "CustomerID": 1004,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-29 00:00:00"
  },
  {
    "FeedbackID": "FB-78556",
    "OrderID": 78556,
    "CustomerID": 1066,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-03-08 00:00:00"
  },
  {
    "FeedbackID": "FB-74243",
    "OrderID": 74243,
    "CustomerID": 1550,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-10 00:00:00"
  },
  {
    "FeedbackID": "FB-76471",
    "OrderID": 76471,
    "CustomerID": 1485,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-11-12 00:00:00"
  },
  {
    "FeedbackID": "FB-76917",
    "OrderID": 76917,
    "CustomerID": 1169,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-16 00:00:00"
  },
  {
    "FeedbackID": "FB-78979",
    "OrderID": 78979,
    "CustomerID": 1233,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-28 00:00:00"
  },
  {
    "FeedbackID": "FB-72780",
    "OrderID": 72780,
    "CustomerID": 1433,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-07-06 00:00:00"
  },
  {
    "FeedbackID": "FB-77850",
    "OrderID": 77850,
    "CustomerID": 1588,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-12 00:00:00"
  },
  {
    "FeedbackID": "FB-78387",
    "OrderID": 78387,
    "CustomerID": 1534,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-24 00:00:00"
  },
  {
    "FeedbackID": "FB-73789",
    "OrderID": 73789,
    "CustomerID": 1569,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-05 00:00:00"
  },
  {
    "FeedbackID": "FB-78371",
    "OrderID": 78371,
    "CustomerID": 1062,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-06 00:00:00"
  },
  {
    "FeedbackID": "FB-74510",
    "OrderID": 74510,
    "CustomerID": 1345,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-02-10 00:00:00"
  },
  {
    "FeedbackID": "FB-74577",
    "OrderID": 74577,
    "CustomerID": 1159,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-02-02 00:00:00"
  },
  {
    "FeedbackID": "FB-76056",
    "OrderID": 76056,
    "CustomerID": 1184,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72354",
    "OrderID": 72354,
    "CustomerID": 1097,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-11-15 00:00:00"
  },
  {
    "FeedbackID": "FB-78255",
    "OrderID": 78255,
    "CustomerID": 1381,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-05-08 00:00:00"
  },
  {
    "FeedbackID": "FB-78970",
    "OrderID": 78970,
    "CustomerID": 1126,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-07-30 00:00:00"
  },
  {
    "FeedbackID": "FB-70555",
    "OrderID": 70555,
    "CustomerID": 1527,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-07 00:00:00"
  },
  {
    "FeedbackID": "FB-77553",
    "OrderID": 77553,
    "CustomerID": 1183,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-10-08 00:00:00"
  },
  {
    "FeedbackID": "FB-76854",
    "OrderID": 76854,
    "CustomerID": 1479,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-01-14 00:00:00"
  },
  {
    "FeedbackID": "FB-77453",
    "OrderID": 77453,
    "CustomerID": 1077,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-02-27 00:00:00"
  },
  {
    "FeedbackID": "FB-72247",
    "OrderID": 72247,
    "CustomerID": 1375,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-07-23 00:00:00"
  },
  {
    "FeedbackID": "FB-71397",
    "OrderID": 71397,
    "CustomerID": 1076,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-12-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75958",
    "OrderID": 75958,
    "CustomerID": 1253,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-15 00:00:00"
  },
  {
    "FeedbackID": "FB-77425",
    "OrderID": 77425,
    "CustomerID": 1577,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-10 00:00:00"
  },
  {
    "FeedbackID": "FB-75687",
    "OrderID": 75687,
    "CustomerID": 1012,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-15 00:00:00"
  },
  {
    "FeedbackID": "FB-76304",
    "OrderID": 76304,
    "CustomerID": 1246,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-06-16 00:00:00"
  },
  {
    "FeedbackID": "FB-77222",
    "OrderID": 77222,
    "CustomerID": 1144,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-10 00:00:00"
  },
  {
    "FeedbackID": "FB-76656",
    "OrderID": 76656,
    "CustomerID": 1426,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73873",
    "OrderID": 73873,
    "CustomerID": 1397,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72190",
    "OrderID": 72190,
    "CustomerID": 1125,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-20 00:00:00"
  },
  {
    "FeedbackID": "FB-72856",
    "OrderID": 72856,
    "CustomerID": 1004,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-13 00:00:00"
  },
  {
    "FeedbackID": "FB-76801",
    "OrderID": 76801,
    "CustomerID": 1404,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-02-21 00:00:00"
  },
  {
    "FeedbackID": "FB-71990",
    "OrderID": 71990,
    "CustomerID": 1369,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-07-24 00:00:00"
  },
  {
    "FeedbackID": "FB-76450",
    "OrderID": 76450,
    "CustomerID": 1024,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-12 00:00:00"
  },
  {
    "FeedbackID": "FB-75905",
    "OrderID": 75905,
    "CustomerID": 1377,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72927",
    "OrderID": 72927,
    "CustomerID": 1394,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-10-16 00:00:00"
  },
  {
    "FeedbackID": "FB-70938",
    "OrderID": 70938,
    "CustomerID": 1415,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-24 00:00:00"
  },
  {
    "FeedbackID": "FB-74019",
    "OrderID": 74019,
    "CustomerID": 1398,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-06-06 00:00:00"
  },
  {
    "FeedbackID": "FB-75708",
    "OrderID": 75708,
    "CustomerID": 1086,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-02-19 00:00:00"
  },
  {
    "FeedbackID": "FB-76215",
    "OrderID": 76215,
    "CustomerID": 1100,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-15 00:00:00"
  },
  {
    "FeedbackID": "FB-72782",
    "OrderID": 72782,
    "CustomerID": 1451,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-16 00:00:00"
  },
  {
    "FeedbackID": "FB-76627",
    "OrderID": 76627,
    "CustomerID": 1482,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-25 00:00:00"
  },
  {
    "FeedbackID": "FB-78950",
    "OrderID": 78950,
    "CustomerID": 1302,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-09-09 00:00:00"
  },
  {
    "FeedbackID": "FB-71471",
    "OrderID": 71471,
    "CustomerID": 1297,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-19 00:00:00"
  },
  {
    "FeedbackID": "FB-73798",
    "OrderID": 73798,
    "CustomerID": 1353,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-08-05 00:00:00"
  },
  {
    "FeedbackID": "FB-71498",
    "OrderID": 71498,
    "CustomerID": 1422,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-24 00:00:00"
  },
  {
    "FeedbackID": "FB-75092",
    "OrderID": 75092,
    "CustomerID": 1453,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-05-06 00:00:00"
  },
  {
    "FeedbackID": "FB-72052",
    "OrderID": 72052,
    "CustomerID": 1494,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-15 00:00:00"
  },
  {
    "FeedbackID": "FB-77276",
    "OrderID": 77276,
    "CustomerID": 1004,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-09-05 00:00:00"
  },
  {
    "FeedbackID": "FB-74839",
    "OrderID": 74839,
    "CustomerID": 1511,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73033",
    "OrderID": 73033,
    "CustomerID": 1336,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-76169",
    "OrderID": 76169,
    "CustomerID": 1338,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-29 00:00:00"
  },
  {
    "FeedbackID": "FB-77423",
    "OrderID": 77423,
    "CustomerID": 1501,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-07-09 00:00:00"
  },
  {
    "FeedbackID": "FB-77583",
    "OrderID": 77583,
    "CustomerID": 1288,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-03-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78512",
    "OrderID": 78512,
    "CustomerID": 1542,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-04-09 00:00:00"
  },
  {
    "FeedbackID": "FB-70885",
    "OrderID": 70885,
    "CustomerID": 1599,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77937",
    "OrderID": 77937,
    "CustomerID": 1237,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-06 00:00:00"
  },
  {
    "FeedbackID": "FB-71658",
    "OrderID": 71658,
    "CustomerID": 1352,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-14 00:00:00"
  },
  {
    "FeedbackID": "FB-75422",
    "OrderID": 75422,
    "CustomerID": 1362,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-05-29 00:00:00"
  },
  {
    "FeedbackID": "FB-72635",
    "OrderID": 72635,
    "CustomerID": 1154,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-09 00:00:00"
  },
  {
    "FeedbackID": "FB-74418",
    "OrderID": 74418,
    "CustomerID": 1529,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-03-27 00:00:00"
  },
  {
    "FeedbackID": "FB-77282",
    "OrderID": 77282,
    "CustomerID": 1221,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-77028",
    "OrderID": 77028,
    "CustomerID": 1062,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-77919",
    "OrderID": 77919,
    "CustomerID": 1217,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-02-16 00:00:00"
  },
  {
    "FeedbackID": "FB-73084",
    "OrderID": 73084,
    "CustomerID": 1092,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-07-01 00:00:00"
  },
  {
    "FeedbackID": "FB-78712",
    "OrderID": 78712,
    "CustomerID": 1053,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-09-09 00:00:00"
  },
  {
    "FeedbackID": "FB-70328",
    "OrderID": 70328,
    "CustomerID": 1543,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-11 00:00:00"
  },
  {
    "FeedbackID": "FB-76442",
    "OrderID": 76442,
    "CustomerID": 1067,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-02 00:00:00"
  },
  {
    "FeedbackID": "FB-70751",
    "OrderID": 70751,
    "CustomerID": 1087,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-76823",
    "OrderID": 76823,
    "CustomerID": 1022,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-06-26 00:00:00"
  },
  {
    "FeedbackID": "FB-75678",
    "OrderID": 75678,
    "CustomerID": 1095,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-75991",
    "OrderID": 75991,
    "CustomerID": 1388,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-04-25 00:00:00"
  },
  {
    "FeedbackID": "FB-77097",
    "OrderID": 77097,
    "CustomerID": 1253,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-12 00:00:00"
  },
  {
    "FeedbackID": "FB-72744",
    "OrderID": 72744,
    "CustomerID": 1328,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-09-10 00:00:00"
  },
  {
    "FeedbackID": "FB-73607",
    "OrderID": 73607,
    "CustomerID": 1029,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-05 00:00:00"
  },
  {
    "FeedbackID": "FB-70042",
    "OrderID": 70042,
    "CustomerID": 1138,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-04-28 00:00:00"
  },
  {
    "FeedbackID": "FB-71113",
    "OrderID": 71113,
    "CustomerID": 1558,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-04-14 00:00:00"
  },
  {
    "FeedbackID": "FB-73007",
    "OrderID": 73007,
    "CustomerID": 1567,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-07-31 00:00:00"
  },
  {
    "FeedbackID": "FB-70071",
    "OrderID": 70071,
    "CustomerID": 1548,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-16 00:00:00"
  },
  {
    "FeedbackID": "FB-75841",
    "OrderID": 75841,
    "CustomerID": 1529,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-24 00:00:00"
  },
  {
    "FeedbackID": "FB-78464",
    "OrderID": 78464,
    "CustomerID": 1409,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-06 00:00:00"
  },
  {
    "FeedbackID": "FB-76320",
    "OrderID": 76320,
    "CustomerID": 1586,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-08-28 00:00:00"
  },
  {
    "FeedbackID": "FB-71921",
    "OrderID": 71921,
    "CustomerID": 1207,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-77836",
    "OrderID": 77836,
    "CustomerID": 1156,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-01-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72981",
    "OrderID": 72981,
    "CustomerID": 1425,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-11-25 00:00:00"
  },
  {
    "FeedbackID": "FB-76317",
    "OrderID": 76317,
    "CustomerID": 1185,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72704",
    "OrderID": 72704,
    "CustomerID": 1568,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-22 00:00:00"
  },
  {
    "FeedbackID": "FB-76330",
    "OrderID": 76330,
    "CustomerID": 1505,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-08-12 00:00:00"
  },
  {
    "FeedbackID": "FB-71982",
    "OrderID": 71982,
    "CustomerID": 1336,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-01-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72962",
    "OrderID": 72962,
    "CustomerID": 1115,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73796",
    "OrderID": 73796,
    "CustomerID": 1396,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-09 00:00:00"
  },
  {
    "FeedbackID": "FB-74539",
    "OrderID": 74539,
    "CustomerID": 1101,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-77582",
    "OrderID": 77582,
    "CustomerID": 1190,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-11-12 00:00:00"
  },
  {
    "FeedbackID": "FB-76601",
    "OrderID": 76601,
    "CustomerID": 1391,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-05 00:00:00"
  },
  {
    "FeedbackID": "FB-71096",
    "OrderID": 71096,
    "CustomerID": 1583,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-04 00:00:00"
  },
  {
    "FeedbackID": "FB-71330",
    "OrderID": 71330,
    "CustomerID": 1409,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72758",
    "OrderID": 72758,
    "CustomerID": 1191,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-18 00:00:00"
  },
  {
    "FeedbackID": "FB-70654",
    "OrderID": 70654,
    "CustomerID": 1135,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-24 00:00:00"
  },
  {
    "FeedbackID": "FB-77743",
    "OrderID": 77743,
    "CustomerID": 1533,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-09 00:00:00"
  },
  {
    "FeedbackID": "FB-77430",
    "OrderID": 77430,
    "CustomerID": 1334,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-08-04 00:00:00"
  },
  {
    "FeedbackID": "FB-73571",
    "OrderID": 73571,
    "CustomerID": 1071,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-16 00:00:00"
  },
  {
    "FeedbackID": "FB-73952",
    "OrderID": 73952,
    "CustomerID": 1235,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-21 00:00:00"
  },
  {
    "FeedbackID": "FB-78336",
    "OrderID": 78336,
    "CustomerID": 1426,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-10-14 00:00:00"
  },
  {
    "FeedbackID": "FB-77896",
    "OrderID": 77896,
    "CustomerID": 1103,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-10-14 00:00:00"
  },
  {
    "FeedbackID": "FB-78123",
    "OrderID": 78123,
    "CustomerID": 1384,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-10 00:00:00"
  },
  {
    "FeedbackID": "FB-76629",
    "OrderID": 76629,
    "CustomerID": 1297,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-21 00:00:00"
  },
  {
    "FeedbackID": "FB-76411",
    "OrderID": 76411,
    "CustomerID": 1247,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-76468",
    "OrderID": 76468,
    "CustomerID": 1048,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-29 00:00:00"
  },
  {
    "FeedbackID": "FB-78783",
    "OrderID": 78783,
    "CustomerID": 1025,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-09 00:00:00"
  },
  {
    "FeedbackID": "FB-72427",
    "OrderID": 72427,
    "CustomerID": 1259,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73342",
    "OrderID": 73342,
    "CustomerID": 1349,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-17 00:00:00"
  },
  {
    "FeedbackID": "FB-77898",
    "OrderID": 77898,
    "CustomerID": 1092,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-05-08 00:00:00"
  },
  {
    "FeedbackID": "FB-73511",
    "OrderID": 73511,
    "CustomerID": 1100,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-09 00:00:00"
  },
  {
    "FeedbackID": "FB-75365",
    "OrderID": 75365,
    "CustomerID": 1179,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-01-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73124",
    "OrderID": 73124,
    "CustomerID": 1187,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-02-12 00:00:00"
  },
  {
    "FeedbackID": "FB-78092",
    "OrderID": 78092,
    "CustomerID": 1505,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-08-26 00:00:00"
  },
  {
    "FeedbackID": "FB-74752",
    "OrderID": 74752,
    "CustomerID": 1094,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-06 00:00:00"
  },
  {
    "FeedbackID": "FB-75961",
    "OrderID": 75961,
    "CustomerID": 1172,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-14 00:00:00"
  },
  {
    "FeedbackID": "FB-72229",
    "OrderID": 72229,
    "CustomerID": 1472,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-05 00:00:00"
  },
  {
    "FeedbackID": "FB-72640",
    "OrderID": 72640,
    "CustomerID": 1232,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-08 00:00:00"
  },
  {
    "FeedbackID": "FB-70841",
    "OrderID": 70841,
    "CustomerID": 1548,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-03-21 00:00:00"
  },
  {
    "FeedbackID": "FB-74086",
    "OrderID": 74086,
    "CustomerID": 1388,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72308",
    "OrderID": 72308,
    "CustomerID": 1563,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-27 00:00:00"
  },
  {
    "FeedbackID": "FB-71236",
    "OrderID": 71236,
    "CustomerID": 1598,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-26 00:00:00"
  },
  {
    "FeedbackID": "FB-77758",
    "OrderID": 77758,
    "CustomerID": 1153,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-24 00:00:00"
  },
  {
    "FeedbackID": "FB-75358",
    "OrderID": 75358,
    "CustomerID": 1016,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-07-07 00:00:00"
  },
  {
    "FeedbackID": "FB-73548",
    "OrderID": 73548,
    "CustomerID": 1396,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-01-07 00:00:00"
  },
  {
    "FeedbackID": "FB-71746",
    "OrderID": 71746,
    "CustomerID": 1182,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-26 00:00:00"
  },
  {
    "FeedbackID": "FB-76965",
    "OrderID": 76965,
    "CustomerID": 1417,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-01-23 00:00:00"
  },
  {
    "FeedbackID": "FB-71811",
    "OrderID": 71811,
    "CustomerID": 1505,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72814",
    "OrderID": 72814,
    "CustomerID": 1418,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73601",
    "OrderID": 73601,
    "CustomerID": 1388,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78100",
    "OrderID": 78100,
    "CustomerID": 1006,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-03-03 00:00:00"
  },
  {
    "FeedbackID": "FB-71957",
    "OrderID": 71957,
    "CustomerID": 1087,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-01 00:00:00"
  },
  {
    "FeedbackID": "FB-74910",
    "OrderID": 74910,
    "CustomerID": 1559,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-11 00:00:00"
  },
  {
    "FeedbackID": "FB-74299",
    "OrderID": 74299,
    "CustomerID": 1363,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-01-17 00:00:00"
  },
  {
    "FeedbackID": "FB-76654",
    "OrderID": 76654,
    "CustomerID": 1243,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-18 00:00:00"
  },
  {
    "FeedbackID": "FB-78227",
    "OrderID": 78227,
    "CustomerID": 1135,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-07-11 00:00:00"
  },
  {
    "FeedbackID": "FB-77054",
    "OrderID": 77054,
    "CustomerID": 1314,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-30 00:00:00"
  },
  {
    "FeedbackID": "FB-77247",
    "OrderID": 77247,
    "CustomerID": 1579,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-03-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77240",
    "OrderID": 77240,
    "CustomerID": 1237,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-72398",
    "OrderID": 72398,
    "CustomerID": 1513,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-17 00:00:00"
  },
  {
    "FeedbackID": "FB-78857",
    "OrderID": 78857,
    "CustomerID": 1465,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-09-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72260",
    "OrderID": 72260,
    "CustomerID": 1174,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-22 00:00:00"
  },
  {
    "FeedbackID": "FB-74906",
    "OrderID": 74906,
    "CustomerID": 1109,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-06-23 00:00:00"
  },
  {
    "FeedbackID": "FB-72569",
    "OrderID": 72569,
    "CustomerID": 1335,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-09-10 00:00:00"
  },
  {
    "FeedbackID": "FB-77038",
    "OrderID": 77038,
    "CustomerID": 1543,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-07 00:00:00"
  },
  {
    "FeedbackID": "FB-78690",
    "OrderID": 78690,
    "CustomerID": 1591,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72037",
    "OrderID": 72037,
    "CustomerID": 1413,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73722",
    "OrderID": 73722,
    "CustomerID": 1133,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-08-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73481",
    "OrderID": 73481,
    "CustomerID": 1102,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-09-12 00:00:00"
  },
  {
    "FeedbackID": "FB-74338",
    "OrderID": 74338,
    "CustomerID": 1139,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72904",
    "OrderID": 72904,
    "CustomerID": 1574,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-12 00:00:00"
  },
  {
    "FeedbackID": "FB-74230",
    "OrderID": 74230,
    "CustomerID": 1371,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-01-09 00:00:00"
  },
  {
    "FeedbackID": "FB-77353",
    "OrderID": 77353,
    "CustomerID": 1040,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-30 00:00:00"
  },
  {
    "FeedbackID": "FB-71271",
    "OrderID": 71271,
    "CustomerID": 1124,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-06-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78324",
    "OrderID": 78324,
    "CustomerID": 1275,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-12 00:00:00"
  },
  {
    "FeedbackID": "FB-78682",
    "OrderID": 78682,
    "CustomerID": 1340,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-03-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74571",
    "OrderID": 74571,
    "CustomerID": 1285,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-02-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73533",
    "OrderID": 73533,
    "CustomerID": 1118,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-02-14 00:00:00"
  },
  {
    "FeedbackID": "FB-74632",
    "OrderID": 74632,
    "CustomerID": 1431,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71557",
    "OrderID": 71557,
    "CustomerID": 1317,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-15 00:00:00"
  },
  {
    "FeedbackID": "FB-73037",
    "OrderID": 73037,
    "CustomerID": 1128,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-27 00:00:00"
  },
  {
    "FeedbackID": "FB-73869",
    "OrderID": 73869,
    "CustomerID": 1120,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-22 00:00:00"
  },
  {
    "FeedbackID": "FB-73064",
    "OrderID": 73064,
    "CustomerID": 1481,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-08-05 00:00:00"
  },
  {
    "FeedbackID": "FB-74216",
    "OrderID": 74216,
    "CustomerID": 1232,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-05-09 00:00:00"
  },
  {
    "FeedbackID": "FB-78497",
    "OrderID": 78497,
    "CustomerID": 1011,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-08-12 00:00:00"
  },
  {
    "FeedbackID": "FB-77080",
    "OrderID": 77080,
    "CustomerID": 1533,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-10-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71566",
    "OrderID": 71566,
    "CustomerID": 1448,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-70113",
    "OrderID": 70113,
    "CustomerID": 1392,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-29 00:00:00"
  },
  {
    "FeedbackID": "FB-71551",
    "OrderID": 71551,
    "CustomerID": 1512,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-10 00:00:00"
  },
  {
    "FeedbackID": "FB-78713",
    "OrderID": 78713,
    "CustomerID": 1286,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-08-22 00:00:00"
  },
  {
    "FeedbackID": "FB-76421",
    "OrderID": 76421,
    "CustomerID": 1139,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-78660",
    "OrderID": 78660,
    "CustomerID": 1139,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-30 00:00:00"
  },
  {
    "FeedbackID": "FB-75015",
    "OrderID": 75015,
    "CustomerID": 1148,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-10-17 00:00:00"
  },
  {
    "FeedbackID": "FB-75973",
    "OrderID": 75973,
    "CustomerID": 1567,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-06-19 00:00:00"
  },
  {
    "FeedbackID": "FB-76243",
    "OrderID": 76243,
    "CustomerID": 1327,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-03-28 00:00:00"
  },
  {
    "FeedbackID": "FB-78585",
    "OrderID": 78585,
    "CustomerID": 1171,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-01-25 00:00:00"
  },
  {
    "FeedbackID": "FB-74205",
    "OrderID": 74205,
    "CustomerID": 1371,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-06-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72445",
    "OrderID": 72445,
    "CustomerID": 1331,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-05-23 00:00:00"
  },
  {
    "FeedbackID": "FB-75003",
    "OrderID": 75003,
    "CustomerID": 1578,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74874",
    "OrderID": 74874,
    "CustomerID": 1133,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75814",
    "OrderID": 75814,
    "CustomerID": 1486,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-73286",
    "OrderID": 73286,
    "CustomerID": 1380,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-20 00:00:00"
  },
  {
    "FeedbackID": "FB-76135",
    "OrderID": 76135,
    "CustomerID": 1576,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-05-16 00:00:00"
  },
  {
    "FeedbackID": "FB-76150",
    "OrderID": 76150,
    "CustomerID": 1529,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-07 00:00:00"
  },
  {
    "FeedbackID": "FB-76322",
    "OrderID": 76322,
    "CustomerID": 1249,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-23 00:00:00"
  },
  {
    "FeedbackID": "FB-74228",
    "OrderID": 74228,
    "CustomerID": 1224,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-10-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78175",
    "OrderID": 78175,
    "CustomerID": 1560,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-04-17 00:00:00"
  },
  {
    "FeedbackID": "FB-72485",
    "OrderID": 72485,
    "CustomerID": 1570,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-05-11 00:00:00"
  },
  {
    "FeedbackID": "FB-71853",
    "OrderID": 71853,
    "CustomerID": 1218,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-18 00:00:00"
  },
  {
    "FeedbackID": "FB-76101",
    "OrderID": 76101,
    "CustomerID": 1367,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-06-30 00:00:00"
  },
  {
    "FeedbackID": "FB-72656",
    "OrderID": 72656,
    "CustomerID": 1028,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72954",
    "OrderID": 72954,
    "CustomerID": 1126,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-06-28 00:00:00"
  },
  {
    "FeedbackID": "FB-75451",
    "OrderID": 75451,
    "CustomerID": 1048,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-09-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72377",
    "OrderID": 72377,
    "CustomerID": 1082,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-01-26 00:00:00"
  },
  {
    "FeedbackID": "FB-73927",
    "OrderID": 73927,
    "CustomerID": 1333,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-05-02 00:00:00"
  },
  {
    "FeedbackID": "FB-73001",
    "OrderID": 73001,
    "CustomerID": 1245,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-12 00:00:00"
  },
  {
    "FeedbackID": "FB-70458",
    "OrderID": 70458,
    "CustomerID": 1031,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-19 00:00:00"
  },
  {
    "FeedbackID": "FB-74620",
    "OrderID": 74620,
    "CustomerID": 1390,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-14 00:00:00"
  },
  {
    "FeedbackID": "FB-70055",
    "OrderID": 70055,
    "CustomerID": 1314,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-30 00:00:00"
  },
  {
    "FeedbackID": "FB-72740",
    "OrderID": 72740,
    "CustomerID": 1320,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-29 00:00:00"
  },
  {
    "FeedbackID": "FB-74674",
    "OrderID": 74674,
    "CustomerID": 1012,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73065",
    "OrderID": 73065,
    "CustomerID": 1092,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-09 00:00:00"
  },
  {
    "FeedbackID": "FB-71925",
    "OrderID": 71925,
    "CustomerID": 1556,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-25 00:00:00"
  },
  {
    "FeedbackID": "FB-74001",
    "OrderID": 74001,
    "CustomerID": 1127,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-02-19 00:00:00"
  },
  {
    "FeedbackID": "FB-77614",
    "OrderID": 77614,
    "CustomerID": 1004,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-04 00:00:00"
  },
  {
    "FeedbackID": "FB-75024",
    "OrderID": 75024,
    "CustomerID": 1217,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-02-15 00:00:00"
  },
  {
    "FeedbackID": "FB-73665",
    "OrderID": 73665,
    "CustomerID": 1401,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-17 00:00:00"
  },
  {
    "FeedbackID": "FB-74489",
    "OrderID": 74489,
    "CustomerID": 1441,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-29 00:00:00"
  },
  {
    "FeedbackID": "FB-74801",
    "OrderID": 74801,
    "CustomerID": 1313,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78548",
    "OrderID": 78548,
    "CustomerID": 1150,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-25 00:00:00"
  },
  {
    "FeedbackID": "FB-73028",
    "OrderID": 73028,
    "CustomerID": 1268,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-12-29 00:00:00"
  },
  {
    "FeedbackID": "FB-75090",
    "OrderID": 75090,
    "CustomerID": 1034,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-05-29 00:00:00"
  },
  {
    "FeedbackID": "FB-75200",
    "OrderID": 75200,
    "CustomerID": 1069,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-09-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75780",
    "OrderID": 75780,
    "CustomerID": 1389,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-16 00:00:00"
  },
  {
    "FeedbackID": "FB-75995",
    "OrderID": 75995,
    "CustomerID": 1416,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-02 00:00:00"
  },
  {
    "FeedbackID": "FB-70192",
    "OrderID": 70192,
    "CustomerID": 1218,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-28 00:00:00"
  },
  {
    "FeedbackID": "FB-70535",
    "OrderID": 70535,
    "CustomerID": 1229,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-23 00:00:00"
  },
  {
    "FeedbackID": "FB-76523",
    "OrderID": 76523,
    "CustomerID": 1165,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72916",
    "OrderID": 72916,
    "CustomerID": 1493,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-21 00:00:00"
  },
  {
    "FeedbackID": "FB-73703",
    "OrderID": 73703,
    "CustomerID": 1558,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-70659",
    "OrderID": 70659,
    "CustomerID": 1026,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-14 00:00:00"
  },
  {
    "FeedbackID": "FB-77484",
    "OrderID": 77484,
    "CustomerID": 1354,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-26 00:00:00"
  },
  {
    "FeedbackID": "FB-72710",
    "OrderID": 72710,
    "CustomerID": 1330,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-01-12 00:00:00"
  },
  {
    "FeedbackID": "FB-77915",
    "OrderID": 77915,
    "CustomerID": 1071,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-16 00:00:00"
  },
  {
    "FeedbackID": "FB-71872",
    "OrderID": 71872,
    "CustomerID": 1129,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-05-27 00:00:00"
  },
  {
    "FeedbackID": "FB-74279",
    "OrderID": 74279,
    "CustomerID": 1081,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-21 00:00:00"
  },
  {
    "FeedbackID": "FB-71150",
    "OrderID": 71150,
    "CustomerID": 1203,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-25 00:00:00"
  },
  {
    "FeedbackID": "FB-74465",
    "OrderID": 74465,
    "CustomerID": 1576,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-75357",
    "OrderID": 75357,
    "CustomerID": 1314,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-14 00:00:00"
  },
  {
    "FeedbackID": "FB-72168",
    "OrderID": 72168,
    "CustomerID": 1165,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-09-02 00:00:00"
  },
  {
    "FeedbackID": "FB-76702",
    "OrderID": 76702,
    "CustomerID": 1477,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-05-24 00:00:00"
  },
  {
    "FeedbackID": "FB-71909",
    "OrderID": 71909,
    "CustomerID": 1346,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-28 00:00:00"
  },
  {
    "FeedbackID": "FB-72968",
    "OrderID": 72968,
    "CustomerID": 1021,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-08 00:00:00"
  },
  {
    "FeedbackID": "FB-70845",
    "OrderID": 70845,
    "CustomerID": 1046,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-13 00:00:00"
  },
  {
    "FeedbackID": "FB-77924",
    "OrderID": 77924,
    "CustomerID": 1388,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-71960",
    "OrderID": 71960,
    "CustomerID": 1015,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-03-18 00:00:00"
  },
  {
    "FeedbackID": "FB-70341",
    "OrderID": 70341,
    "CustomerID": 1146,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-09-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77733",
    "OrderID": 77733,
    "CustomerID": 1563,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-11-15 00:00:00"
  },
  {
    "FeedbackID": "FB-74876",
    "OrderID": 74876,
    "CustomerID": 1389,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-09 00:00:00"
  },
  {
    "FeedbackID": "FB-73247",
    "OrderID": 73247,
    "CustomerID": 1057,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74691",
    "OrderID": 74691,
    "CustomerID": 1026,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-75715",
    "OrderID": 75715,
    "CustomerID": 1483,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-04 00:00:00"
  },
  {
    "FeedbackID": "FB-78323",
    "OrderID": 78323,
    "CustomerID": 1256,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72403",
    "OrderID": 72403,
    "CustomerID": 1019,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-25 00:00:00"
  },
  {
    "FeedbackID": "FB-77321",
    "OrderID": 77321,
    "CustomerID": 1347,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-12-29 00:00:00"
  },
  {
    "FeedbackID": "FB-71088",
    "OrderID": 71088,
    "CustomerID": 1304,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-16 00:00:00"
  },
  {
    "FeedbackID": "FB-74164",
    "OrderID": 74164,
    "CustomerID": 1440,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-16 00:00:00"
  },
  {
    "FeedbackID": "FB-70524",
    "OrderID": 70524,
    "CustomerID": 1381,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-05 00:00:00"
  },
  {
    "FeedbackID": "FB-73463",
    "OrderID": 73463,
    "CustomerID": 1257,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-03-15 00:00:00"
  },
  {
    "FeedbackID": "FB-75514",
    "OrderID": 75514,
    "CustomerID": 1012,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-08 00:00:00"
  },
  {
    "FeedbackID": "FB-71733",
    "OrderID": 71733,
    "CustomerID": 1534,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-01 00:00:00"
  },
  {
    "FeedbackID": "FB-78916",
    "OrderID": 78916,
    "CustomerID": 1568,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74542",
    "OrderID": 74542,
    "CustomerID": 1026,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-09-09 00:00:00"
  },
  {
    "FeedbackID": "FB-74474",
    "OrderID": 74474,
    "CustomerID": 1463,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-12 00:00:00"
  },
  {
    "FeedbackID": "FB-76782",
    "OrderID": 76782,
    "CustomerID": 1385,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-10-12 00:00:00"
  },
  {
    "FeedbackID": "FB-72577",
    "OrderID": 72577,
    "CustomerID": 1376,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-02-20 00:00:00"
  },
  {
    "FeedbackID": "FB-70514",
    "OrderID": 70514,
    "CustomerID": 1353,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-03 00:00:00"
  },
  {
    "FeedbackID": "FB-78101",
    "OrderID": 78101,
    "CustomerID": 1392,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-05-22 00:00:00"
  },
  {
    "FeedbackID": "FB-75152",
    "OrderID": 75152,
    "CustomerID": 1318,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-27 00:00:00"
  },
  {
    "FeedbackID": "FB-75404",
    "OrderID": 75404,
    "CustomerID": 1264,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-19 00:00:00"
  },
  {
    "FeedbackID": "FB-75233",
    "OrderID": 75233,
    "CustomerID": 1487,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-03-01 00:00:00"
  },
  {
    "FeedbackID": "FB-70294",
    "OrderID": 70294,
    "CustomerID": 1558,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-12 00:00:00"
  },
  {
    "FeedbackID": "FB-70589",
    "OrderID": 70589,
    "CustomerID": 1007,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-05-31 00:00:00"
  },
  {
    "FeedbackID": "FB-71680",
    "OrderID": 71680,
    "CustomerID": 1465,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-28 00:00:00"
  },
  {
    "FeedbackID": "FB-77892",
    "OrderID": 77892,
    "CustomerID": 1064,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-71938",
    "OrderID": 71938,
    "CustomerID": 1503,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75271",
    "OrderID": 75271,
    "CustomerID": 1259,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-25 00:00:00"
  },
  {
    "FeedbackID": "FB-78496",
    "OrderID": 78496,
    "CustomerID": 1276,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-06-12 00:00:00"
  },
  {
    "FeedbackID": "FB-77182",
    "OrderID": 77182,
    "CustomerID": 1053,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-11-14 00:00:00"
  },
  {
    "FeedbackID": "FB-78438",
    "OrderID": 78438,
    "CustomerID": 1108,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-25 00:00:00"
  },
  {
    "FeedbackID": "FB-71759",
    "OrderID": 71759,
    "CustomerID": 1588,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-02 00:00:00"
  },
  {
    "FeedbackID": "FB-74623",
    "OrderID": 74623,
    "CustomerID": 1593,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-05-17 00:00:00"
  },
  {
    "FeedbackID": "FB-72233",
    "OrderID": 72233,
    "CustomerID": 1109,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-02-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73470",
    "OrderID": 73470,
    "CustomerID": 1245,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75681",
    "OrderID": 75681,
    "CustomerID": 1425,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-02-14 00:00:00"
  },
  {
    "FeedbackID": "FB-74679",
    "OrderID": 74679,
    "CustomerID": 1466,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-26 00:00:00"
  },
  {
    "FeedbackID": "FB-71924",
    "OrderID": 71924,
    "CustomerID": 1051,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-09 00:00:00"
  },
  {
    "FeedbackID": "FB-72124",
    "OrderID": 72124,
    "CustomerID": 1559,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-26 00:00:00"
  },
  {
    "FeedbackID": "FB-76084",
    "OrderID": 76084,
    "CustomerID": 1573,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-07 00:00:00"
  },
  {
    "FeedbackID": "FB-73022",
    "OrderID": 73022,
    "CustomerID": 1241,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-07-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76079",
    "OrderID": 76079,
    "CustomerID": 1173,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-04-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73635",
    "OrderID": 73635,
    "CustomerID": 1373,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-03-29 00:00:00"
  },
  {
    "FeedbackID": "FB-78218",
    "OrderID": 78218,
    "CustomerID": 1461,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-04 00:00:00"
  },
  {
    "FeedbackID": "FB-70265",
    "OrderID": 70265,
    "CustomerID": 1044,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-17 00:00:00"
  },
  {
    "FeedbackID": "FB-70417",
    "OrderID": 70417,
    "CustomerID": 1086,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-06 00:00:00"
  },
  {
    "FeedbackID": "FB-71995",
    "OrderID": 71995,
    "CustomerID": 1422,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-24 00:00:00"
  },
  {
    "FeedbackID": "FB-77576",
    "OrderID": 77576,
    "CustomerID": 1271,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-08 00:00:00"
  },
  {
    "FeedbackID": "FB-76127",
    "OrderID": 76127,
    "CustomerID": 1098,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-05-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76422",
    "OrderID": 76422,
    "CustomerID": 1007,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-04-09 00:00:00"
  },
  {
    "FeedbackID": "FB-73216",
    "OrderID": 73216,
    "CustomerID": 1515,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-09-07 00:00:00"
  },
  {
    "FeedbackID": "FB-74980",
    "OrderID": 74980,
    "CustomerID": 1595,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-14 00:00:00"
  },
  {
    "FeedbackID": "FB-70455",
    "OrderID": 70455,
    "CustomerID": 1476,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-10 00:00:00"
  },
  {
    "FeedbackID": "FB-78417",
    "OrderID": 78417,
    "CustomerID": 1496,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-26 00:00:00"
  },
  {
    "FeedbackID": "FB-70478",
    "OrderID": 70478,
    "CustomerID": 1449,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-30 00:00:00"
  },
  {
    "FeedbackID": "FB-78678",
    "OrderID": 78678,
    "CustomerID": 1522,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-06-28 00:00:00"
  },
  {
    "FeedbackID": "FB-71359",
    "OrderID": 71359,
    "CustomerID": 1568,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-08-25 00:00:00"
  },
  {
    "FeedbackID": "FB-75246",
    "OrderID": 75246,
    "CustomerID": 1498,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-02-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72745",
    "OrderID": 72745,
    "CustomerID": 1155,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-07-20 00:00:00"
  },
  {
    "FeedbackID": "FB-77766",
    "OrderID": 77766,
    "CustomerID": 1193,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-03 00:00:00"
  },
  {
    "FeedbackID": "FB-74633",
    "OrderID": 74633,
    "CustomerID": 1532,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-14 00:00:00"
  },
  {
    "FeedbackID": "FB-73823",
    "OrderID": 73823,
    "CustomerID": 1479,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-06-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72373",
    "OrderID": 72373,
    "CustomerID": 1152,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-04-24 00:00:00"
  },
  {
    "FeedbackID": "FB-75680",
    "OrderID": 75680,
    "CustomerID": 1110,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-14 00:00:00"
  },
  {
    "FeedbackID": "FB-78785",
    "OrderID": 78785,
    "CustomerID": 1233,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72167",
    "OrderID": 72167,
    "CustomerID": 1326,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-17 00:00:00"
  },
  {
    "FeedbackID": "FB-78610",
    "OrderID": 78610,
    "CustomerID": 1211,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-70988",
    "OrderID": 70988,
    "CustomerID": 1344,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-02-24 00:00:00"
  },
  {
    "FeedbackID": "FB-77628",
    "OrderID": 77628,
    "CustomerID": 1188,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-72689",
    "OrderID": 72689,
    "CustomerID": 1195,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-06 00:00:00"
  },
  {
    "FeedbackID": "FB-73505",
    "OrderID": 73505,
    "CustomerID": 1043,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-16 00:00:00"
  },
  {
    "FeedbackID": "FB-77109",
    "OrderID": 77109,
    "CustomerID": 1156,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-27 00:00:00"
  },
  {
    "FeedbackID": "FB-73891",
    "OrderID": 73891,
    "CustomerID": 1186,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-04-24 00:00:00"
  },
  {
    "FeedbackID": "FB-72604",
    "OrderID": 72604,
    "CustomerID": 1329,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-04-14 00:00:00"
  },
  {
    "FeedbackID": "FB-76332",
    "OrderID": 76332,
    "CustomerID": 1025,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-03-22 00:00:00"
  },
  {
    "FeedbackID": "FB-71690",
    "OrderID": 71690,
    "CustomerID": 1454,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-07 00:00:00"
  },
  {
    "FeedbackID": "FB-72145",
    "OrderID": 72145,
    "CustomerID": 1007,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-06-07 00:00:00"
  },
  {
    "FeedbackID": "FB-72107",
    "OrderID": 72107,
    "CustomerID": 1442,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-22 00:00:00"
  },
  {
    "FeedbackID": "FB-76815",
    "OrderID": 76815,
    "CustomerID": 1509,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-06-01 00:00:00"
  },
  {
    "FeedbackID": "FB-71013",
    "OrderID": 71013,
    "CustomerID": 1234,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-02-03 00:00:00"
  },
  {
    "FeedbackID": "FB-78600",
    "OrderID": 78600,
    "CustomerID": 1037,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-05-30 00:00:00"
  },
  {
    "FeedbackID": "FB-78257",
    "OrderID": 78257,
    "CustomerID": 1560,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77838",
    "OrderID": 77838,
    "CustomerID": 1135,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-13 00:00:00"
  },
  {
    "FeedbackID": "FB-72417",
    "OrderID": 72417,
    "CustomerID": 1425,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-01 00:00:00"
  },
  {
    "FeedbackID": "FB-71386",
    "OrderID": 71386,
    "CustomerID": 1205,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-28 00:00:00"
  },
  {
    "FeedbackID": "FB-77102",
    "OrderID": 77102,
    "CustomerID": 1122,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-71953",
    "OrderID": 71953,
    "CustomerID": 1301,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-03-28 00:00:00"
  },
  {
    "FeedbackID": "FB-78447",
    "OrderID": 78447,
    "CustomerID": 1149,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-07 00:00:00"
  },
  {
    "FeedbackID": "FB-72683",
    "OrderID": 72683,
    "CustomerID": 1493,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-21 00:00:00"
  },
  {
    "FeedbackID": "FB-74729",
    "OrderID": 74729,
    "CustomerID": 1083,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-06-08 00:00:00"
  },
  {
    "FeedbackID": "FB-77531",
    "OrderID": 77531,
    "CustomerID": 1107,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-03-03 00:00:00"
  },
  {
    "FeedbackID": "FB-76197",
    "OrderID": 76197,
    "CustomerID": 1284,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-77960",
    "OrderID": 77960,
    "CustomerID": 1305,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-04-14 00:00:00"
  },
  {
    "FeedbackID": "FB-77783",
    "OrderID": 77783,
    "CustomerID": 1503,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-09-04 00:00:00"
  },
  {
    "FeedbackID": "FB-73655",
    "OrderID": 73655,
    "CustomerID": 1053,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-06-30 00:00:00"
  },
  {
    "FeedbackID": "FB-77713",
    "OrderID": 77713,
    "CustomerID": 1011,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-10 00:00:00"
  },
  {
    "FeedbackID": "FB-73906",
    "OrderID": 73906,
    "CustomerID": 1244,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-19 00:00:00"
  },
  {
    "FeedbackID": "FB-70953",
    "OrderID": 70953,
    "CustomerID": 1540,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-11-18 00:00:00"
  },
  {
    "FeedbackID": "FB-78311",
    "OrderID": 78311,
    "CustomerID": 1359,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-74528",
    "OrderID": 74528,
    "CustomerID": 1287,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-17 00:00:00"
  },
  {
    "FeedbackID": "FB-72438",
    "OrderID": 72438,
    "CustomerID": 1294,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-08-15 00:00:00"
  },
  {
    "FeedbackID": "FB-77835",
    "OrderID": 77835,
    "CustomerID": 1441,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-72215",
    "OrderID": 72215,
    "CustomerID": 1543,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-02-17 00:00:00"
  },
  {
    "FeedbackID": "FB-74326",
    "OrderID": 74326,
    "CustomerID": 1209,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-01 00:00:00"
  },
  {
    "FeedbackID": "FB-78121",
    "OrderID": 78121,
    "CustomerID": 1539,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73361",
    "OrderID": 73361,
    "CustomerID": 1078,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-12-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77151",
    "OrderID": 77151,
    "CustomerID": 1079,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-02-18 00:00:00"
  },
  {
    "FeedbackID": "FB-77485",
    "OrderID": 77485,
    "CustomerID": 1364,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-12-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72776",
    "OrderID": 72776,
    "CustomerID": 1464,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-21 00:00:00"
  },
  {
    "FeedbackID": "FB-70581",
    "OrderID": 70581,
    "CustomerID": 1519,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73743",
    "OrderID": 73743,
    "CustomerID": 1242,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-77047",
    "OrderID": 77047,
    "CustomerID": 1281,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78350",
    "OrderID": 78350,
    "CustomerID": 1024,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-08-15 00:00:00"
  },
  {
    "FeedbackID": "FB-75363",
    "OrderID": 75363,
    "CustomerID": 1507,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71151",
    "OrderID": 71151,
    "CustomerID": 1083,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-08-29 00:00:00"
  },
  {
    "FeedbackID": "FB-77820",
    "OrderID": 77820,
    "CustomerID": 1388,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-04-30 00:00:00"
  },
  {
    "FeedbackID": "FB-77118",
    "OrderID": 77118,
    "CustomerID": 1091,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-03-30 00:00:00"
  },
  {
    "FeedbackID": "FB-75744",
    "OrderID": 75744,
    "CustomerID": 1528,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-02-19 00:00:00"
  },
  {
    "FeedbackID": "FB-78630",
    "OrderID": 78630,
    "CustomerID": 1382,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-09-16 00:00:00"
  },
  {
    "FeedbackID": "FB-70630",
    "OrderID": 70630,
    "CustomerID": 1146,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-03 00:00:00"
  },
  {
    "FeedbackID": "FB-76130",
    "OrderID": 76130,
    "CustomerID": 1227,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-01 00:00:00"
  },
  {
    "FeedbackID": "FB-75632",
    "OrderID": 75632,
    "CustomerID": 1175,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-17 00:00:00"
  },
  {
    "FeedbackID": "FB-72313",
    "OrderID": 72313,
    "CustomerID": 1583,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-05-25 00:00:00"
  },
  {
    "FeedbackID": "FB-70656",
    "OrderID": 70656,
    "CustomerID": 1368,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-06 00:00:00"
  },
  {
    "FeedbackID": "FB-73878",
    "OrderID": 73878,
    "CustomerID": 1544,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-07 00:00:00"
  },
  {
    "FeedbackID": "FB-77137",
    "OrderID": 77137,
    "CustomerID": 1085,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-09 00:00:00"
  },
  {
    "FeedbackID": "FB-71011",
    "OrderID": 71011,
    "CustomerID": 1291,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-24 00:00:00"
  },
  {
    "FeedbackID": "FB-71663",
    "OrderID": 71663,
    "CustomerID": 1136,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-08-21 00:00:00"
  },
  {
    "FeedbackID": "FB-72458",
    "OrderID": 72458,
    "CustomerID": 1315,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-08-21 00:00:00"
  },
  {
    "FeedbackID": "FB-78535",
    "OrderID": 78535,
    "CustomerID": 1083,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-01-26 00:00:00"
  },
  {
    "FeedbackID": "FB-74992",
    "OrderID": 74992,
    "CustomerID": 1138,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-23 00:00:00"
  },
  {
    "FeedbackID": "FB-72797",
    "OrderID": 72797,
    "CustomerID": 1158,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-12-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78534",
    "OrderID": 78534,
    "CustomerID": 1542,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-01-31 00:00:00"
  },
  {
    "FeedbackID": "FB-78889",
    "OrderID": 78889,
    "CustomerID": 1277,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-10 00:00:00"
  },
  {
    "FeedbackID": "FB-77375",
    "OrderID": 77375,
    "CustomerID": 1033,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-18 00:00:00"
  },
  {
    "FeedbackID": "FB-78935",
    "OrderID": 78935,
    "CustomerID": 1016,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-21 00:00:00"
  },
  {
    "FeedbackID": "FB-72714",
    "OrderID": 72714,
    "CustomerID": 1535,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-07-31 00:00:00"
  },
  {
    "FeedbackID": "FB-71431",
    "OrderID": 71431,
    "CustomerID": 1028,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-09-06 00:00:00"
  },
  {
    "FeedbackID": "FB-71545",
    "OrderID": 71545,
    "CustomerID": 1552,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-22 00:00:00"
  },
  {
    "FeedbackID": "FB-73358",
    "OrderID": 73358,
    "CustomerID": 1010,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-05-07 00:00:00"
  },
  {
    "FeedbackID": "FB-72163",
    "OrderID": 72163,
    "CustomerID": 1437,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72380",
    "OrderID": 72380,
    "CustomerID": 1132,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-25 00:00:00"
  },
  {
    "FeedbackID": "FB-71143",
    "OrderID": 71143,
    "CustomerID": 1525,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-04-24 00:00:00"
  },
  {
    "FeedbackID": "FB-78849",
    "OrderID": 78849,
    "CustomerID": 1311,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-11-01 00:00:00"
  },
  {
    "FeedbackID": "FB-78982",
    "OrderID": 78982,
    "CustomerID": 1106,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-10-23 00:00:00"
  },
  {
    "FeedbackID": "FB-70984",
    "OrderID": 70984,
    "CustomerID": 1275,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-16 00:00:00"
  },
  {
    "FeedbackID": "FB-73043",
    "OrderID": 73043,
    "CustomerID": 1299,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-08-28 00:00:00"
  },
  {
    "FeedbackID": "FB-74364",
    "OrderID": 74364,
    "CustomerID": 1476,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-12-19 00:00:00"
  },
  {
    "FeedbackID": "FB-77439",
    "OrderID": 77439,
    "CustomerID": 1309,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-11-14 00:00:00"
  },
  {
    "FeedbackID": "FB-74059",
    "OrderID": 74059,
    "CustomerID": 1191,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76183",
    "OrderID": 76183,
    "CustomerID": 1382,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-01-16 00:00:00"
  },
  {
    "FeedbackID": "FB-77421",
    "OrderID": 77421,
    "CustomerID": 1520,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78182",
    "OrderID": 78182,
    "CustomerID": 1525,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-09 00:00:00"
  },
  {
    "FeedbackID": "FB-71475",
    "OrderID": 71475,
    "CustomerID": 1600,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-10-14 00:00:00"
  },
  {
    "FeedbackID": "FB-70910",
    "OrderID": 70910,
    "CustomerID": 1037,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-24 00:00:00"
  },
  {
    "FeedbackID": "FB-70207",
    "OrderID": 70207,
    "CustomerID": 1202,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-24 00:00:00"
  },
  {
    "FeedbackID": "FB-71855",
    "OrderID": 71855,
    "CustomerID": 1470,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-08-15 00:00:00"
  },
  {
    "FeedbackID": "FB-77944",
    "OrderID": 77944,
    "CustomerID": 1193,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-09 00:00:00"
  },
  {
    "FeedbackID": "FB-76287",
    "OrderID": 76287,
    "CustomerID": 1359,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72236",
    "OrderID": 72236,
    "CustomerID": 1088,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78680",
    "OrderID": 78680,
    "CustomerID": 1098,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-10 00:00:00"
  },
  {
    "FeedbackID": "FB-75442",
    "OrderID": 75442,
    "CustomerID": 1408,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-06 00:00:00"
  },
  {
    "FeedbackID": "FB-73343",
    "OrderID": 73343,
    "CustomerID": 1071,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-05-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78909",
    "OrderID": 78909,
    "CustomerID": 1291,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-03-29 00:00:00"
  },
  {
    "FeedbackID": "FB-70089",
    "OrderID": 70089,
    "CustomerID": 1299,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-05-20 00:00:00"
  },
  {
    "FeedbackID": "FB-70291",
    "OrderID": 70291,
    "CustomerID": 1162,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-27 00:00:00"
  },
  {
    "FeedbackID": "FB-78770",
    "OrderID": 78770,
    "CustomerID": 1150,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-08-23 00:00:00"
  },
  {
    "FeedbackID": "FB-72428",
    "OrderID": 72428,
    "CustomerID": 1231,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-05-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74390",
    "OrderID": 74390,
    "CustomerID": 1391,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-28 00:00:00"
  },
  {
    "FeedbackID": "FB-74919",
    "OrderID": 74919,
    "CustomerID": 1323,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76103",
    "OrderID": 76103,
    "CustomerID": 1595,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-27 00:00:00"
  },
  {
    "FeedbackID": "FB-74083",
    "OrderID": 74083,
    "CustomerID": 1438,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-02-13 00:00:00"
  },
  {
    "FeedbackID": "FB-72748",
    "OrderID": 72748,
    "CustomerID": 1390,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-31 00:00:00"
  },
  {
    "FeedbackID": "FB-75294",
    "OrderID": 75294,
    "CustomerID": 1127,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-72089",
    "OrderID": 72089,
    "CustomerID": 1211,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-27 00:00:00"
  },
  {
    "FeedbackID": "FB-74290",
    "OrderID": 74290,
    "CustomerID": 1464,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-20 00:00:00"
  },
  {
    "FeedbackID": "FB-78012",
    "OrderID": 78012,
    "CustomerID": 1379,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-22 00:00:00"
  },
  {
    "FeedbackID": "FB-73989",
    "OrderID": 73989,
    "CustomerID": 1413,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-05 00:00:00"
  },
  {
    "FeedbackID": "FB-78397",
    "OrderID": 78397,
    "CustomerID": 1235,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-04-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72018",
    "OrderID": 72018,
    "CustomerID": 1452,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-06-06 00:00:00"
  },
  {
    "FeedbackID": "FB-75434",
    "OrderID": 75434,
    "CustomerID": 1407,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-11-21 00:00:00"
  },
  {
    "FeedbackID": "FB-77417",
    "OrderID": 77417,
    "CustomerID": 1400,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-20 00:00:00"
  },
  {
    "FeedbackID": "FB-70253",
    "OrderID": 70253,
    "CustomerID": 1510,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-06-30 00:00:00"
  },
  {
    "FeedbackID": "FB-70803",
    "OrderID": 70803,
    "CustomerID": 1041,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-05-26 00:00:00"
  },
  {
    "FeedbackID": "FB-76491",
    "OrderID": 76491,
    "CustomerID": 1226,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-04 00:00:00"
  },
  {
    "FeedbackID": "FB-77148",
    "OrderID": 77148,
    "CustomerID": 1590,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-06-03 00:00:00"
  },
  {
    "FeedbackID": "FB-73556",
    "OrderID": 73556,
    "CustomerID": 1072,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-75742",
    "OrderID": 75742,
    "CustomerID": 1402,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-04-22 00:00:00"
  },
  {
    "FeedbackID": "FB-75957",
    "OrderID": 75957,
    "CustomerID": 1050,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-03-13 00:00:00"
  },
  {
    "FeedbackID": "FB-76092",
    "OrderID": 76092,
    "CustomerID": 1209,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-22 00:00:00"
  },
  {
    "FeedbackID": "FB-78907",
    "OrderID": 78907,
    "CustomerID": 1257,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-27 00:00:00"
  },
  {
    "FeedbackID": "FB-75983",
    "OrderID": 75983,
    "CustomerID": 1210,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-16 00:00:00"
  },
  {
    "FeedbackID": "FB-73954",
    "OrderID": 73954,
    "CustomerID": 1467,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-01-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74153",
    "OrderID": 74153,
    "CustomerID": 1269,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-25 00:00:00"
  },
  {
    "FeedbackID": "FB-70876",
    "OrderID": 70876,
    "CustomerID": 1122,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-17 00:00:00"
  },
  {
    "FeedbackID": "FB-75921",
    "OrderID": 75921,
    "CustomerID": 1043,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-03-09 00:00:00"
  },
  {
    "FeedbackID": "FB-74031",
    "OrderID": 74031,
    "CustomerID": 1039,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-75115",
    "OrderID": 75115,
    "CustomerID": 1334,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-01-29 00:00:00"
  },
  {
    "FeedbackID": "FB-76615",
    "OrderID": 76615,
    "CustomerID": 1284,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-73777",
    "OrderID": 73777,
    "CustomerID": 1266,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-18 00:00:00"
  },
  {
    "FeedbackID": "FB-77481",
    "OrderID": 77481,
    "CustomerID": 1449,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-08-31 00:00:00"
  },
  {
    "FeedbackID": "FB-76712",
    "OrderID": 76712,
    "CustomerID": 1358,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-04-11 00:00:00"
  },
  {
    "FeedbackID": "FB-77376",
    "OrderID": 77376,
    "CustomerID": 1088,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-03-08 00:00:00"
  },
  {
    "FeedbackID": "FB-71860",
    "OrderID": 71860,
    "CustomerID": 1479,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-26 00:00:00"
  },
  {
    "FeedbackID": "FB-70107",
    "OrderID": 70107,
    "CustomerID": 1083,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-27 00:00:00"
  },
  {
    "FeedbackID": "FB-71099",
    "OrderID": 71099,
    "CustomerID": 1114,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-02-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73260",
    "OrderID": 73260,
    "CustomerID": 1036,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-26 00:00:00"
  },
  {
    "FeedbackID": "FB-73130",
    "OrderID": 73130,
    "CustomerID": 1079,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-09-22 00:00:00"
  },
  {
    "FeedbackID": "FB-72941",
    "OrderID": 72941,
    "CustomerID": 1314,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-09-19 00:00:00"
  },
  {
    "FeedbackID": "FB-73217",
    "OrderID": 73217,
    "CustomerID": 1029,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-06-30 00:00:00"
  },
  {
    "FeedbackID": "FB-78247",
    "OrderID": 78247,
    "CustomerID": 1278,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-06-27 00:00:00"
  },
  {
    "FeedbackID": "FB-73780",
    "OrderID": 73780,
    "CustomerID": 1267,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73424",
    "OrderID": 73424,
    "CustomerID": 1516,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-04-15 00:00:00"
  },
  {
    "FeedbackID": "FB-75955",
    "OrderID": 75955,
    "CustomerID": 1232,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-09-16 00:00:00"
  },
  {
    "FeedbackID": "FB-75489",
    "OrderID": 75489,
    "CustomerID": 1324,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-18 00:00:00"
  },
  {
    "FeedbackID": "FB-72664",
    "OrderID": 72664,
    "CustomerID": 1408,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-05 00:00:00"
  },
  {
    "FeedbackID": "FB-76545",
    "OrderID": 76545,
    "CustomerID": 1552,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-20 00:00:00"
  },
  {
    "FeedbackID": "FB-76273",
    "OrderID": 76273,
    "CustomerID": 1103,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-05-09 00:00:00"
  },
  {
    "FeedbackID": "FB-76313",
    "OrderID": 76313,
    "CustomerID": 1119,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-12 00:00:00"
  },
  {
    "FeedbackID": "FB-70688",
    "OrderID": 70688,
    "CustomerID": 1391,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-12-11 00:00:00"
  },
  {
    "FeedbackID": "FB-78243",
    "OrderID": 78243,
    "CustomerID": 1261,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-31 00:00:00"
  },
  {
    "FeedbackID": "FB-73102",
    "OrderID": 73102,
    "CustomerID": 1503,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-05-19 00:00:00"
  },
  {
    "FeedbackID": "FB-72294",
    "OrderID": 72294,
    "CustomerID": 1106,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-05-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75388",
    "OrderID": 75388,
    "CustomerID": 1398,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-75219",
    "OrderID": 75219,
    "CustomerID": 1537,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-01-08 00:00:00"
  },
  {
    "FeedbackID": "FB-74639",
    "OrderID": 74639,
    "CustomerID": 1192,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-21 00:00:00"
  },
  {
    "FeedbackID": "FB-78029",
    "OrderID": 78029,
    "CustomerID": 1046,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-03 00:00:00"
  },
  {
    "FeedbackID": "FB-72381",
    "OrderID": 72381,
    "CustomerID": 1174,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74720",
    "OrderID": 74720,
    "CustomerID": 1181,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-01-10 00:00:00"
  },
  {
    "FeedbackID": "FB-70035",
    "OrderID": 70035,
    "CustomerID": 1507,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-08-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75476",
    "OrderID": 75476,
    "CustomerID": 1142,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-78741",
    "OrderID": 78741,
    "CustomerID": 1589,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-03-07 00:00:00"
  },
  {
    "FeedbackID": "FB-71629",
    "OrderID": 71629,
    "CustomerID": 1447,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-22 00:00:00"
  },
  {
    "FeedbackID": "FB-71277",
    "OrderID": 71277,
    "CustomerID": 1180,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-10-19 00:00:00"
  },
  {
    "FeedbackID": "FB-73834",
    "OrderID": 73834,
    "CustomerID": 1235,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-02-06 00:00:00"
  },
  {
    "FeedbackID": "FB-70825",
    "OrderID": 70825,
    "CustomerID": 1378,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-78794",
    "OrderID": 78794,
    "CustomerID": 1090,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-12-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74254",
    "OrderID": 74254,
    "CustomerID": 1275,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72743",
    "OrderID": 72743,
    "CustomerID": 1352,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-05 00:00:00"
  },
  {
    "FeedbackID": "FB-70077",
    "OrderID": 70077,
    "CustomerID": 1480,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-25 00:00:00"
  },
  {
    "FeedbackID": "FB-72121",
    "OrderID": 72121,
    "CustomerID": 1357,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-02 00:00:00"
  },
  {
    "FeedbackID": "FB-73253",
    "OrderID": 73253,
    "CustomerID": 1326,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-08 00:00:00"
  },
  {
    "FeedbackID": "FB-76537",
    "OrderID": 76537,
    "CustomerID": 1192,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-11-28 00:00:00"
  },
  {
    "FeedbackID": "FB-75793",
    "OrderID": 75793,
    "CustomerID": 1515,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-01-07 00:00:00"
  },
  {
    "FeedbackID": "FB-77347",
    "OrderID": 77347,
    "CustomerID": 1535,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-01-08 00:00:00"
  },
  {
    "FeedbackID": "FB-72078",
    "OrderID": 72078,
    "CustomerID": 1579,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-05 00:00:00"
  },
  {
    "FeedbackID": "FB-77349",
    "OrderID": 77349,
    "CustomerID": 1155,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-10-08 00:00:00"
  },
  {
    "FeedbackID": "FB-77863",
    "OrderID": 77863,
    "CustomerID": 1168,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-04-17 00:00:00"
  },
  {
    "FeedbackID": "FB-70369",
    "OrderID": 70369,
    "CustomerID": 1558,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73827",
    "OrderID": 73827,
    "CustomerID": 1500,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-10-03 00:00:00"
  },
  {
    "FeedbackID": "FB-73612",
    "OrderID": 73612,
    "CustomerID": 1460,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-07-29 00:00:00"
  },
  {
    "FeedbackID": "FB-72023",
    "OrderID": 72023,
    "CustomerID": 1264,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-18 00:00:00"
  },
  {
    "FeedbackID": "FB-75640",
    "OrderID": 75640,
    "CustomerID": 1434,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-06 00:00:00"
  },
  {
    "FeedbackID": "FB-74175",
    "OrderID": 74175,
    "CustomerID": 1361,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-31 00:00:00"
  },
  {
    "FeedbackID": "FB-75942",
    "OrderID": 75942,
    "CustomerID": 1377,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-04-03 00:00:00"
  },
  {
    "FeedbackID": "FB-71508",
    "OrderID": 71508,
    "CustomerID": 1480,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-23 00:00:00"
  },
  {
    "FeedbackID": "FB-70627",
    "OrderID": 70627,
    "CustomerID": 1324,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-08-10 00:00:00"
  },
  {
    "FeedbackID": "FB-77114",
    "OrderID": 77114,
    "CustomerID": 1053,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-06-01 00:00:00"
  },
  {
    "FeedbackID": "FB-75846",
    "OrderID": 75846,
    "CustomerID": 1514,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-04-05 00:00:00"
  },
  {
    "FeedbackID": "FB-70869",
    "OrderID": 70869,
    "CustomerID": 1314,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-04-04 00:00:00"
  },
  {
    "FeedbackID": "FB-78884",
    "OrderID": 78884,
    "CustomerID": 1166,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-23 00:00:00"
  },
  {
    "FeedbackID": "FB-73126",
    "OrderID": 73126,
    "CustomerID": 1251,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-02-03 00:00:00"
  },
  {
    "FeedbackID": "FB-77279",
    "OrderID": 77279,
    "CustomerID": 1412,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-12-07 00:00:00"
  },
  {
    "FeedbackID": "FB-78309",
    "OrderID": 78309,
    "CustomerID": 1104,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-01-19 00:00:00"
  },
  {
    "FeedbackID": "FB-78669",
    "OrderID": 78669,
    "CustomerID": 1500,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-07-05 00:00:00"
  },
  {
    "FeedbackID": "FB-73589",
    "OrderID": 73589,
    "CustomerID": 1274,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-10-16 00:00:00"
  },
  {
    "FeedbackID": "FB-74685",
    "OrderID": 74685,
    "CustomerID": 1506,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-04-27 00:00:00"
  },
  {
    "FeedbackID": "FB-74262",
    "OrderID": 74262,
    "CustomerID": 1169,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-06-20 00:00:00"
  },
  {
    "FeedbackID": "FB-73929",
    "OrderID": 73929,
    "CustomerID": 1181,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-01 00:00:00"
  },
  {
    "FeedbackID": "FB-74887",
    "OrderID": 74887,
    "CustomerID": 1015,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-25 00:00:00"
  },
  {
    "FeedbackID": "FB-78633",
    "OrderID": 78633,
    "CustomerID": 1568,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-08-08 00:00:00"
  },
  {
    "FeedbackID": "FB-78983",
    "OrderID": 78983,
    "CustomerID": 1285,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-01-25 00:00:00"
  },
  {
    "FeedbackID": "FB-70858",
    "OrderID": 70858,
    "CustomerID": 1294,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-11 00:00:00"
  },
  {
    "FeedbackID": "FB-78896",
    "OrderID": 78896,
    "CustomerID": 1377,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-28 00:00:00"
  },
  {
    "FeedbackID": "FB-73245",
    "OrderID": 73245,
    "CustomerID": 1528,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-05 00:00:00"
  },
  {
    "FeedbackID": "FB-74724",
    "OrderID": 74724,
    "CustomerID": 1472,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-06 00:00:00"
  },
  {
    "FeedbackID": "FB-74892",
    "OrderID": 74892,
    "CustomerID": 1068,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-04-10 00:00:00"
  },
  {
    "FeedbackID": "FB-70773",
    "OrderID": 70773,
    "CustomerID": 1371,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-05-20 00:00:00"
  },
  {
    "FeedbackID": "FB-71207",
    "OrderID": 71207,
    "CustomerID": 1423,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-12 00:00:00"
  },
  {
    "FeedbackID": "FB-75042",
    "OrderID": 75042,
    "CustomerID": 1468,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-11-04 00:00:00"
  },
  {
    "FeedbackID": "FB-71045",
    "OrderID": 71045,
    "CustomerID": 1323,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-22 00:00:00"
  },
  {
    "FeedbackID": "FB-77402",
    "OrderID": 77402,
    "CustomerID": 1001,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-17 00:00:00"
  },
  {
    "FeedbackID": "FB-74196",
    "OrderID": 74196,
    "CustomerID": 1084,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-10-30 00:00:00"
  },
  {
    "FeedbackID": "FB-72444",
    "OrderID": 72444,
    "CustomerID": 1149,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-05-22 00:00:00"
  },
  {
    "FeedbackID": "FB-75296",
    "OrderID": 75296,
    "CustomerID": 1190,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-08-17 00:00:00"
  },
  {
    "FeedbackID": "FB-71001",
    "OrderID": 71001,
    "CustomerID": 1486,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-01-10 00:00:00"
  },
  {
    "FeedbackID": "FB-71756",
    "OrderID": 71756,
    "CustomerID": 1283,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-06-15 00:00:00"
  },
  {
    "FeedbackID": "FB-74050",
    "OrderID": 74050,
    "CustomerID": 1441,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-12-05 00:00:00"
  },
  {
    "FeedbackID": "FB-73597",
    "OrderID": 73597,
    "CustomerID": 1535,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-05-30 00:00:00"
  },
  {
    "FeedbackID": "FB-74784",
    "OrderID": 74784,
    "CustomerID": 1003,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-06-26 00:00:00"
  },
  {
    "FeedbackID": "FB-71293",
    "OrderID": 71293,
    "CustomerID": 1207,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-02-02 00:00:00"
  },
  {
    "FeedbackID": "FB-77020",
    "OrderID": 77020,
    "CustomerID": 1342,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-11 00:00:00"
  },
  {
    "FeedbackID": "FB-76451",
    "OrderID": 76451,
    "CustomerID": 1052,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-03-19 00:00:00"
  },
  {
    "FeedbackID": "FB-76209",
    "OrderID": 76209,
    "CustomerID": 1078,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-04-02 00:00:00"
  },
  {
    "FeedbackID": "FB-70972",
    "OrderID": 70972,
    "CustomerID": 1091,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-03-31 00:00:00"
  },
  {
    "FeedbackID": "FB-73490",
    "OrderID": 73490,
    "CustomerID": 1229,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-11-25 00:00:00"
  },
  {
    "FeedbackID": "FB-72625",
    "OrderID": 72625,
    "CustomerID": 1384,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-72912",
    "OrderID": 72912,
    "CustomerID": 1433,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-30 00:00:00"
  },
  {
    "FeedbackID": "FB-73063",
    "OrderID": 73063,
    "CustomerID": 1592,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-05 00:00:00"
  },
  {
    "FeedbackID": "FB-78518",
    "OrderID": 78518,
    "CustomerID": 1576,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-02-27 00:00:00"
  },
  {
    "FeedbackID": "FB-76143",
    "OrderID": 76143,
    "CustomerID": 1301,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-06-19 00:00:00"
  },
  {
    "FeedbackID": "FB-78143",
    "OrderID": 78143,
    "CustomerID": 1268,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-05-06 00:00:00"
  },
  {
    "FeedbackID": "FB-76970",
    "OrderID": 76970,
    "CustomerID": 1312,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-06-17 00:00:00"
  },
  {
    "FeedbackID": "FB-71024",
    "OrderID": 71024,
    "CustomerID": 1553,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-01-03 00:00:00"
  },
  {
    "FeedbackID": "FB-78142",
    "OrderID": 78142,
    "CustomerID": 1598,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-07-02 00:00:00"
  },
  {
    "FeedbackID": "FB-72516",
    "OrderID": 72516,
    "CustomerID": 1510,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-10-16 00:00:00"
  },
  {
    "FeedbackID": "FB-75686",
    "OrderID": 75686,
    "CustomerID": 1233,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-07-24 00:00:00"
  },
  {
    "FeedbackID": "FB-74439",
    "OrderID": 74439,
    "CustomerID": 1265,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-02-24 00:00:00"
  },
  {
    "FeedbackID": "FB-75146",
    "OrderID": 75146,
    "CustomerID": 1084,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-05-18 00:00:00"
  },
  {
    "FeedbackID": "FB-70402",
    "OrderID": 70402,
    "CustomerID": 1195,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-03-20 00:00:00"
  },
  {
    "FeedbackID": "FB-74355",
    "OrderID": 74355,
    "CustomerID": 1120,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78299",
    "OrderID": 78299,
    "CustomerID": 1455,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-08-12 00:00:00"
  },
  {
    "FeedbackID": "FB-78784",
    "OrderID": 78784,
    "CustomerID": 1163,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-09-13 00:00:00"
  },
  {
    "FeedbackID": "FB-76119",
    "OrderID": 76119,
    "CustomerID": 1289,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-04-12 00:00:00"
  },
  {
    "FeedbackID": "FB-70992",
    "OrderID": 70992,
    "CustomerID": 1453,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-06-11 00:00:00"
  },
  {
    "FeedbackID": "FB-70162",
    "OrderID": 70162,
    "CustomerID": 1111,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-29 00:00:00"
  },
  {
    "FeedbackID": "FB-75183",
    "OrderID": 75183,
    "CustomerID": 1313,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-02-09 00:00:00"
  },
  {
    "FeedbackID": "FB-75601",
    "OrderID": 75601,
    "CustomerID": 1115,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-15 00:00:00"
  },
  {
    "FeedbackID": "FB-71095",
    "OrderID": 71095,
    "CustomerID": 1489,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-11-13 00:00:00"
  },
  {
    "FeedbackID": "FB-76848",
    "OrderID": 76848,
    "CustomerID": 1098,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-09-06 00:00:00"
  },
  {
    "FeedbackID": "FB-76342",
    "OrderID": 76342,
    "CustomerID": 1415,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-06 00:00:00"
  },
  {
    "FeedbackID": "FB-77434",
    "OrderID": 77434,
    "CustomerID": 1185,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-12-06 00:00:00"
  },
  {
    "FeedbackID": "FB-73273",
    "OrderID": 73273,
    "CustomerID": 1520,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-09-26 00:00:00"
  },
  {
    "FeedbackID": "FB-71422",
    "OrderID": 71422,
    "CustomerID": 1079,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-25 00:00:00"
  },
  {
    "FeedbackID": "FB-77874",
    "OrderID": 77874,
    "CustomerID": 1476,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-02-17 00:00:00"
  },
  {
    "FeedbackID": "FB-76839",
    "OrderID": 76839,
    "CustomerID": 1316,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-07 00:00:00"
  },
  {
    "FeedbackID": "FB-71043",
    "OrderID": 71043,
    "CustomerID": 1023,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-04-08 00:00:00"
  },
  {
    "FeedbackID": "FB-73514",
    "OrderID": 73514,
    "CustomerID": 1107,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-10-20 00:00:00"
  },
  {
    "FeedbackID": "FB-70026",
    "OrderID": 70026,
    "CustomerID": 1528,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-29 00:00:00"
  },
  {
    "FeedbackID": "FB-72248",
    "OrderID": 72248,
    "CustomerID": 1192,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-72949",
    "OrderID": 72949,
    "CustomerID": 1193,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-02-11 00:00:00"
  },
  {
    "FeedbackID": "FB-72837",
    "OrderID": 72837,
    "CustomerID": 1246,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-09-06 00:00:00"
  },
  {
    "FeedbackID": "FB-78617",
    "OrderID": 78617,
    "CustomerID": 1373,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-03-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71322",
    "OrderID": 71322,
    "CustomerID": 1502,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-07-21 00:00:00"
  },
  {
    "FeedbackID": "FB-74566",
    "OrderID": 74566,
    "CustomerID": 1421,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-05-25 00:00:00"
  },
  {
    "FeedbackID": "FB-77174",
    "OrderID": 77174,
    "CustomerID": 1119,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-17 00:00:00"
  },
  {
    "FeedbackID": "FB-75141",
    "OrderID": 75141,
    "CustomerID": 1154,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-07 00:00:00"
  },
  {
    "FeedbackID": "FB-75872",
    "OrderID": 75872,
    "CustomerID": 1437,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-73678",
    "OrderID": 73678,
    "CustomerID": 1004,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-01-25 00:00:00"
  },
  {
    "FeedbackID": "FB-75001",
    "OrderID": 75001,
    "CustomerID": 1372,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-07-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74459",
    "OrderID": 74459,
    "CustomerID": 1356,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-30 00:00:00"
  },
  {
    "FeedbackID": "FB-73320",
    "OrderID": 73320,
    "CustomerID": 1134,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-02-03 00:00:00"
  },
  {
    "FeedbackID": "FB-76571",
    "OrderID": 76571,
    "CustomerID": 1251,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-11-11 00:00:00"
  },
  {
    "FeedbackID": "FB-73337",
    "OrderID": 73337,
    "CustomerID": 1457,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-07-11 00:00:00"
  },
  {
    "FeedbackID": "FB-73710",
    "OrderID": 73710,
    "CustomerID": 1600,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-08 00:00:00"
  },
  {
    "FeedbackID": "FB-75573",
    "OrderID": 75573,
    "CustomerID": 1132,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-14 00:00:00"
  },
  {
    "FeedbackID": "FB-76399",
    "OrderID": 76399,
    "CustomerID": 1521,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2024-08-13 00:00:00"
  },
  {
    "FeedbackID": "FB-74742",
    "OrderID": 74742,
    "CustomerID": 1255,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-01-18 00:00:00"
  },
  {
    "FeedbackID": "FB-71842",
    "OrderID": 71842,
    "CustomerID": 1533,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-07-05 00:00:00"
  },
  {
    "FeedbackID": "FB-77229",
    "OrderID": 77229,
    "CustomerID": 1312,
    "Rating": 2,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-07-28 00:00:00"
  },
  {
    "FeedbackID": "FB-78302",
    "OrderID": 78302,
    "CustomerID": 1190,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-75441",
    "OrderID": 75441,
    "CustomerID": 1111,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-08-24 00:00:00"
  },
  {
    "FeedbackID": "FB-71777",
    "OrderID": 71777,
    "CustomerID": 1547,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-09-04 00:00:00"
  },
  {
    "FeedbackID": "FB-76311",
    "OrderID": 76311,
    "CustomerID": 1279,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-03 00:00:00"
  },
  {
    "FeedbackID": "FB-73638",
    "OrderID": 73638,
    "CustomerID": 1251,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-06-22 00:00:00"
  },
  {
    "FeedbackID": "FB-76454",
    "OrderID": 76454,
    "CustomerID": 1550,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-01-27 00:00:00"
  },
  {
    "FeedbackID": "FB-71692",
    "OrderID": 71692,
    "CustomerID": 1545,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-07-15 00:00:00"
  },
  {
    "FeedbackID": "FB-73013",
    "OrderID": 73013,
    "CustomerID": 1029,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2024-12-04 00:00:00"
  },
  {
    "FeedbackID": "FB-74471",
    "OrderID": 74471,
    "CustomerID": 1535,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-03-23 00:00:00"
  },
  {
    "FeedbackID": "FB-77392",
    "OrderID": 77392,
    "CustomerID": 1346,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-10-15 00:00:00"
  },
  {
    "FeedbackID": "FB-71863",
    "OrderID": 71863,
    "CustomerID": 1248,
    "Rating": 2,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-09-17 00:00:00"
  },
  {
    "FeedbackID": "FB-74976",
    "OrderID": 74976,
    "CustomerID": 1301,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-08-11 00:00:00"
  },
  {
    "FeedbackID": "FB-70698",
    "OrderID": 70698,
    "CustomerID": 1297,
    "Rating": 3,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-04-29 00:00:00"
  },
  {
    "FeedbackID": "FB-72540",
    "OrderID": 72540,
    "CustomerID": 1188,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2024-08-02 00:00:00"
  },
  {
    "FeedbackID": "FB-71659",
    "OrderID": 71659,
    "CustomerID": 1511,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2024-02-01 00:00:00"
  },
  {
    "FeedbackID": "FB-73175",
    "OrderID": 73175,
    "CustomerID": 1218,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-10-01 00:00:00"
  },
  {
    "FeedbackID": "FB-78093",
    "OrderID": 78093,
    "CustomerID": 1017,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2025-12-17 00:00:00"
  },
  {
    "FeedbackID": "FB-72536",
    "OrderID": 72536,
    "CustomerID": 1399,
    "Rating": 3,
    "Channel": "Web",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-06-06 00:00:00"
  },
  {
    "FeedbackID": "FB-77849",
    "OrderID": 77849,
    "CustomerID": 1432,
    "Rating": 5,
    "Channel": "Call Center",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-05-23 00:00:00"
  },
  {
    "FeedbackID": "FB-70063",
    "OrderID": 70063,
    "CustomerID": 1447,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-08-10 00:00:00"
  },
  {
    "FeedbackID": "FB-76640",
    "OrderID": 76640,
    "CustomerID": 1552,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-08-04 00:00:00"
  },
  {
    "FeedbackID": "FB-73579",
    "OrderID": 73579,
    "CustomerID": 1033,
    "Rating": 1,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-06-17 00:00:00"
  },
  {
    "FeedbackID": "FB-73143",
    "OrderID": 73143,
    "CustomerID": 1382,
    "Rating": 1,
    "Channel": "Web",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-06-19 00:00:00"
  },
  {
    "FeedbackID": "FB-71389",
    "OrderID": 71389,
    "CustomerID": 1163,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2026-04-26 00:00:00"
  },
  {
    "FeedbackID": "FB-73864",
    "OrderID": 73864,
    "CustomerID": 1432,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-02-19 00:00:00"
  },
  {
    "FeedbackID": "FB-70971",
    "OrderID": 70971,
    "CustomerID": 1222,
    "Rating": 4,
    "Channel": "Call Center",
    "CommentCategory": "Price",
    "SubmittedAt": "2025-05-13 00:00:00"
  },
  {
    "FeedbackID": "FB-77087",
    "OrderID": 77087,
    "CustomerID": 1593,
    "Rating": 2,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2026-04-19 00:00:00"
  },
  {
    "FeedbackID": "FB-74807",
    "OrderID": 74807,
    "CustomerID": 1488,
    "Rating": 5,
    "Channel": "Mobile App",
    "CommentCategory": "Delivery",
    "SubmittedAt": "2026-07-19 00:00:00"
  },
  {
    "FeedbackID": "FB-71078",
    "OrderID": 71078,
    "CustomerID": 1455,
    "Rating": 3,
    "Channel": "Call Center",
    "CommentCategory": "Overall",
    "SubmittedAt": "2025-03-28 00:00:00"
  },
  {
    "FeedbackID": "FB-76435",
    "OrderID": 76435,
    "CustomerID": 1059,
    "Rating": 1,
    "Channel": "Mobile App",
    "CommentCategory": "Support",
    "SubmittedAt": "2025-10-21 00:00:00"
  },
  {
    "FeedbackID": "FB-70652",
    "OrderID": 70652,
    "CustomerID": 1531,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Price",
    "SubmittedAt": "2024-09-30 00:00:00"
  },
  {
    "FeedbackID": "FB-77410",
    "OrderID": 77410,
    "CustomerID": 1545,
    "Rating": 4,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2026-05-26 00:00:00"
  },
  {
    "FeedbackID": "FB-75427",
    "OrderID": 75427,
    "CustomerID": 1199,
    "Rating": 5,
    "Channel": "Web",
    "CommentCategory": "Product Quality",
    "SubmittedAt": "2025-03-27 00:00:00"
  },
  {
    "FeedbackID": "FB-70157",
    "OrderID": 70157,
    "CustomerID": 1532,
    "Rating": 4,
    "Channel": "Mobile App",
    "CommentCategory": "Overall",
    "SubmittedAt": "2026-08-04 00:00:00"
  }
]';

INSERT INTO Customer_Feedback
(
    FeedbackID,
    OrderID,
    CustomerID,
    Rating,
    Channel,
    CommentCategory,
    SubmittedAt
)
SELECT
    FeedbackID,
    OrderID,
    CustomerID,
    Rating,
    Channel,
    CommentCategory,
    SubmittedAt
FROM OPENJSON(@json)
WITH (
    FeedbackID      VARCHAR(20),
    OrderID         INT,
    CustomerID      INT,
    Rating          INT,
    Channel         NVARCHAR(50),
    CommentCategory NVARCHAR(100),
    SubmittedAt     DATETIME
);