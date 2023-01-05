<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>WC Information || Matches</title>
    
    <h1>World Cup 2022 Matches</h1>
</head>
<style>

    html{
        font-family: Arial, Helvetica, sans-serif; 
    }
    body{
        margin:0;
        padding:0;
    }
    h1{
        text-align:center;
        font-size: 50px;
        margin: 100px;
    }
    h3{
        text-align: center;
        font-size: 30px;
    }

    .T1,.T2,th,td{
        margin: auto;
        border: 1px solid;
        border-collapse: collapse;
        
    }
    th{
        height: 70px;
        width: 150px;
        border: 2px solid;
        padding:10px;
        background-color:  rgb(33, 151, 1);
    }
    td{
        height:50px;
        text-align: center;
        padding:10px;
    }
    tr:hover{
        background-color: pink;
    }
    td a { 
        display: block; 
        padding: 20px;
        text-decoration: none;
        color: black;
    }
    td:hover{
        background-color: lightblue;
    }
    footer{
        padding: 50px;
        background-color: rgb(255, 255, 255);
    }
    

</style> 
<body>
    

    <div class = Table3>
        
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

                $server = "localhost";
                $username = "root";
                $password = "";
                $dbNAME = "worldcup_info";

                $connect = mysqli_connect($server,$username,$password,$dbNAME);
                $display = "SELECT * FROM match_info";
                $result = mysqli_query($connect, $display);

                while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <tr>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["country"]?>_national_football_team"><?php echo $row["country"]?></a></td>
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

   

    <footer>

            
    </footer>
</body>
</html>
