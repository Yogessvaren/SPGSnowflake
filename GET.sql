
-- Snowflake SQL Download Demo
-- Download via SQL query
-- Huegesh 
-- huegesh.marimuthu spglobal.com
-- 2021-01-05

USE ROLE XF_READER_HUEGEST;
USE WAREHOUSE XF_READER_HUEGEST_WH;
USE DATABASE MI_XPRESSCLOUD;
USE SCHEMA XPRESSFEED;

SELECT TOP 10 * FROM ciqCompany C;
