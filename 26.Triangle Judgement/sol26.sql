SELECT x,y,z, 
       CASE 
           WHEN X+Y>Z AND x+z>y AND Y+Z >X THEN 'Yes' 
           ELSE 'No'
        END
        AS triangle 
FROM triangle 
