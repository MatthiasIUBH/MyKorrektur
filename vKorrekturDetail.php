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
        require_once 'vNav.php';
        require_once 'cKorrekturSessionhandler.php';
        require_once 'cKorrekturDetail.php';


        ?>

        <!-- Page Content -->
        <div class="container">
            <h2 class="text-center">Bearbeitung Korrektur <?php $_SESSION['korrekturid'] ?></h2>         
            
            <?php             
             if($_SESSION['status'] == 5){

             }
             else {
                 echo '           <form class="form-horizontal">
                <fieldset>
                   
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="status">Status</label>
                        <div class="col-md-4">
                            <select id="status" name="status" class="form-control" required="">
                                <option value="" disabled selected>Bitte auswählen</option>';
                                    require_once('model.php'); // Model-Klasse für DB Operationen aufrufen
                                    $GetStatus = new db(); // Erstelle ein neues Object, Klasse db()
                                    $AllStatus = $GetStatus->GetAll("SELECT * FROM status where selectable = 1");
                                    //unset($GetStatus);;
                                    foreach ($AllStatus as $value) {
                                        echo '<option value="'.$value['ID'].'">'.$value['status'].'</option>';

                                    }
                echo'            </select>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="reason">Begründung</label>  
                        <div class="col-md-4">
                  <textarea class="form-control" rows="5" id="reason" name="reason" required=""></textarea>

                        </div>
                    </div>
                    
                    <!-- Button -->
                    <div class="form-group text-center">
                        <label class="col-md-4 control-label" for="save"></label>  
                        <div class="col-md-4 ">
                            <button id="save" name="save" class="btn btn-primary">Speichern</button>
                    </div>
                </fieldset>
            </form>';
             }
            
            
            ?>
 

            <?php tabelle(); ?>

        </div>
        <!-- /.container -->

        <!-- jQuery Version 1.11.1 -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
