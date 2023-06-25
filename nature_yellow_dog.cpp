#include <iostream>
#include <string>
#include <functional>
#include <algorithm>
#include <vector>

using namespace std;

// Function prototypes
void welcomeMessage();
void showMenu();
void showAgricultureTopics();
void showSustainableAgriculturePractices();
void showResourcesForFarmers();
void showCommunitiesGrowingFood();

// Global variables
int menuChoice;
string agricultureTopic;

int main()
{
	welcomeMessage();
	
	// Main loop
	while (menuChoice != 0)
	{
		showMenu();

		// Get user input for menu choice
		cin >> menuChoice; 
		
		switch (menuChoice)
		{
			case 1:
				showAgricultureTopics();
				break;
			case 2:
				showSustainableAgriculturePractices();
				break;
			case 3:
				showResourcesForFarmers();
				break;
			case 4:
				showCommunitiesGrowingFood();
				break;
			default:
				cout << "Invalid choice." << endl;
				break;
		}
	}

	return 0;
}

// Function definitions
void welcomeMessage()
{
	// Welcome message
	cout << "Welcome to A Project that Promotes Sustainable Agricultural Practices and Provides Resources for Farmers and Communities to Grow Healthy Food." << endl;
}

void showMenu()
{
	cout << "Menu:" << endl;
	cout << "1. Agriculture Topics" << endl;
	cout << "2. Sustainable Agriculture Practices" << endl;
	cout << "3. Resources for Farmers" << endl;
	cout << "4. Communities Growing Food" << endl;
	cout << "0. Exit" << endl;
	cout << "Please enter your choice: ";
}

void showAgricultureTopics()
{
	// Vector of agriculture topics
	vector<string> topics = {"Organic Farming", "Integrated Pest Management", "Agroforestry", "Crop Rotation", "Permaculture", "Soil Fertility Management"};

	// Print topics
	for (int i = 0; i < topics.size(); i++)
	{
		cout << topics[i] << endl;
	}
	
	// Get user input for topic
	cout << "Please enter an agriculture topic: ";
	cin >> agricultureTopic;
	
	// Check if topic exists in vector
	if (find(topics.begin(), topics.end(), agricultureTopic) != topics.end())
	{
		cout << "You have selected " << agricultureTopic << "." << endl;
	}
	else
	{
		cout << "Topic does not exist." << endl;
	}
}

void showSustainableAgriculturePractices()
{
	cout << "Sustainable agriculture practices include methods such as organic farming, integrated pest management, agroforestry, crop rotation, permaculture, and soil fertility management." << endl;
}

void showResourcesForFarmers()
{
	cout << "Resources available for farmers include government programs, grants, and educational materials." << endl;
}

void showCommunitiesGrowingFood()
{
	cout << "Communities growing food can start a community garden, use urban farming techniques, or create a farmers' market." << endl;
}