SELECT u.id as 'id', u.email, MAX(u.score) as 'score', c.id as 'company__id' 
	FROM users u 
    	INNER JOIN companies c on u.company_id=c.id 
        GROUP by u.company_id