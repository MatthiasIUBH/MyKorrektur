<?php

        session_start();
        if(!isset($_SESSION['userid'])) {
            die('Bitte zuerst <a href="vLogin.php">einloggen</a>');
        }

        //Abfrage der Nutzer ID vom Login
        $userid = $_SESSION['userid'];


        //erfolgreichen Login anzeigen + Logout Button
        //Bootstrap Funktionen!
        echo '<div class="alert alert-success alert-dismissable">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                Login erfolgreich! Hallo '.$userid.'
                </div>
                <button type="button" class="btn btn-default btn-sm pull-right">
                <span class="glyphicon glyphicon-log-out"></span> 
                Logout '.$userid.'
              </button>';
?>