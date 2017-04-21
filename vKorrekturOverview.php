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
        include 'cKorrekturSessionhandler.php';
        ?>

        <!-- Page Content -->
        <div class="container">
  <h2>Korrekturübersicht</h2>         
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Ticketnr</th>
        <th>Modul</th>
        <th>Art der Korrektur</th>
        <th>Material</th>
        <th>Kurzbeschreibung</th>
        <th>Status</th>
        <th>Administration</th>
      </tr>
    </thead>
    <tbody>
      <!-- statischer Beispielinhalt -->
        <tr>
        <td>0001</td>
        <td>ISEF01</td>
        <td>Fehler</td>
        <td>Studienskript</td>
        <td>Rechenfehler auf Seite 23</td>
        <td>In Bearbeitung</td>
        <td>Bearbeiten</td>
      </tr>
      
    </tbody>
  </table>
</div>
        <!-- /.container -->

        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
