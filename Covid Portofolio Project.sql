-- Covid 19 Data Exploration 
-- Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types

Select *
From PortfolioProject..CovidDeaths
Order by 3,4

-- Select Data that we are going to be starting with

Select Location, date, total_cases, new_cases, total_deaths, population
From PortfolioProject..CovidDeaths
Order by 1,2

-- Total Cases vs Total Deaths
-- Shows the likelihood of dying if you contract Covid in Portugal

Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 As DeathPercentage 
From PortfolioProject..CovidDeaths
Where Location='Portugal'
Order by 1,2

-- Total Cases vs Population
-- Shows what percentage of population that got Covid 

Select Location, date, population, total_cases, (total_cases/population)*100 As PopulationPercentage 
From PortfolioProject..CovidDeaths
Where Location='Portugal'
Order by 1,2

--Countries with Highest Infection Rate compared to Population

Select Location, population, Max(total_cases) as HighestInfectionCount, Max((total_cases/population)*100) As PopulationPercentageInfected 
From PortfolioProject..CovidDeaths
Where continent is not null
Group By Location,population
Order by PopulationPercentageInfected DESC

-- Countries with Highest Death Count 

Select Location, Max(cast(Total_deaths as int)) as TotalDeathsCount
From PortfolioProject..CovidDeaths
Where continent is not null
Group By Location
Order by TotalDeathsCount DESC

--Continents with Highest Death Count

Select continent, Max(cast(Total_deaths as int)) as TotalDeathsCount
From PortfolioProject..CovidDeaths
Where continent is not null
Group By continent
Order by TotalDeathsCount DESC

-- Global Numbers

Select date, SUM(new_cases) as TotalCases, SUM(cast(new_deaths as int)) as TotalDeaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
Where continent is not null
Group by date 
Order by 1,2

Select SUM(new_cases) as TotalCases, SUM(cast(new_deaths as int)) as TotalDeaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
Where continent is not null 
Order by 1,2

-- Total Population vs Vaccinations

--With CTE

With PopvsVac (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(int,vac.new_vaccinations)) OVER (Partition by dea.location Order by dea.Location, dea.date) AS RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	And dea.date = vac.date
Where dea.continent is not null
) 
Select *, (RollingPeopleVaccinated/Population)*100 As PercentagePopulationVaccinated
From PopvsVac

--- With TEMP table

DROP table if exists #PrecentPopulationVaccinated
Create Table #PrecentPopulationVaccinated
(
continent nvarchar(255),
location nvarchar(255),
date datetime,
population numeric,
new_vaccinations numeric,
RollingPeopleVaccinated numeric
)
Insert into #PrecentPopulationVaccinated
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(int,vac.new_vaccinations)) OVER (Partition by dea.location Order by dea.Location, dea.date) AS RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	And dea.date = vac.date
Where dea.continent is not null

Select *, (RollingPeopleVaccinated/Population)*100 As PercentagePopulationVaccinated
From #PrecentPopulationVaccinated

--Creating a View
Create View PercentagePopulationVaccinated as 
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(int,vac.new_vaccinations)) OVER (Partition by dea.location Order by dea.Location, dea.date) AS RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	On dea.location = vac.location
	And dea.date = vac.date
Where dea.continent is not null

Select * 
From PercentagePopulationVaccinated
