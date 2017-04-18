<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>MyKorrektur</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <style>
            body {
                padding-top: 70px;
                /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
            }
        </style>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <!-- Navigation -->
        <?php
        include 'vNav.php';
        
        session_start();
        if(!isset($_SESSION['userid'])) {
            die('Bitte zuerst <a href="login.php">einloggen</a>');
        }

        //Abfrage der Nutzer ID vom Login
        $userid = $_SESSION['userid'];

        echo "Hallo User: ".$userid;
        ?>

        <!-- Page Content -->
        <div class="container">

            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1>MyKorrektur</h1>

                    <form class="form-horizontal">
                        <fieldset>

                            <!-- Form Name -->
                            <legend>Korrektureingabe</legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">E-Mail</label>  
                                <div class="col-md-4">
                                    <input id="textinput" name="textinput" type="text" placeholder="max.muster@iubh-fernstudium.de" class="form-control input-md" required="">
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="type">Art der Korrektur</label>
                                <div class="col-md-4">
                                    <select id="type" name="type" class="form-control">
                                        <option value="Fehler">Fehler</option>
                                        <option value="Verbesserung">Verbesserung</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="module">Modul</label>
                                <div class="col-md-4">
                                    <select id="module" name="module" class="form-control">
                                        <option value="ISEF01">ISEF01</option>
                                        <option value="BKLR02">BKLR02</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="material">Material</label>
                                <div class="col-md-4">
                                    <select id="material" name="material" class="form-control">
                                        <option value="Studienskript">Studienskript</option>
                                        <option value="Vodcast">Vodcast</option>
                                        <option value="Clix">Clix</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Textarea -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="description">Beschreibung</label>
                                <div class="col-md-4">                     
                                    <textarea class="form-control" id="description" name="description">Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag</textarea>
                                </div>
                            </div>
                            <!-- Button -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="submit"></label>
                                <div class="col-md-4">
                                    <button id="submit" name="submit" class="btn btn-primary">Submit</button>
                                </div>
                        </fieldset>
                    </form>


                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
