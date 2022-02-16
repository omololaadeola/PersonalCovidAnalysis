SELECT *
FROM PortfolioProject..CovidDeaths
ORDER BY 3,4



SELECT location, date,  total_cases, new_cases, total_deaths, population 
FROM PortfolioProject..CovidDeaths
ORDER BY 1,2


--Looking at total_cases Vs total_deaths
--Estimates probability of dying if you caught Covid

SELECT location, date,  total_cases, total_deaths, population, (total_cases/population)*100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths
WHERE location = 'Nigeria'
ORDER BY 1,2

--Looking at countries with the highest total_cases
SELECT location, population, MAX (total_cases) AS HighestInfectionCount, MAX((total_cases/population))*100 AS PercentOfPopulationInfected
FROM PortfolioProject..CovidDeaths
WHERE location = 'united states'
GROUP BY population, location
ORDER BY PercentOfPopulationInfected DESC

--Looking at Lowest affected country



