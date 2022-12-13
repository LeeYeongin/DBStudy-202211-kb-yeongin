SELECT
	product_name,
	COUNT(order_id), /* 행의 개수가 몇개인가 */
	SUM(stock), /* 총합 */
	MIN(stock), /* 최소 */
	MAX(stock), /* 최대 */
	SUM(stock) / COUNT(1), /* 연산도 가능 */
	AVG(stock)
FROM
	order_mst
GROUP BY /* 묶는 기준 */
	product_name;
	

/*-----------------------------------------------------------------------------*/	
SELECT
	product_name,
	SUM(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
	
/*-----------------------------------------------------------------------------*/	
SELECT
	product_name,
	price * stock AS total_price
FROM
	order_mst;

/*-----------------------------------------------------------------------------*/
SELECT
	product_name,
	COUNT(order_id), 
	SUM(stock), 
	MIN(stock), 
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
GROUP BY 
	product_name
HAVING
	max_stock > 99;
	
/*-----------------------------------------------------------------------------*/
SELECT
	product_name,
	COUNT(order_id) AS order_count, 
	SUM(stock) AS stock_sum, 
	MIN(stock), 
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock > 50
GROUP BY 
	product_name
HAVING
	max_stock > 49
ORDER BY
	order_count, /* 기본은 오름차순 */
	stock_sum DESC /* DESC: 내림차순 */
LIMIT 0, 2; /* 숫자 하나: 개수, 숫자 두개: num1 인덱스부터 num2개 가져오기 
														ex) 0, 3 -> 0,1,2 인덱스
															 3, 3 -> 3,4,5 인덱스*/


/*-----------------------------------------------------------------------------*/
SELECT
	*
FROM
	order_mst
LIMIT
	3, 3;
	
	
	
	
	