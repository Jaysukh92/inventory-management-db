DELIMITER $$

CREATE PROCEDURE sp_update_stock(IN p_id INT, IN qty INT)
BEGIN
  UPDATE products
  SET stock = stock - qty
  WHERE product_id = p_id;

  INSERT INTO inventory_log (product_id, change_qty, change_type)
  VALUES (p_id, qty, 'OUT');
END$$

DELIMITER ;
