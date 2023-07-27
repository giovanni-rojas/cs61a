.read data.sql


CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) FROM inventory GROUP BY item;


CREATE TABLE deal_ratios AS
  SELECT name, MIN(MSRP / rating) FROM products GROUP BY category;


CREATE TABLE shopping_list AS
  SELECT bdbc.name, lp.store FROM deal_ratios AS bdbc, lowest_prices AS lp WHERE bdbc.name = lp.item;


CREATE TABLE total_bandwidth AS
  SELECT SUM(s.Mbs) FROM stores AS s, shopping_list AS sl WHERE s.store = sl.store;

