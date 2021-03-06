-- IMPORTANT NOTE
--  Weak spot player replacement feature currently removed in its entirety as a design choice.
--  The code here currently has incompatibilities with the transfer system added for FIFA18.
-----------------------------------------------------------------------------------------------

-- function ExamineFor_WeakSpot( months )
	-- local category = "WEAKSPOT"
	-- local storyId = "WEAKSPOT"
	-- local storyActive = Engine.IsStoryIDActive( storyId )
	-- if( storyActive == false ) then
		-- local numDays = Engine.GetNumDaysUntilNextTransferWindow()
		-- local teamId = Engine.GetUserTeam()	
		-- local numberOfDays = Tuning.WEAKSPOT.numberOfDays
		-- if( numDays < numberOfDays ) then
			-- local meetingObj = IsMeetingObjective( teamId )
			-- if( meetingObj == false ) then
				-- local teamPosition = Engine.GetLeaguePosition( teamId )
				-- if( teamPosition > Tuning.WEAKSPOT.teamPositionThreshold ) then
					-- local weakPlayer, playerArea = FindWeakAreaAndPlayer( teamId )
					-- if( weakPlayer > 0 ) then
						-- local objectiveStatus = Engine.GetTeamLeague_ActualVsExpectations( teamId )
						-- local chanceToStart = Tuning.WEAKSPOT.chanceToStart
						-- if( objectiveStatus > 3 ) then
							-- chanceToStart = Tuning.WEAKSPOT.chanceToStartHigh
						-- end
						-- if( RollPercentageDice( chanceToStart ) == true ) then
							-- StartStory_WeakSpot( teamId, weakPlayer, playerArea )
						-- end
					-- end
				-- end
			-- end
		-- end
	-- end
-- end

-- function StartStory_WeakSpot( teamId, playerId, playerArea )
	-- local category = "WEAKSPOT"
	-- local storyId = "WEAKSPOT"
	-- local weakSpotCooldown = Tuning.WEAKSPOT.weakSpotCooldown
	-- if( Engine.MarkPlayerForStory( teamId, playerId, category, storyId, weakSpotCooldown ) == true ) then
		-- local currentStory = Engine.GetStoryById( storyId )
		-- Engine.SetStoryPriority( currentStory, Tuning.WEAKSPOT.storyPriority )
		-- Engine.SetNoDeathAtEOS( currentStory )
		-- Engine.SetStoryVariable( currentStory, playerArea )
		-- Engine.SetStoryStage( currentStory, 1 )
		-- WeakSpot_Stage1( teamId, playerId, playerArea, currentStory )
	-- end
-- end

-- function FindWeakAreaAndPlayer( teamId )
	-- local weakArea = Engine.FindWeakestPitchArea( teamId )
	-- teamId = Engine.StackRankTeamByOverall( teamId )
	-- local numPlayersOnTeam = Engine.GetNumPlayers( teamId )
	-- local numPlayers = Tuning.WEAKSPOT.numPlayers
	-- if( numPlayersOnTeam < numPlayers ) then
		-- numPlayers = numPlayersOnTeam
	-- end
	-- local weakPlayer = 0
	-- local area = ""
	-- for playerCount = 1, numPlayers do
		-- local playerId = Engine.GetPlayer( teamId, playerCount )
		-- local playerArea = Engine.GetPlayerPitchArea( teamId, playerId )
		-- if( playerArea == weakArea ) then
			-- local playerForm = Engine.GetPlayerFormData( teamId, playerId )
			-- if( playerForm ~= "GOOD" or playerForm ~= "VERY_GOOD" ) then
				-- if( weakPlayer == 0 ) then
					-- weakPlayer = playerId
					-- area = playerArea
				-- else
					-- local overAll1 = Engine.GetPlayerOverall( weakPlayer )
					-- local overAll2 = Engine.GetPlayerOverall( playerId )
					-- if( overAll2 < overAll1 ) then
						-- weakPlayer = playerId
						-- area = playerArea
					-- end
				-- end
			-- end
		-- end
	-- end
	-- return weakPlayer, area
