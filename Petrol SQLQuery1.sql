SELECT * FROM gas_prices.dbo.['Petrol Dataset June 20 2022$']

SELECT * FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']


SELECT gas2.Country, gas2.[Daily Oil Consumption (Barrels)], gas1.[World Share], gas2.[Yearly Gallons Per Capita], gas2.[Price Per Gallon (USD)], gas2.[Price Per Liter (USD)],
gas2.[GDP Per Capita ( USD )], gas2.[Gallons GDP Per Capita Can Buy], gas2.[xTimes Yearly Gallons Per Capita Buy]
FROM gas_prices.dbo.['Petrol Dataset June 20 2022$'] gas1
JOIN gas_prices.dbo.['Petrol Dataset June 23 2022 -- $'] gas2
ON gas1.Country = gas2.Country 


--Daily Gallons Used Per Capita
SELECT Country, [Yearly Gallons Per Capita] / 365 AS [Yearly Gallons Per Capita]
FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']



--Price Per Gallon Comparison
SELECT Country, [Price Per Gallon (USD)]
FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']
WHERE Country IN ('North Korea', 'Japan', 'United States', 'China', 'India', 'United Kingdom', 'Mexico', 'Canada', 'Russia', 'Ukraine', 'South Korea', 'Saudi Arabia', 'Turkey')



--World Share
SELECT Country, [World Share] * 100 AS [World Share]
FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']


--Global Numbers
SELECT SUM ([Daily Oil Consumption (Barrels)]) AS [Global Consumption]
FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']


--SELECT AVG ([Yearly Gallons Per Capita])
--FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']


SELECT AVG ([Price Per Gallon (USD)]) AS [Average Price Globally]
FROM gas_prices.dbo.['Petrol Dataset June 23 2022 -- $']



