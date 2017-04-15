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
        ?>

        <!-- Page Content -->
        <div class="container">
            <h2>Korrekturübersicht</h2>         
            <table class="table table-bordered">
                <tbody>
                    <!-- statischer Beispielinhalt -->
                    <tr>
                        <td>Ticketnr</td>
                        <td>0001 <!--- PHP sollte hier Daten holen ---></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>Neu <!--- PHP sollte hier Daten holen ---> </td>
                    </tr>
                    <tr>
                        <td>E-Mail:</td>
                        <td>max.muster@iubh-fernstudium.de <!--- PHP sollte hier Daten holen ---></td>
                    </tr>
                    <tr>
                        <td>Art d. Korrektur</td>
                        <td>Fehler <!--- PHP sollte hier Daten holen ---></td>
                    </tr>
                    <tr>
                        <td>Material</td>
                        <td>Studienskript <!--- PHP sollte hier Daten holen ---></td>
                    </tr>
                    <tr>
                        <td>Modul</td>
                        <td>ISEF01 <!--- PHP sollte hier Daten holen ---></td>

                    </tr>
                    <tr>
                        <td>Beschreibung</td>
                        <td>Auf Seite 32, Abschnitt 3 fehlt eine Grafik <!--- PHP sollte hier Daten holen ---></td>
                    </tr>
                </tbody>
            </table>

            <form class="form-horizontal">
                <fieldset>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="reason">Begründung</label>  
                        <div class="col-md-4">
                            <input id="reason" name="reason" type="text" placeholder="" class="form-control input-md">

                        </div>
                    </div>

                    <!-- Button (Double) -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="button1id"></label>
                        <div class="col-md-8">
                            <button id="button1id" name="button1id" class="btn btn-success">Annehmen</button>
                            <button id="button2id" name="button2id" class="btn btn-danger">Ablehnen</button>
                        </div>
                    </div>

                </fieldset>
            </form>



        </div>
        <!-- /.container -->

        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
