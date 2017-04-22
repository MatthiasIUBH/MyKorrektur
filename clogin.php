<?php

if(isset($_GET['login'])) {
    
    session_start();
    
    $email = $_POST['E-Mail'];
    $passwort = $_POST['password'];

    include('model.php'); // Model-Klasse für DB Operationen aufrufen
    $bdd = new db(); // Erstelle ein neues Object, Klasse db()

    $user = $bdd->getOne("SELECT USR.ID, USR.vorname, USR.email, USR.password, USRR.rolle FROM user USR "
            . "inner join userrolle USRR on USRR.ID = USR.userrolleID "
            . "WHERE USR.email = '$email'");


     //Überprüfung des Passworts
    if (count($user) > 0 && $passwort == $user['password'] ) { 
        //SESSION Varaiblen setzen + Redirect zu verschiedenen Seiten
        $_SESSION['userid'] = $user['ID'];
        $_SESSION['vorname'] = $user['vorname'];
        $_SESSION['email'] = $user['email'];
        $_SESSION['loginflag'] = true;
            
        if ($user['rolle'] == "Dozent") {
            header("location: vKorrekturOverview.php");
        }
        else {
            header("location: vKorrektur.php");
        }
     } 
     else {
        echo '<div class="alert alert-success alert-dismissable">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>E-Mail oder Passwort war ungültig</div>';
     }
}
?>
