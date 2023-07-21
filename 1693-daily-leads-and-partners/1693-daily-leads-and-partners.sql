SELECT TO_CHAR(date_id, 'YYYY-MM-DD') AS date_id, make_name, COUNT(distinct lead_id) AS unique_leads, COUNT(distinct partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name