-- end

-- function WeakSpot_DynamicEvent( eventId, storyId )
	-- if( storyId == "WEAKSPOT" ) then
		-- if( eventId == "WEAKSPOT_stage2" ) then
			-- WeakSpot_Stage2( storyId )
		-- end
	-- end
-- end

-- function WeakSpot_Stage1( teamId, playerId, playerArea, currentStory )
	-- local weakPlayer = 0
	-- local newsWeight = Tuning.WEAKSPOT.newsWeight
	-- Engine.SetStringTeams( teamId )
	-- Engine.SetStringPlayers( playerId )
	-- local newNews = Engine.CreateNews( "WEAKSPOT", "news_title_weakspot_stage1_", 2 )
	-- Engine.SetStringTeams( teamId )
	-- Engine.SetStringPlayers( playerId )
	-- Engine.AddParagraph( newNews, newsWeight, "news_body_weakspot_stage1_" .. playerArea .. "_", 2 )
	-- local playerForm = Engine.GetPlayerFormData( teamId, playerId )
	-- if( playerForm == "VERY_BAD" or playerForm == "BAD" ) then
		-- Engine.SetStringTeams( teamId )
		-- Engine.SetStringPlayers( playerId )
		-- Engine.AddParagraph( newNews, newsWeight - 1, "news_body_weakspot_stage1_poorform_", 2 )
		-- weakPlayer = playerId
	-- end
	-- Engine.SetNewsForegroundImage( "CENTER", "CLUB_CREST", teamId, newNews )
	-- Engine.SetNewsBackgroundImage( "MANAGER_SUIT", newNews )
	-- PublishArticle( currentStory, newNews, "MAJOR", teamId, weakPlayer )
	-- Engine.AddDateEvent( "WEAKSPOT_stage2", Tuning.WEAKSPOT.daysBetweenStage1Stage2, "WEAKSPOT" )
-- end

-- function WeakSpot_Stage2( storyId )
	-- local currentStory = Engine.GetStoryById( storyId )
	-- local storyPlayer = Engine.GetStoryPlayer( currentStory )	
	-- local storyTeam = Engine.GetStoryTeam( currentStory )
	-- local storyVar = Engine.GetStoryVariable( currentStory )
	-- local chosenPlayer = 0
	-- local playerTable = { Engine.FindSuitableReplacementPlayer( storyTeam, storyPlayer, 10 ) }
	-- local numOffers = # playerTable
	-- local chosenPlayers = {}
	-- if( numOffers > 1 ) then
		-- for playerCount = 2, numOffers do
			-- local playerId = playerTable[ playerCount ]
			-- local teamId = Engine.GetTeamIdFromPlayerId( playerId )
			-- local playerArea = Engine.GetPlayerPitchArea( teamId, playerId )
			-- if( playerArea == storyVar ) then
				-- local starPlayer = Engine.IsStarPlayer( playerId )
				-- local playerAge = Engine.GetPlayerAge( teamId, playerId )
				-- if( starPlayer == false and playerAge < Tuning.WEAKSPOT.playerAgeThreshold ) then
					-- table.insert( chosenPlayers, playerId )
				-- end
			-- end
		-- end
	-- end
	-- local numPlayers = # chosenPlayers
	-- if( numPlayers > 0 ) then
		-- local newsWeight = Tuning.WEAKSPOT.newsWeight
		-- Engine.SetStringPlayers( playerId )
		-- Engine.SetStringTeams( storyTeam )
		-- local newNews = Engine.CreateNews( "WEAKSPOT", "news_title_weakspot_stage2_", 2 )
		-- Engine.SetStringPlayers( playerId )
		-- Engine.SetStringTeams( storyTeam )
		-- newsWeight = newsWeight - 1
		-- Engine.AddParagraph( newNews, newsWeight, "news_body_weakspot_stage2_" .. storyVar .. "_", 2 )
		-- local variationCount = 1
		-- for playerCount = 1, numPlayers do
			-- if( variationCount == 5 ) then
				-- break
			-- else
				-- local playerId = chosenPlayers[ playerCount ]
				-- local teamId = Engine.GetTeamIdFromPlayerId( playerId )
				-- local height = Engine.GetPlayerDBValue( playerId, "height" )	
				-- Engine.SetStringPlayers( playerId )
				-- Engine.SetStringTeams( teamId, storyTeam )
				-- newsWeight = newsWeight - 1
				-- Engine.AddParagraphForceVariation( newNews, newsWeight, "news_body_weakspot_stage2_player_", variationCount, height )
				-- variationCount = variationCount + 1
			-- end
		-- end
		-- Engine.SetNewsBackgroundImage( "MANAGER_SUIT", newNews )
		-- PublishArticle( currentStory, newNews, "MAJOR", storyTeam, 0 )
		-- Engine.SetStoryStage( currentStory, 2 )
	-- end
