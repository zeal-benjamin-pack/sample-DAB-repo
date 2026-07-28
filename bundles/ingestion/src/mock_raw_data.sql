CREATE TABLE IF NOT EXISTS main.raw.items_raw 
    AS SELECT * FROM (
        VALUES
            (1, 'Bananas (1 lb)', 'Produce', 0.69),
            (2, 'Gala Apples (1 lb)', 'Produce', 1.49),
            (3, 'Organic Spinach (5 oz)', 'Produce', 3.49),
            (4, 'Avocados (each)', 'Produce', 1.19),
            (5, 'Baby Carrots (1 lb)', 'Produce', 1.09),
            (6, 'Roma Tomatoes (1 lb)', 'Produce', 1.29),
            (7, 'Seedless Grapes (1 lb)', 'Produce', 2.99),
            (8, 'Broccoli Crowns (1 lb)', 'Produce', 1.89),
            (9, 'Red Onions (1 lb)', 'Produce', 0.99),
            (10, 'Lemons (each)', 'Produce', 0.79),
            (11, 'Whole Milk (1 gal)', 'Dairy', 3.69),
            (12, '2% Milk (1 gal)', 'Dairy', 3.49),
            (13, 'Greek Yogurt (single)', 'Dairy', 1.29),
            (14, 'Cheddar Cheese (8 oz)', 'Dairy', 2.99),
            (15, 'Mozzarella Shredded (8 oz)', 'Dairy', 2.79),
            (16, 'Butter (4 sticks)', 'Dairy', 3.99),
            (17, 'Cage-Free Eggs (12 ct)', 'Dairy', 4.49),
            (18, 'Heavy Cream (1 pint)', 'Dairy', 2.59),
            (19, 'Sour Cream (8 oz)', 'Dairy', 1.79),
            (20, 'Cream Cheese (8 oz)', 'Dairy', 1.99),
            (21, 'White Bread Loaf', 'Bakery', 2.49),
            (22, 'Whole Wheat Bread Loaf', 'Bakery', 2.79),
            (23, 'Croissants (4 ct)', 'Bakery', 3.99),
            (24, 'Blueberry Muffins (4 ct)', 'Bakery', 4.49),
            (25, 'Baguette', 'Bakery', 2.19),
            (26, 'Multigrain Rolls (6 ct)', 'Bakery', 3.49),
            (27, 'Bagels (6 ct)', 'Bakery', 3.99),
            (28, 'Brioche Burger Buns (4 ct)', 'Bakery', 2.89),
            (29, 'Cinnamon Rolls (pack)', 'Bakery', 4.79),
            (30, 'Cornbread Muffins (6 ct)', 'Bakery', 3.29),
            (31, 'Ground Beef (1 lb)', 'Meat', 5.49),
            (32, 'Chicken Breast (1 lb)', 'Meat', 4.29),
            (33, 'Bacon (12 oz)', 'Meat', 5.99),
            (34, 'Pork Chops (1 lb)', 'Meat', 3.99),
            (35, 'Italian Sausage (4 ct)', 'Meat', 4.79),
            (36, 'Ground Turkey (1 lb)', 'Meat', 4.69),
            (37, 'Salmon Fillet (6 oz)', 'Meat', 6.99),
            (38, 'Whole Rotisserie Chicken', 'Meat', 7.99),
            (39, 'Beef Steak (1 lb)', 'Meat', 7.49),
            (40, 'Deli Ham Slices (1/2 lb)', 'Meat', 3.89),
            (41, 'Frozen Pizza (12 in)', 'Frozen', 5.99),
            (42, 'Frozen Peas (16 oz)', 'Frozen', 1.29),
            (43, 'Ice Cream (1 qt)', 'Frozen', 4.49),
            (44, 'Frozen Burritos (2 ct)', 'Frozen', 2.49),
            (45, 'Frozen Chicken Nuggets (16 oz)', 'Frozen', 4.99),
            (46, 'Frozen Spinach (16 oz)', 'Frozen', 1.49),
            (47, 'Frozen Mixed Veggies (16 oz)', 'Frozen', 1.59),
            (48, 'Waffles (10 ct)', 'Frozen', 3.29),
            (49, 'Frozen Lasagna (individual)', 'Frozen', 3.99),
            (50, 'Veggie Burgers (4 ct)', 'Frozen', 4.29),
            (51, 'Orange Juice (1 gal)', 'Beverages', 3.99),
            (52, 'Apple Juice (1 gal)', 'Beverages', 3.59),
            (53, 'Cola (2 liter)', 'Beverages', 1.89),
            (54, 'Bottled Water (24 ct)', 'Beverages', 5.99),
            (55, 'Energy Drink (single)', 'Beverages', 2.49),
            (56, 'Iced Tea (gallon)', 'Beverages', 2.99),
            (57, 'Sparkling Water (12 ct)', 'Beverages', 6.49),
            (58, 'Cold Brew Coffee (32 oz)', 'Beverages', 4.99),
            (59, 'Lemonade (gallon)', 'Beverages', 2.79),
            (60, 'Almond Milk (half gal)', 'Beverages', 3.49),
            (61, 'Potato Chips (8 oz)', 'Snacks', 2.99),
            (62, 'Tortilla Chips (12 oz)', 'Snacks', 3.49),
            (63, 'Pretzels (16 oz)', 'Snacks', 2.89),
            (64, 'Chocolate Bar (single)', 'Snacks', 1.49),
            (65, 'Trail Mix (8 oz)', 'Snacks', 4.29),
            (66, 'Peanut Butter Crackers (6 ct)', 'Snacks', 2.59),
            (67, 'Granola Bars (6 ct)', 'Snacks', 3.69),
            (68, 'Cheese Puffs (7 oz)', 'Snacks', 2.89),
            (69, 'Gummy Bears (bag)', 'Snacks', 1.99),
            (70, 'Salted Almonds (8 oz)', 'Snacks', 5.29),
            (71, 'Mangoes (each)', 'Produce', 1.49),
            (72, 'Cucumber (each)', 'Produce', 0.99),
            (73, 'Russet Potatoes (5 lb bag)', 'Produce', 3.99),
            (74, 'Cauliflower Head', 'Produce', 2.49),
            (75, 'Zucchini (1 lb)', 'Produce', 1.39),
            (76, 'Organic Kale (bunch)', 'Produce', 2.19),
            (77, 'Asparagus (1 lb)', 'Produce', 2.99),
            (78, 'Red Bell Peppers (each)', 'Produce', 1.29),
            (79, 'Green Beans (1 lb)', 'Produce', 1.99),
            (80, 'Pineapple (each)', 'Produce', 2.99),
            (81, 'Swiss Cheese Slices (8 ct)', 'Dairy', 3.59),
            (82, 'Colby Jack Block (8 oz)', 'Dairy', 2.99),
            (83, 'Low-Fat Yogurt (6 oz)', 'Dairy', 0.89),
            (84, 'Skim Milk (1 gal)', 'Dairy', 3.29),
            (85, 'Organic Eggs (12 ct)', 'Dairy', 5.49),
            (86, 'Ricotta Cheese (8 oz)', 'Dairy', 2.99),
            (87, 'Whipping Cream (8 oz)', 'Dairy', 1.99),
            (88, 'Plain Bagels (6 ct)', 'Bakery', 2.99),
            (89, 'Sourdough Loaf', 'Bakery', 3.19),
            (90, 'Hot Dog Buns (8 ct)', 'Bakery', 2.79),
            (91, 'Chicken Thighs (1 lb)', 'Meat', 3.49),
            (92, 'Turkey Breast Slices (1/2 lb)', 'Meat', 4.29),
            (93, 'Meatballs (frozen, 12 oz)', 'Frozen', 4.79),
            (94, 'Mixed Berry Smoothie Pack', 'Frozen', 5.49),
            (95, 'Root Beer (6 pack)', 'Beverages', 4.99),
            (96, 'Sparkling Apple Cider (750 ml)', 'Beverages', 3.89),
            (97, 'Cheese Crackers (7 oz)', 'Snacks', 2.69),
            (98, 'Mixed Nuts (10 oz)', 'Snacks', 6.49),
            (99, 'Protein Bars (4 ct)', 'Snacks', 5.29),
            (100, 'Fruit Snacks (10 ct)', 'Snacks', 3.99)
    ) AS items_source(id, name, category, price);

CREATE TABLE IF NOT EXISTS main.raw.transactions_raw (
    txn_id BIGINT GENERATED ALWAYS AS IDENTITY,
    item_id INTEGER,
    quantity INTEGER NOT NULL,
    txn_time TIMESTAMP
)
USING DELTA
TBLPROPERTIES ('delta.feature.catalogManaged' = 'supported');

/*
CREATE OR REPLACE TEMP TABLE twenty_rows as SELECT * FROM range(1,20);

BEGIN ATOMIC
   insertLoop: FOR row AS SELECT * FROM twenty_rows AS t(num) DO 
*/
        INSERT INTO main.raw.transactions_raw (item_id, quantity, txn_time) 
        SELECT 
            UNIFORM(1,100)
            , UNIFORM(1,5)
            , now();
/*
    END FOR insertLoop;
END;
*/