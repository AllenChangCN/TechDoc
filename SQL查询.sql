//联结查询后，计算行数
SELECT COUNT(*) FROM 
(SELECT
	oi.order_item_id,
	oi.server_uid,
	oid.goods_name
FROM
	order_indexer AS oi
INNER JOIN order_item_details AS oid ON oi.order_item_id = oid.order_item_id
WHERE
	oi.server_uid = "42") AS b
	
	
//联结查询后，查询特定列
SELECT goods_name FROM
(SELECT
	oi.order_item_id,
	oi.server_uid,
	oid.goods_name
FROM
	order_indexer AS oi
INNER JOIN order_item_details AS oid ON oi.order_item_id = oid.order_item_id
WHERE
	oi.server_uid = "42") AS A

	
//	联表查询后，将创建日期与提交OP日期相减	
SELECT
	submit_to_op,created_at,timediff(submit_to_op,created_at) AS time
FROM
	(
		SELECT
			A.goods_id,
			A.item_sn,
-- 			A.created_at,
			A.submit_to_op,
			B.created_at
		FROM
			(
				SELECT
					*
				FROM
					order_items
				WHERE
					goods_id = '4420'
			) AS A
		INNER JOIN (SELECT * FROM order_indexer) AS B ON A.item_sn = B.item_sn
	) AS C;