<?php

if(isset($_GET['submit']) && $_SESSION['rolle'] == 'Student') {

        include('model.php'); // Model-Klasse für DB Operationen aufrufen
        $KorrekturSubmit = new db(); // Erstelle ein neues Object, Klasse db()
        $GetDozentId = new db(); // Erstelle ein neues Object, Klasse db()
        
        //Variablen belegen
        $material = $_GET['material'];
        $module = $_GET['module'];
        $type = $_GET['type'];
        $description = $_GET['description'];
        $email = $_SESSION['email'];
        $userid = $_SESSION['userid'];
        
        //per SQL rausfinden welcher Dozent für das jeweilige Modul zuständig ist
        $dozent = $GetDozentId->getOne("Select userID from module where ID = $module");

        //Daten in DB schreiben
        $insert = $KorrekturSubmit->execute("INSERT INTO korrektur  (userStudentID, moduleID, typeID, description, materialID, userDozentID, statusID)
                                                  VALUES('$userid', '$module', '$type', '$description', '$material','".$dozent['userID']."',1);");
        
        //Sessionflag wird gesetzt und ein Redirect wird ausgeführt --> auf der Seite wird dann auch der erfolgreiche DB insert angezeigt
        $_SESSION['submitflag'] = true;
        header("location: vKorrektur.php");
        }
        
?>

