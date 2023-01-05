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
                $display = "SELECT * FROM historylist";
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
                $display = "SELECT * FROM result order by WINS DESC, FINALS_ATTENDED DESC ";
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

    <footer>

            
    </footer>
</body>
</html>



