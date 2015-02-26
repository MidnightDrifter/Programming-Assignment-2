SELECT playerName, DOB FROM players WHERE gender = 'female';
SELECT playerName, gamertag FROM players WHERE countryOfOrigin = 'USA';  /*Country is USA*/
SELECT matchID FROM matchinfo WHERE gameFourWinner = NULL AND gameFiveWinner = NULL;
SELECT SUM(prize) FROM tournamentinfo;
SELECT COUNT(*) FROM teaminfo WHERE activeStatus = 'inactive';
SELECT DISTINCT playerName FROM players JOIN playerlookup JOIN teaminfo ON players.playerID = playerlookup.playerID AND teaminfo.teamId = playerlookup.teamID WHERE teaminfo.activeStatus = 'inactive';
SELECT teamName FROM teaminfo JOIN teammatchlookup JOIN tournamentmatchlookup JOIN tournamentinfo ON teaminfo.teamId = teammatchlookup.winningTeamID AND teammatchlookup.matchID = matchinfo.matchID AND matchinfo.matchID = tournamentmatchlookup.matchID AND tournamentmatchlookup.tournament = tournamentinfo.title WHERE tournamentinfo.prize = MAX(SUM(prize));
SELECT teamName FROM teaminfo JOIN teammatchlookup WHERE COUNT(teamName) = MAX(COUNT(teamName));
SELECT SUM(prize), teamName FROM players JOIN playerlookup JOIN teaminfo JOIN teammatchlookup JOIN tournamentmatchlookup JOIN tournamentinfo ON players.playerID = playerlookup.playerID AND playerlookup.teamID = teaminfo.teamID AND teaminfo.teamID = teammatchlookup.winningTeamID AND teammatchlookup.matchID = tournamentmatchlookup.matchID AND tournamentmatchlookup.tournament = tournamentinfo.title WHERE COUNT(teammatchlookup.winningTeamID) = MAX(COUNT(teammatchlookup.winningTeamID));
SELECT SUM(prize), teamName FROM players JOIN playerlookup JOIN teaminfo JOIN teammatchlookup JOIN tournamentmatchlookup JOIN tournamentinfo ON players.playerID = playerlookup.playerID AND playerlookup.teamID = teaminfo.teamID AND teaminfo.teamID = teammatchlookup.winningTeamID AND teammatchlookup.matchID = tournamentmatchlookup.matchID AND tournamentmatchlookup.tournament = tournamentinfo.title WHERE players.playerName = "John Smith";
SELECT playerName, gamertag FROM players WHERE gender = 'female' AND DOB < 1-1-1992;  /*Return all female players born aftter Jan 1, 19992*/