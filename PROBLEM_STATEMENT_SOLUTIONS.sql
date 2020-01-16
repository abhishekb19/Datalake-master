-- Top 10 types of frequently reported complaints
select complaint_type, count(*) from complaints group by complaint_type order by 2 desc limit 10;

-- Distinct type of complaints
select ditinct complaint_type from complaints;

-- Max complaint zip code
select incident_zip, count(*) as inc_count from complaints group by incident_zip order by 2 desc limit 1;

-- Min complaint zip code
select incident_zip, count(*) as inc_count from complaints group by incident_zip order by 2 asc limit 1;

-- Top 3 most incident_zip
select incident_zip, count(*) as inc_count from complaints group by incident_zip order by 2 desc limit 3;

-- Complaint types near times square new york
SELECT distinct complaint_type from complaints where UPPER(INCIDENT_ADDR) LIKE '%TIMES SQUARE%' and UPPER(STREET_NAME) LIKE '%TIMES SQUARE%' and UPPER(CITY)='NEW YORK';



