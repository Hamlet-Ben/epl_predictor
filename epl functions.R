#epl predictor functions

#calculate the goals per game for each team


function(dat){
  
  res <- list()
  
  for(team in sort(unique(dat$HomeTeam))){
    
    team_goals_home <- subset(dat, HomeTeam == team)$FTHG
    team_goals_away <- subset(dat, AwayTeam == team)$FTAG
    
    team_goals_home_con <- subset(dat, HomeTeam == team)$FTAG
    team_goals_away_con <- subset(dat, AwayTeam == team)$FTHG
    
    res[[team]] <- c(mean(c(team_goals_home, team_goals_away)), mean(team_goals_home), mean(team_goals_away), mean(c(team_goals_home_con, team_goals_away_con)), mean(team_goals_home_con), mean(team_goals_away_con))
    
  }
  
  res <- do.call("rbind", res)
  res <- as.data.frame(res)
  names(res) <- c("All_mean", "Home_mean", "Away_mean", "All_con_mean", "Home_con_mean", "Away_con_mean")
  
}