-- end

-- function WeakSpot_Stage3( numDays )
	-- local daysBeforeWindow = Tuning.WEAKSPOT.daysBeforeWindow
	-- if( numDays == daysBeforeWindow ) then
		-- local category = "WEAKSPOT"
		-- local storyId = "WEAKSPOT"
		-- local storyActive = Engine.IsStoryIDActive( storyId )
		-- if( storyActive == true ) then
			-- local currentStory = Engine.GetStoryById( storyId )
			-- local storyPlayer = Engine.GetStoryPlayer( currentStory )	
			-- local storyTeam = Engine.GetStoryTeam( currentStory )
			-- local storyVar = Engine.GetStoryVariable( currentStory )
			-- local playerTable = { Engine.FindSuitableReplacementPlayer( storyTeam, storyPlayer, 10 ) }
			-- local playerId = 0
			-- local teamId = 0
			-- local numPlayers = # playerTable
			-- if( numPlayers > 0 ) then
				-- for playerCount = 2, numPlayers do
					-- playerId = playerTable[ playerCount ]
					-- if( playerId > 0 ) then
						-- teamId = Engine.GetTeamIdFromPlayerId( playerId )
						-- local playerNationId = Engine.GetPlayerNationalityId( playerId )
						-- local teamNationId = GetTeamNation( storyTeam )
						-- if( playerNationId == teamNationId ) then
							-- local newsWeight = Tuning.WEAKSPOT.newsWeight
							-- Engine.SetStringPlayers( playerId )
							-- Engine.SetStringTeams( teamId, storyTeam )
							-- local newNews = Engine.CreateNews( "WEAKSPOT", "news_title_weakspot_stage3_", 2 )
							-- Engine.SetNewsForegroundImage( "CENTER", "PLAYER_IMG", playerId, newNews )
							-- Engine.SetNewsForegroundImage( "RIGHT", "NATIONAL_FLAG", playerNationId, newNews )
							-- Engine.SetNewsBackgroundImage( "FANS_CELEBRATING", newNews )
							-- Engine.SetStringPlayers( playerId )
							-- Engine.SetStringTeams( teamId, storyTeam )
							-- Engine.AddParagraph( newNews, newsWeight, "news_body_weakspot_stage3_", 2 )
							-- PublishArticle( currentStory, newNews, "MAJOR", storyTeam, playerId )
							-- break
						-- end	
					-- end
				-- end
			-- end
			-- local objectiveStatus = Engine.GetTeamLeague_ActualVsExpectations( storyTeam )
			-- local chanceBoardWantsPlayer = Tuning.WEAKSPOT.chanceBoardWantsPlayer
			-- if( objectiveStatus > 3 ) then
				-- chanceBoardWantsPlayer = Tuning.WEAKSPOT.chanceBoardWantsPlayerHigh
			-- end
			-- if( RollPercentageDice( chanceBoardWantsPlayer ) == true ) then
				-- local userName = Engine.GetUsername()
				-- Engine.SetStringPlayers( playerId )
				-- Engine.SetStringTeams( storyTeam, teamId )
				-- TriggerEmail( false, userName, "CM_Inbox_Sender_Board", "CM_Email_Subject_weakspot_stage3_", 1, 2, "CM_Email_Body_weakspot_stage3_" .. storyVar .. "_", 1, 2 )
				-- Engine.SetStoryStage( currentStory, 3 )
			-- end
		-- end
	-- end
