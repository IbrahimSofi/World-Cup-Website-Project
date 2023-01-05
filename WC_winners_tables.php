<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="WC_winners_tables.css">
    <title>WC Information || History</title>
    
    <h1>History of the World Cup</h1>
</head>

<body>
    <div class = Table1>
        <h3>Winner History</h3>
        <table class = T1>
            <tr>
                <th>Year</th>
                <th>Winner</th>
                <th>Score</th>
                <th>Runner up</th>    
                <th>Host Nation</th>
                <th>Venue</th>
            </tr> 
            
            
            <?php
                $server = "localhost";
                $username = "root";
                $password = "";
                $dbNAME = "worldcup_info";

                $connect = mysqli_connect($server,$username,$password,$dbNAME);
                $display = "SELECT * FROM HistoryList";
                $result = mysqli_query($connect, $display);

                while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <tr>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["YEAR"]?>_FIFA_World_Cup"><?php echo $row["YEAR"]?></a></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["WINNER"]?>_national_football_team"><?php echo $row["WINNER"]?></a></td>
                            <td><?php echo $row["SCORE"]?></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["RUNNER_UP"]?>_national_football_team"><?php echo $row["RUNNER_UP"]?></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["YEAR"]?>_FIFA_World_Cup"><?php echo $row["HOST"]?></a></td>
                            <td><?php echo $row["VENUE"]?></td>
                        </tr>    

                    <?php
                }

            ?>
        </table>    
    </div>

    <div class = Table2>
        <br><br><br><br>
        <h3>Records</h3>
        <table class = T2>
             <tr>
                <th>Team</th>
                <th>Wins</th>
                <th>Finals Attended</th>
                <th>Years won</th>
            </tr> 
            

            <?php
                $display = "SELECT * FROM Result order by WINS DESC, FINALS_ATTENDED DESC ";
                $result = mysqli_query($connect, $display);

                while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <tr>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["TEAM"]?>_national_football_team"><?php echo $row["TEAM"]?></a></td>
                            <td><?php echo $row["WINS"]?></td>
                            <td><?php echo $row["FINALS_ATTENDED"]?></td>
                            <td><?php echo $row["YEARS_WON"]?></td>
                        </tr>    

                    <?php
                }

            ?>
        </table>
        <br><br><br><br>
    </div>

    <div class = Table3>
        <h3>Match Information</h3>
        <table class = T1>
            <tr>
                <th>Country</th>
                <th>Stadium</th>
                <th>Shots</th>
                <th>Shots on Tar.</th>    
                <th>Penalty Goals</th>
                <th>Match Goals</th>
                <th>Fouls</th>
                <th>Corners</th>
                <th>Yellow Card</th>
                <th>Red Card</th>
                <th>Match Name</th>
                <th>Match Year</th>
            </tr> 
                     
            <?php
                $display = "SELECT * FROM match_info";
                $result = mysqli_query($connect, $display);

                while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <tr>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["country"]?>"><?php echo $row["country"]?></a></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["stadium"]?>"><?php echo $row["stadium"]?></a></td>
                            <td><?php echo $row["shots"]?></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["shots_on_target"]?>"><?php echo $row["shots_on_target"]?></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["panalty_goals"]?>"><?php echo $row["panalty_goals"]?></a></td>
                            <td><?php echo $row["match_goals"]?></td>
                            <td><?php echo $row["fouls"]?></td>
                            <td><?php echo $row["corners"]?></td>
                            <td><?php echo $row["yellow_card"]?></td>
                            <td><?php echo $row["red_card"]?></td>
                            <td><?php echo $row["match_name"]?></td>
                            <td><?php echo $row["match_year"]?></td>
                        </tr> 

                    <?php
                }

            ?>
        </table>    
    </div>

    <div class = Table4>
        <h3>Player Information</h3>
        <table class = T1>
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Country</th>
                <th>Club</th>    
                <th>Position</th>
                <th>Yellow card</th>
                <th>Red card</th>
                <th>Assist</th>
                <th>Goals</th>
            </tr> 
            
            
            <?php
                $display = "SELECT * FROM player_info";
                $result = mysqli_query($connect, $display);

                while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <tr>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_name"]?>"><?php echo $row["p_name"]?></a></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_age"]?>"><?php echo $row["p_age"]?></a></td>
                            <td><?php echo $row["p_country"]?></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_club"]?>"><?php echo $row["p_club"]?></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_position"]?>"><?php echo $row["p_position"]?></a></td>
                            <td><?php echo $row["yellow_card"]?></td>
                            <td><?php echo $row["red_card"]?></td>
                            <td><?php echo $row["assists"]?></td>
                            <td><?php echo $row["p_goals"]?></td>
                        </tr> 

                    <?php
                }

            ?>
        </table>    
    </div>

    <footer>

            
    </footer>
</body>
</html>


