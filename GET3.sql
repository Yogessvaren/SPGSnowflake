-- Snowflake SQL Download Demo
-- Download via user stage
-- Huegesh 
-- huegesh.marimuthu spglobal.com
-- 2021-01-05

USE ROLE XF_READER_HUEGEST;
USE WAREHOUSE XF_READER_HUEGEST_WH;
USE DATABASE MI_XPRESSCLOUD;
USE SCHEMA XPRESSFEED;

COPY INTO @~/unload/D FROM 
    ( 
        SELECT TOP 100000 * FROM ciqCompany    
    ) 
    FILE_FORMAT = ( TYPE=CSV 
                    FIELD_DELIMITER='|'
                    --RECORD_DELIMITER='#@#@#'
                    --FIELD_OPTIONALLY_ENCLOSED_BY='"'
                    ENCODING=UTF8
                    COMPRESSION=GZIP
                    )
    --SINGLE=TRUE
    --MAX_FILE_SIZE=16000000
    OVERWRITE=TRUE
    HEADER=TRUE
    ;

GET @~/unload/D file://c:\temp

REMOVE @~/unload/D;
