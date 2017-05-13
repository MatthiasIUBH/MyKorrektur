<?php

if(isset($_GET['submit']) && $_SESSION['rolle'] == 'Student') {

        require_once('model.php'); // Model-Klasse für DB Operationen aufrufen
        require_once('simplemail/class.simple_mail.php'); // Model-Klasse für DB Operationen aufrufen

        $KorrekturSubmit = new db(); // Erstelle ein neues Object, Klasse db()
        $GetDozentId = new db(); // Erstelle ein neues Object, Klasse db()
        
        //Variablen belegen
        $material = $_GET['material'];
        $module = $_GET['module'];
        $type = $_GET['type'];
        $description = $_GET['description'];
        $email = $_SESSION['email'];
        $userid = $_SESSION['userid'];
        
        //per SQL rausfinden welcher Dozent für das jeweilige Modul zuständig ist + seine Mailadresse
        $dozent = $GetDozentId->getOne("Select MO.userID, USR.email from module MO Inner join user USR on USR.ID = MO.userID where MO.ID = $module");

        //Daten in DB schreiben
        $insert = $KorrekturSubmit->execute("INSERT INTO korrektur  (userStudentID, moduleID, typeID, description, materialID, userDozentID, statusID)
                                                  VALUES('$userid', '$module', '$type', '$description', '$material','".$dozent['userID']."',1);");
        
        //Email senden an zuständigen Dozenten
        $mailer = new SimpleMail();
            $mailer ->setTo($dozent['email'], $dozent['email'])
                    ->setFrom('info@mykorrektur.de', 'info@mykorrektur.de')
                    ->setSubject('Neue Korrektur zur Bearbeitung!')
                    ->setMessage("Es ist eine neue Korrektur vorhanden und muss bearbeitet werden!")
                    ->setHtml()
                    ->setWrap(100)
                    ->send();
        
        //Sessionflag wird gesetzt und ein Redirect wird ausgeführt --> auf der Seite wird dann auch der erfolgreiche DB insert angezeigt
        $_SESSION['submitflag'] = true;
        header("location: vKorrektur.php");
        }
        
?>

