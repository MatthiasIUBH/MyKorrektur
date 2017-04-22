<?php

if(isset($_GET['submit'])) {

        include('model.php'); // Model-Klasse für DB Operationen aufrufen
        $KorrekturSubmit = new db(); // Erstelle ein neues Object, Klasse db()
        
        //Variablen belegen
        $material = $_GET['material'];
        $module = $_GET['module'];
        $type = $_GET['type'];
        $description = $_GET['description'];
        $email = $_SESSION['email'];

        //Daten in DB schreiben
        $user = $KorrekturSubmit->execute("INSERT INTO korrektur  (email, module, type, description, material)
                                                  VALUES('$email', '$module', '$type', '$description', '$material');");
        
        //Sessionflag wird gesetzt und ein Redirect wird ausgeführt --> auf der Seite wird dann auch der erfolgreiche DB insert angezeigt
        $_SESSION['submitflag'] = true;
        header("location: vKorrektur.php");
        }
        
?>

