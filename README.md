# inventory-management-db

# Inventory Management Database (MySQL)

A simple inventory management system designed using MySQL.  
Includes schema, sample data, stored procedures, automation, and performance optimization examples.

## 🛠 Features
- Track products, suppliers, and stock levels
- Stored procedure to update stock
- Sample backup automation script
- Query optimization case study

## 🗂 Tables
- `products`
- `suppliers`
- `inventory_log`

## 🔗 ER Diagram (Text-based)
- A `product` belongs to a `supplier`
- `inventory_log` tracks stock updates for each product

## 💡 Stored Procedures
- `sp_update_stock(product_id, quantity)`: Decreases stock, inserts log

## ⚙️ Scripts
- `backup.sh`: Simple full-database backup script

---
