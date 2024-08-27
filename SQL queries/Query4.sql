WITH most_common_domain AS(
	SELECT domain, COUNT(domain) FROM customer
	GROUP BY domain
	ORDER BY COUNT(domain) DESC
	LIMIT 1
)

SELECT * FROM customer
WHERE domain = (SELECT domain FROM most_common_domain)