-- end

-- function WeakSpot_Stage4( numDays )
	-- local daysbeforePurchase = Tuning.WEAKSPOT.daysbeforePurchase
	-- if( numDays == daysbeforePurchase ) then
		-- local category = "WEAKSPOT"
		-- local storyId = "WEAKSPOT"
		-- local storyActive = Engine.IsStoryIDActive( storyId )
		-- if( storyActive == true ) then
			-- local currentStory = Engine.GetStoryById( storyId )
			-- local stage = Engine.GetStoryStage( currentStory )
			-- if( stage == 3 ) then
				-- local storyPlayer = Engine.GetStoryPlayer( currentStory )	
				-- local storyTeam = Engine.GetStoryTeam( currentStory )
				-- local transferFunds, wageFunds = Engine.GetRemainingUserTeamBudget( storyTeam )
				-- local teamBudget = Engine.GetTeamBudget( storyTeam )
				-- local ratio = Tuning.WEAKSPOT.maxTransferFundsBudgetRatio
				-- if( transferFunds / teamBudget <= ratio ) then
					-- local objectiveStatus = Engine.GetTeamLeague_ActualVsExpectations( storyTeam )
					-- local chanceBoardBuys = Tuning.WEAKSPOT.chanceBoardBuys
					-- if( objectiveStatus > 3 ) then
						-- chanceBoardBuys = Tuning.WEAKSPOT.chanceBoardBuysHigh
					-- end
					-- if( RollPercentageDice( chanceBoardBuys ) == true ) then
						-- local storyVar = Engine.GetStoryVariable( currentStory )
						-- local replacement = GetReplacementPlayerId( storyTeam, storyPlayer, storyVar ) -- Return Different players each time.
						-- if( replacement > 0 ) then
							-- local numPlayersInSquad = Engine.GetNumPlayers( storyTeam, true )
							-- local numPlayersLimit = Tuning.WEAKSPOT.maxPlayersInSquad + 1;
							-- if( numPlayersInSquad < numPlayersLimit ) then
								-- Engine.SetStoryStage( currentStory, 4 )
								-- local teamId = Engine.GetTeamIdFromPlayerId( replacement )
								-- Engine.ForceTransfer( teamId, replacement, storyTeam, true )
								-- local userName = Engine.GetUsername()
								-- Engine.SetStringPlayers( replacement )
								-- Engine.SetStringTeams( storyTeam, teamId )
								-- TriggerEmail( false, userName, "CM_Inbox_Sender_Board", "CM_Email_Subject_weakspot_stage4_", 1, 2, "CM_Email_Body_weakspot_stage4_", 1, 2 )
							-- end
						-- end
					-- end
				-- end
			-- end
		-- end
	-- elseif( numDays == 0 ) then
		-- local storyId = "WEAKSPOT"
		-- local storyActive = Engine.IsStoryIDActive( "WEAKSPOT" )
		-- if( storyActive == true ) then
			-- Engine.EndStoryId( storyId )
		-- end
	-- end
-- end

