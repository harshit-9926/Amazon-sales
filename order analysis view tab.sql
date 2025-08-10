CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `customer_orders_analysis` AS
    SELECT 
        `o`.`Order ID` AS `Order ID`,
        `o`.`Customer ID` AS `Customer ID`,
        `c`.`Customer Country` AS `Customer Country`,
        `c`.`Gender` AS `Gender`,
        `c`.`Age` AS `Age`,
        `c`.`Category` AS `Category`,
        `o`.`Order Datetime` AS `Order Datetime`,
        `o`.`Order Source` AS `Order Source`,
        `o`.`Sales POC` AS `Sales POC`,
        `s`.`Sales Manager First Name` AS `Sales Manager First Name`,
        `s`.`Sales Manager Last Name` AS `Sales Manager Last Name`,
        `s`.`Sales Team` AS `Sales Team`,
        `s`.`2023 Sales Target` AS `2023 Sales Target`,
        `o`.`Order Value` AS `Order Value`
    FROM
        ((`amazon orders dataset` `o`
        LEFT JOIN `customer data` `c` ON ((`o`.`Customer ID` = `c`.`Customer ID`)))
        LEFT JOIN `sales` `s` ON ((`o`.`Sales POC` = `s`.`Sales POC`)))