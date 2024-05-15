ALTER TABLE address
    ADD FOREIGN KEY (buyer_id)
        REFERENCES buyer(buyer_id);

ALTER TABLE orders
    ADD FOREIGN KEY(buyer_address_id) REFERENCES address(address_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

ALTER TABLE orders
    ADD FOREIGN KEY(buyer_id) REFERENCES buyer(buyer_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

SELECT * FROM orders 
	JOIN buyer
    	ON orders.buyer_id = buyer.buyer_id 
    JOIN address 
    	ON orders.buyer_address_id = address.address_id;

SELECT o.order_id, b.buyer_id, b.buyer_name, addr.address_street
	FROM orders AS o 
	JOIN buyer AS b
    	ON o.buyer_id = b.buyer_id 
    JOIN address AS addr
    	ON o.buyer_address_id = addr.address_id;