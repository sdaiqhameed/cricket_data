# cricket_data
A SQL Server database to store ball-to-ball cricket data, import from Cricsheet.org 

There are two projects, as follows; 

CricketMSSQL 
  It is a Visual Studio 2022 Database project. First you need to open it into VS 2022 and compile it and deploy into a SQL Server. 
  It will create the tables and required stored procedures to ingest the cricsheet data. 

CricSheetIngestion 
  It is a jupyter notebook project (you can use julyter labs or VS Code). It ingest all the cricket files into MSSQL DB. The code is fully tested on PSL files. Should be work on all match files. 
  Please enter your sql server details into DAL.ipynb file. Few PSL files are attached for your reference, rest can be downloaded from cricksheet.org. 


Still face any issue, please contact me via email sadiq.hameed.qureshi@gmail.com 


