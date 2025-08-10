SELECT
  a.*,
  c.`Gender`,
  c.`Age`,
  c.`Category`,
  s.`Sales Manager First Name`,
  s.`Sales Manager Last Name`,
  s.`Sales Team`,
  s.`2023 Sales Target`
FROM `Amazon Orders Dataset` AS a
LEFT JOIN `customer data` AS c
  ON a.`Customer ID` = c.`Customer ID`
LEFT JOIN `sales` AS s
  ON a.`Sales POC` = s.`Sales POC`