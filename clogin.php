<?php


if(isset($_GET['login'])) {
    
    session_start();
    
    $email = $_POST['E-Mail'];
    $passwort = $_POST['password'];

    include('model.php'); // Model-Klasse für DB Operationen aufrufen
    $bdd = new db(); // Erstelle ein neues Object, Klasse db()

    $user = $bdd->getOne("SELECT ID, vorname, email, password, rolle FROM testtabelle WHERE email = '$email'");


     //Überprüfung des Passworts
    if (count($user) > 0 && $passwort == $user['password']) {
        $_SESSION['userid'] = $user['vorname'];
        
        if ($user['rolle'] == "dozent") {
            header("location: vKorrekturOverview.php");
        }
        else {
            header("location: vKorrektur.php");
        }
     } 
     else {
        print( "E-Mail oder Passwort war ungültig<br>");
     }
}
?>
