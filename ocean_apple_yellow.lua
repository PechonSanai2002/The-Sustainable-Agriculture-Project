--The Sustainable Agriculture Project
--Initializing the Lua Script

math.randomseed( os.time() )

--Global Variables & Functions 
cityName = { "Tokyo", "New York", "Beijing", "Shanghai", "Mumbai"}
soilType = { "clay", "loam", "sandy", "muck"}
waterSource = { "river", "rain", "ground"}

function randomCityName()
	return cityName[math.random(1, #cityName)]
end

function randomSoilType()
	return soilType[math.random(1, #soilType)]
end

function randomWaterSource()
	return waterSource[math.random(1, #waterSource)]
end

--Main Code
print("The Sustainable Agriculture Project")

--Creating the global city table
cityTable = {}

--Looping through the cities
for i = 1, #cityName do

	--Creating a table for each city
	cityTable[cityName[i]] = {}

	--Setting up the city table
	cityTable[cityName[i]]["soilType"] = randomSoilType()
	cityTable[cityName[i]]["waterSource"] = randomWaterSource()
end

print("Cities with Soil & Water Sources:")

--Looping through the cities
for i = 1, #cityName do
    
	--Printing the city information
    print("City: " .. cityTable[cityName[i]]["soilType"] .. 
    	" | Water Source: " ..  cityTable[cityName[i]]["waterSource"])
end

--Creating the global crop yield table
yieldTable = {}

--Looping through the cities
for i = 1, #cityName do

	--Creating a table for each city
	yieldTable[cityName[i]] = {}

	--Setting up the city table
	yieldTable[cityName[i]]["cornYield"] = math.random(100,500)
	yieldTable[cityName[i]]["riceYield"] = math.random(100,500)
end

print("\nCrop Yields:")

--Looping through the cities
for i = 1, #cityName do
    
	--Printing the crop yield information
    print("City: " .. cityName[i] .. 
    	" | Corn Yield: " ..  yieldTable[cityName[i]]["cornYield"] ..
    	" | Rice Yield: " ..  yieldTable[cityName[i]]["riceYield"])
end

--Creating the global crop table
cropTable = {}

--Looping through the cities
for i = 1, #cityName do

	--Creating a table for each city
	cropTable[cityName[i]] = {}

	--Setting up the city table
	cropTable[cityName[i]]["corn"] = math.random(1,10)
	cropTable[cityName[i]]["rice"] = math.random(1,10)
end

print("\nNumber of Crops Grown:")

--Looping through the cities
for i = 1, #cityName do
    
	--Printing the crop information
    print("City: " .. cityName[i] .. 
    	" | Corn: " ..  cropTable[cityName[i]]["corn"] ..
    	" | Rice: " ..  cropTable[cityName[i]]["rice"])
end

--Creating the global yield rate table
yieldRateTable = {}

--Looping through the cities
for i = 1, #cityName do

	--Creating a table for each city
	yieldRateTable[cityName[i]] = {}

	--Setting up the city table
	yieldRateTable[cityName[i]]["cornRate"] = (yieldTable[cityName[i]]["cornYield"] * cropTable[cityName[i]]["corn"])
	yieldRateTable[cityName[i]]["riceRate"] = (yieldTable[cityName[i]]["riceYield"] * cropTable[cityName[i]]["rice"])
end

print("\nCrop Yield Rates:")

--Looping through the cities
for i = 1, #cityName do
    
	--Printing the yield rate information
    print("City: " .. cityName[i] .. 
    	" | Corn Yield Rate: " ..  yieldRateTable[cityName[i]]["cornRate"] ..
    	" | Rice Yield Rate: " ..  yieldRateTable[cityName[i]]["riceRate"])
end

--Calculating the total yield rate
totalYieldRate = 0

--Looping through the cities
for i = 1, #cityName do
    
	--Adding the yield rate to the total
    totalYieldRate = totalYieldRate + 
    	(yieldRateTable[cityName[i]]["cornRate"] + yieldRateTable[cityName[i]]["riceRate"])
end

print("\nTotal Yield Rate: " .. totalYieldRate)