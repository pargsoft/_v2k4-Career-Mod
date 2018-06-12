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
- Download the Mod file and archive. [From here](https://1drv.ms/f/s!AnhDYHPF81b3gdN6vWXKsuIf7pq6Gg)
- Place in the Mod Manager "Mods" folder. 
- It should now appear in mods selection in Mod Manager.

---------------------------

# Features / Changes

---------------------------
board.ini
---------------------------

- Removed Sacking

---------------------------
cmsettings.ini
---------------------------

__FITNESS__

- Lowered fitness recovery

__MODIFIERS__

- Increased Form Modifier
- Lowered Away Modifier (making it harder to play Away games)

---------------------------
formsettings.ini
---------------------------

__FORM__

- Improved Form Variation between players (no longer all players ^ for example)

---------------------------
GTNDataReveal.csv
---------------------------

__SCOUTING__

- Increased scouting ability in own division
- Increased overall scouting ability/speed


---------------------------
managerai.ini
---------------------------

__TEAM SELECTION__

- AI more likely to pick better players
- This is acheived by lowering the ratio of "fitness"
- Can be tested by checking the "preview" news of the game. It now select the team I would normally pick & the opposition's team included the top scorer. 
- Matches are now much harder due to opposition selecting best (and in-form) 11.
- 
- place in dlc -> dlc_FootballCompEng -> dlc -> FootballCompEng -> data 
- place in data -> teammanagement



---------------------------
moralesettings.ini
---------------------------

__MORALE__

- Adopted a more Football Manager style of morale having game time
- Reserve/Young players are now happier from being selected once or twice
- Only first 11 players get irritated by not being selected
- Wage expectation has been risen to have players act more like their real conterparts (greedy & overpaid, causes starting morale to be low, dont worry)

---------------------------
player_growth.ini
---------------------------
 
__GROWTH__
- [x] Stopped "overgrowth" of players reaching abilities way beyond their potential (tested and works)
- [ ] (Incomplete) Stop old players declining by so much

---------------------------
playervalues.ini
---------------------------
 
- A complete re-design of the modifiers. Players like Neymar/Lukaku/Messi are over £100m now and almost impossible to buy.

---------------------------
playerwages.ini
---------------------------
 
- A complete re-design of the modifiers. 
- [x] Players ask for more in the higher leagues
- [x] Players ask for less in the lower leagues (matches Football Manager values in League 2)


---------------------------
training_progress.ini
---------------------------

__TRAINING__

- Added all attributes to the attribute list

---------------------------
training_drill_attributes_list.ini
---------------------------

__TRAINING__

- Added Sprint Speed to Dribbling (In testing)

**How Do I add an attribute to a training?**

- Open training_drill_attributes_list.ini
- Find the drill you would like to add to or change

**If your adding** 
- increase the NUMBER_OF_ATTRIBUTES by 1
- add the ATTRIBUTE_ to bottom of the current list with the same number given above
- set the = Number to what you need
- the attributes list can be found in "training_progress"




---------------------------
tcm_finance_settings.ini
---------------------------

__FINANCE__
- [x] Increased Shirt Prices for League 1 & 2 to be more realistic
- [x] Increased Shirt Prices for Popular players (i.e. Neymar / Messi) so that signing good players earns money back
- [x] Increased Ground Maintanance for ALL clubs
- [x] Increased "Ticket" Income to include TV Revenue
- [ ] Improve other leagues Ticket Income
- [ ] Improve other leagues Shirt Prices
- [ ] (Looks impossible) Reduce money available to clubs in lower league (remove >£1m purchases from L1 & L2)


# Transfers

--------------------------------------
Transfers
--------------------------------------
- [x] Improved AI searching for players that they need
- [x] Improved AI selling/loaning reserve/youth players
- [x] Increased the amount of teams that search per day (makes the game a little slower between days)


