<?php

if(isset($_GET['submit'])) {

        include('model.php'); // Model-Klasse für DB Operationen aufrufen
        $bdd = new db(); // Erstelle ein neues Object, Klasse db()
        
        //Variablen belegen
        $material = $_GET['material'];
        $module = $_GET['module'];
        $type = $_GET['type'];
        $description = $_GET['description'];
        $email = $_SESSION['email'];

        //Daten in DB schreiben
        $user = $bdd->execute("INSERT INTO korrektur  (email, module, type, description, material)
                                                  VALUES('$email', '$module', '$type', '$description', '$material');");
         
        //Bootstrap spielereien
        echo '<br><div class="alert alert-success alert-dismissable">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Insert erfolgreich!</div>';
        
        //header("location: vKorrektur.php");
        //exit;
        }
        
?>

