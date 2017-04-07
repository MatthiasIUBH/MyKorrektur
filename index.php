<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        include('model.php'); // call db.class.php
        $bdd = new db(); // create a new object, class db()
        
        $Users = $bdd->getAll('SELECT ID, vorname, nachname FROM testtabelle'); // select ALL from users
		
        $nbrUsers = count($Users); // return the number of lines

        echo $nbrUsers.' users in the database<br />';

        foreach($Users as $user) { // display the list
        echo $user['ID'].' - '.$user['vorname'].' - '.$user['nachname'].'<br>';	
        }
        ?>
    </body>
</html>
