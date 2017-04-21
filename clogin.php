<?php

if(isset($_GET['login'])) {
    
    session_start();
    
    $email = $_POST['E-Mail'];
    $passwort = $_POST['password'];

    include('model.php'); // Model-Klasse für DB Operationen aufrufen
    $bdd = new db(); // Erstelle ein neues Object, Klasse db()

    $user = $bdd->getOne("SELECT ID, vorname, email, password, rolle FROM testtabelle WHERE email = '$email'");


     //Überprüfung des Passworts
    if (count($user) > 0 && $passwort == $user['password'] ) {        
        if ($user['rolle'] == "dozent") {
            $_SESSION['userid'] = $user['vorname'];
            $_SESSION['email'] = $user['email'];
            header("location: vKorrekturOverview.php");
        }
        else {
            $_SESSION['userid'] = $user['vorname'];
            $_SESSION['email'] = $user['email'];
            header("location: vKorrektur.php");
        }
     } 
     else {
        echo '<div class="alert alert-success alert-dismissable">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>E-Mail oder Passwort war ungültig</div>';
     }
}
?>
