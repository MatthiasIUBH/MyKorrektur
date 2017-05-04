<?php
        if(!isset($_SESSION)){
            session_start();
        }
        if(!isset($_SESSION['userid'])) {
            die('Bitte zuerst <a href="vLogin.php">einloggen</a>');
        }
        if ($_SESSION['rolle'] == "Student" && basename($_SERVER['PHP_SELF']) != "vKorrektur.php") {
            header("location: vKorrektur.php");
        }
        else {
            //Abfrage der Nutzer ID vom Login
            $vorname = $_SESSION['vorname'];

            //Wenn Login erfolgreich --> zeige entsprechende Bootstrap Nachricht an
            if(isset($_SESSION['loginflag']) && $_SESSION['loginflag'] == true){
                echo '                <div class="alert alert-success alert-dismissable">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        Login erfolgreich! Hallo '.$vorname.'
                </div>';
                $_SESSION['loginflag'] = false;
            }
            //Wenn eine Korrektur erfolgreich abgesendet wurde --> zeige entsprechende Bootstrap Nachricht an
            if(isset($_SESSION['submitflag']) && $_SESSION['submitflag'] == true){
                //Bootstrap spielereien
                echo '<br><div class="alert alert-success alert-dismissable">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Korrekturvorschlag wurde erfolgreich angelegt!</div>';
                $_SESSION['submitflag'] = false;
            }
            
            //Zeige IMMER wenn eine Session existiert den Logout Button an
            echo '
                <!-- Button -->
                <form class="form-horizontal" action="?logout=1" method="post">
                        <button id="logout" name="logout" class="btn btn-default btn-sm pull-right"><span class="glyphicon glyphicon-log-out"></span> Logout '.$vorname.'</button>
                </form>';
        }

        //Wenn Logout Button geklickt wurde --> Sessionvariablen NULLEN, Session zerstören, Redirect zum Login
        if(isset($_GET['logout'])) {
            session_unset(); 
            session_destroy();
            header("location: vLogin.php");
            exit;
        }
        
?>

