SELECT * from Cinema 
WHERE ID%2 !=0 AND description != 'boring'
ORDER BY rating desc 
