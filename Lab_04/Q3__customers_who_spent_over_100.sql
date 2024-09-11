SELECT COUNT(*) AS Nbr_cstmrs_ovr_100
From (SELECT customer_id, sum(amount) total
      FROM Payment
	  GROUP BY customer_id
	  HAVING total > 100) AS mytable;
