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
        include('model.php'); // Model-Klasse für DB Operationen aufrufen
        $bdd = new db(); // Erstelle ein neues Object, Klasse db()
        
        $Users = $bdd->getAll('SELECT ID, vorname, nachname FROM testtabelle'); // SQL Query, 
		
        $nbrUsers = count($Users); // Anzahl der Datensätze zurück geben

        echo $nbrUsers.' Datensätze<br />';

        foreach($Users as $user) { // Alle Datensätze anzeigen
        echo $user['ID'].' - '.$user['vorname'].' - '.$user['nachname'].'<br>';	
        }
        ?>
    </body>
</html>