-- function WeakSpot_TransferStage( buyingTeam, sellingTeam, playerId, transfer, contract, price, wage, playerValue )
	-- if( buyingTeam == Engine.GetUserTeam() ) then
		-- local category = "WEAKSPOT"
		-- local storyId = "WEAKSPOT"
		-- local storyActive = Engine.IsStoryIDActive( storyId )
		-- if( storyActive == true ) then
			-- local currentStory = Engine.GetStoryById( storyId )
			-- local storyVar = Engine.GetStoryVariable( currentStory )
			-- local storyTeam = Engine.GetStoryTeam( currentStory )
			-- local playerArea = Engine.GetPlayerPitchArea( buyingTeam, playerId )
			-- if( playerArea == storyVar ) then
				-- if( sellingTeam ~= 111592 ) then
					-- local newsWeight = Tuning.WEAKSPOT.newsWeight
					-- Engine.SetStringPlayers( playerId )
					-- Engine.SetStringTeams( buyingTeam, sellingTeam )
					-- local newNews = Engine.CreateNews( "WEAKSPOT", "news_title_weakspot_stage5_", 2 )
					-- local stage = Engine.GetStoryStage( currentStory )
					-- Engine.SetStringPlayers( playerId )
					-- Engine.SetStringTeams( buyingTeam, sellingTeam )
					-- if( stage == 4 ) then
						-- Engine.SetStringCurrency( price )
						-- Engine.AddParagraph( newNews, newsWeight, "news_body_weakspot_stage5_", 2 )
					-- else
						-- Engine.SetNewsHeadlineByObject( newNews, "news_title_weakspot_stage6_", 2 )
						-- Engine.SetStringPlayers( playerId )
						-- Engine.SetStringTeams( buyingTeam, sellingTeam )
						-- Engine.AddParagraph( newNews, newsWeight, "news_body_weakspot_stage6_", 2 )
						-- local teamOverall = Engine.GetTeamOverall( buyingTeam )
						-- local playerOverall = Engine.GetPlayerOverall( playerId )
						-- Engine.SetStringPlayers( playerId )
						-- Engine.SetStringTeams( buyingTeam, sellingTeam )
						-- Engine.SetStringCurrency( price )
						-- if( playerOverall > teamOverall ) then
							-- Engine.AddParagraph( newNews, newsWeight - 2, "news_body_weakspot_stage6_highoverall_", 2 )
						-- else
							-- Engine.AddParagraph( newNews, newsWeight - 2, "news_body_weakspot_stage6_lowoverall_", 2 )
						-- end				
					-- end
					-- local playerNationId = Engine.GetPlayerNationalityId( playerId )
					-- local teamNationId = GetTeamNation( storyTeam )
					-- if( playerNationId == teamNationId ) then
						-- Engine.SetStringPlayers( playerId )
						-- Engine.SetStringTeams( buyingTeam, sellingTeam )
						-- Engine.AddParagraph( newNews, newsWeight - 1, "news_body_weakspot_stage6_fanfavourite_", 2 )
					-- end
					-- PublishArticle( currentStory, newNews, "MAJOR", buyingTeam, playerId )
				-- end
				-- Engine.SetStoryStage( currentStory, 5 )
				-- Engine.ReplaceStoryPlayer( currentStory, buyingTeam, playerId )
				-- Engine.KillStoryAfterMatch( currentStory )
			-- end
		-- end
	-- end
-- end

-- function GetReplacementPlayerId( teamId, playerId, storyVar )
	-- local chosenPlayer = 0
	-- local numOffersForReplacement = Tuning.WEAKSPOT.numOffersForReplacement
	-- local playerTable = { Engine.FindSuitableReplacementPlayer( teamId, playerId, numOffersForReplacement ) }
	-- local numOffers = # playerTable
	-- local chosenPlayers = {}
	-- if( numOffers > 1 ) then
		-- for playerCount = 2, numOffers do
			-- local playerId = playerTable[ playerCount ]
			-- local teamId = Engine.GetTeamIdFromPlayerId( playerId )
			-- local playerArea = Engine.GetPlayerPitchArea( teamId, playerId )
			-- if( playerArea == storyVar ) then
				-- local starPlayer = Engine.IsStarPlayer( playerId )
				-- if( starPlayer == false ) then
					-- table.insert( chosenPlayers, playerId )
				-- end
			-- end
		-- end
	-- end
	-- local numPlayers = # chosenPlayers
	-- if( numPlayers > 0 ) then
		-- local rand = Engine.GetRandomNumber( 1, numPlayers )
		-- chosenPlayer = chosenPlayers[ rand ]
	-- end
	-- return chosenPlayer
-- end