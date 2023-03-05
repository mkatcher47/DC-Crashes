CREATE TABLE dc_crash_data (X,FLOAT
Y,FLOAT
OBJECTID,INT
CRIMEID,INT
CCN,INT
REPORTDATE,DATETIMEOFFSET
ROUTEID,INT
MEASURE,FLOAT
OFFSET,FLOAT
STREETSEGID,INT
ROADWAYSEGID,INT
FROMDATE,DATETIMEOFFSET
TODATE,DATETIMEOFFSET
ADDRESS,TEXT
LATITUDE,FLOAT
LONGITUDE,FLOAT
XCOORD,FLOAT
YCOORD,FLOAT
WARD,TEXT
EVENTID,TEXT
MAR_ADDRESS,TEXT
MAR_SCORE,INT
MAJORINJURIES_BICYCLIST,TINYINT
MINORINJURIES_BICYCLIST,TINYINT
UNKNOWNINJURIES_BICYCLIST,TINYINT
FATAL_BICYCLIST,TINYINT
MAJORINJURIES_DRIVER,TINYINT
MINORINJURIES_DRIVER,TINYINT
UNKNOWNINJURIES_DRIVER,TINYINT
FATAL_DRIVER,TINYINT
MAJORINJURIES_PEDESTRIAN,TINYINT
MINORINJURIES_PEDESTRIAN,TINYINT
UNKNOWNINJURIES_PEDESTRIAN,TINYINT
FATAL_PEDESTRIAN,TINYINT
TOTAL_VEHICLES,TINYINT
TOTAL_BICYCLES,TINYINT
TOTAL_PEDESTRIANS,TINYINT
PEDESTRIANSIMPAIRED,TINYINT
BICYCLISTSIMPAIRED,TINYINT
DRIVERSIMPAIRED,TINYINT
TOTAL_TAXIS,TINYINT
TOTAL_GOVERNMENT,TINYINT
SPEEDING_INVOLVED,BOOL
NEARESTINTROUTEID,INT
NEARESTINTSTREETNAME,TEXT
OFFINTERSECTION,DECIMAL
INTAPPROACHDIRECTION,TEXT
LOCATIONERROR,TEXT
LASTUPDATEDATE,DATETIMEOFFSET
MPDLATITUDE,FLOAT
MPDLONGITUDE,FLOAT
MPDGEOX,TEXT
MPDGEOY,TEXT
FATALPASSENGER,BIT
MAJORINJURIESPASSENGER,BIT
MINORINJURIESPASSENGER,BIT
UNKNOWNINJURIESPASSENGER,BIT
MAR_ID,INT);