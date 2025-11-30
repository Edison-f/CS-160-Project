# CS-160 Project: SortSmart

## Features  
 1. Item Lookup  
 2. Category Buttons  
 3. Official Resources  
 4. Nearby Recyling Locations  
 5. Chatbot  
 6. Photo Recognition  

## Description  
The objective of SortSmart is to be able to create a simple, quick, accurate, and engaging tool that improves recycling practices across communities. SortSmart aims to reduce missorting by providing clear answers, locally guiding users to their respective recycling centers/locations with ease, and making recycling more time-efficient and simple through features like photo recognition and a 24/7 chatbot.  

## How to Run
1. Download all requirements from ```/backend/requirements.txt``` to your environment
2. Open up Docker on your machine  
3. Go to ```/.env``` and enter your ```GEMINI_API_KEY```
4. Initialize the database in a Docker container by running ```docker compose up -d``` in the terminal.  
5. Run ```/backend/app.py```  