# v2k4 FIFA 18 Career Mod

# How to Use? How to Install?

You Need:
- Frosty Editor 1.0.3alpha4 or above
- Latest FIFA Update
- Administrator Priviledges

How to install and run in FrostyEditor:
- Download the Zip provided (clone or download -> download zip)
- Extract Contents to subfolder of Frosty Editor
- Delete ModData from FIFA if it exists
- Delete fifa18.cache from FrostyEditor folder if it exists
- Run Frosty Editor as Administrator (If you recieve an error when loading fifa18.cache then delete the .cache file)
- Open the v2k4 career mod.fbproject provided using Frosty Editor (IF IT THROWS AN ERROR SEE BELOW)
- Click Launch -> Wait for FIFA to open (it may take 2 attempts to run)

FrostyEditor shows an error when opening the .fbproject file:
- If this happens then you are going to have to manually apply the files yourself
- To do this Open the folder to see all the files that are included
- Then in FrostyEditor, load FIFA->Legacy Viewer
- In the new Legacy Explorer Window open dlc -> dlc_FootballCompEng -> dlc -> FootballCompEng -> data (click the data folder)
- Right Click each of the files to update by this mod and Import file (you must do this one by one)
- open dlc -> dlc_FootballCompEng -> dlc -> FootballCompEng -> data -> Transfers (click the Transfers folder)
- Right Click each of the files to update by this mod and Import file (you must do this one by one)
- Once your finished SAVE your Project so that you can reload it next time you Play FIFA
- Click Launch



How to install and run in Frosty Mod Manager:
- Download the Mod file and archive.
- Place in the Mod Manager "Mods" folder. 
- It should now appear in mods selection in Mod Manager.

---------------------------

---------------------------
managerai.ini
---------------------------

~ TEAM SELECTION ~
- AI more likely to pick better players
---> This is acheived by lowering the ratio of "fitness"
-----> Can be tested by checking the "preview" news of the game. It now select the team I would normally pick & the opposition's team included the top scorer. 
-------> Matches are now much harder due to opposition selecting best (and in-form) 11.

---------------------------
cmsettings.ini
---------------------------

~ FITNESS ~
- Lowered fitness recovery

---------------------------
moralesettings.ini
---------------------------

~ MORALE ~
- Adopted a more Football Manager style of morale having game time
- Reserve/Young players are really happy about beingthat is more game by game oriented than league position
- Only first 11 players get irritated by not  played
- Wage expectation has been risen to have players act more like their real conterparts (greedy & overpaid)

---------------------------
training_progress.ini
---------------------------

- Added all attributes to the attribute list

---------------------------
training_drill_attributes_list.ini
---------------------------

- Added Sprint Speed to Dribbling (In testing)

--> How Do I add an attribute to a training?

- Open training_drill_attributes_list.ini
- Find the drill you would like to add to or change

- If your adding 
-----increase the NUMBER_OF_ATTRIBUTES by 1
-----add the ATTRIBUTE_ to bottom of the current list with the same number given above
-----set the = Number to what you need
-----the attributes list can be found in "training_progress"
-----

---------------------------
player_growth.ini
---------------------------
 
~ GROWTH ~
- Slight tweaks (needs more investigating into the new Curve system)


---------------------------
tcm_finance_settings.ini
---------------------------

- Increased Ticket Income for League 1 & 2 to be more realistic
- Increased Shirt Prices for League 1 & 2 to be more realistic
- Increased Ground Maintanance for ALL clubs

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Transfers

--------------------------------------
Transfers / TransfersLeagueBuckets.csv
--------------------------------------
- Increased the amount of teams that search per day to 20 (inside the transfer window)
- Increased the amount of teams that search per day to 5 (outside the transfer window)
- Increased the AI ability to search for team improvements (changed the modifiers that compares to own team)


