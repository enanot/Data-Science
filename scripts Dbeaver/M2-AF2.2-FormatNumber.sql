CREATE FUNCTION movies.FormatName(name varchar(255), sep varchar(10))
RETURNS VARCHAR(255)
BEGIN
	DECLARE tmpstr VARCHAR(255);
    DECLARE res VARCHAR(255) DEFAULT '';
    DECLARE pos INT;
    DECLARE n INT DEFAULT 1;

	SET tmpstr = name;

    myloop: LOOP
	    SET res = concat(res, sep, UPPER(LEFT(tmpstr, 1)));
    	SET tmpstr = SUBSTR(tmpstr, 2);
        SET pos = LOCATE('-', tmpstr, n);
        
        IF pos = 0 THEN
            SET res = CONCAT(res, SUBSTR(tmpstr, n));
            LEAVE myloop;
        ELSE
            SET res = CONCAT(res, SUBSTR(tmpstr, n, pos - 1));
            SET tmpstr = SUBSTR(tmpstr, pos + 1);
        END IF;
        SET n = 1; 
    END LOOP myloop;

    RETURN substr(res,2);
	
	
END