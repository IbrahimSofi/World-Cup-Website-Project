<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>WC Information || Players</title>
    
    <h1>Player Information</h1>
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
    

</style>    
<body>
    
    <div class = Table4>
        
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
                $server = "localhost";
                $username = "root";
                $password = "";
                $dbNAME = "worldcup_info";

                $connect = mysqli_connect($server,$username,$password,$dbNAME);
                $display = "SELECT * FROM player_info";
                $result = mysqli_query($connect, $display);

                while($row = mysqli_fetch_assoc($result)){
                    ?>
                        <tr>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_name"]?>"><?php echo $row["p_name"]?></a></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_age"]?>"><?php echo $row["p_age"]?></a></td>
                            <td><a href="https://en.wikipedia.org/wiki/<?php echo $row["p_country"]?>_national_football_team"><?php echo $row["p_country"]?></a></td>
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


