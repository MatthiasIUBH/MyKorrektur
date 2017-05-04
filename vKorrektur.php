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
        require_once 'cKorrekturSubmit.php';
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
                                    <input id="textinput" name="textinput" type="text" value="<?php echo $_SESSION['email'];?>" class="form-control input-md" required="" disabled>
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="type">Art der Korrektur</label>
                                <div class="col-md-4">
                                    <select id="type" name="type" class="form-control" required="">
                                        <option value="" disabled selected>Bitte auswählen</option>
                                        <?php
                                            include('model.php'); // Model-Klasse für DB Operationen aufrufen
                                            $GetType = new db(); // Erstelle ein neues Object, Klasse db()
                                            $type = $GetType->GetAll("SELECT * FROM type");
                                            foreach ($type as $value) {
                                                echo '<option value="'.$value['ID'].'">'.$value['type'].'</option>';
                                                
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="module">Modul</label>
                                <div class="col-md-4">
                                    <select id="module" name="module" class="form-control" required=""> 
                                        <option value="" disabled selected>Bitte auswählen</option>
                                        <?php
                                            //include('model.php'); // Model-Klasse für DB Operationen aufrufen
                                            $GetModule = new db(); // Erstelle ein neues Object, Klasse db()
                                            $module = $GetModule->GetAll("SELECT * FROM module");
                                            foreach ($module as $value) {
                                                echo '<option value="'.$value['ID'].'">'.$value['module'].' - '.$value['description'].'</option>';
                                                
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="material">Material</label>
                                <div class="col-md-4">
                                    <select id="material" name="material" class="form-control" required="">
                                        <option value="" disabled selected>Bitte auswählen</option>
                                        <?php
                                            //include('model.php'); // Model-Klasse für DB Operationen aufrufen
                                            $GetMaterial = new db(); // Erstelle ein neues Object, Klasse db()
                                            $material = $GetMaterial->GetAll("SELECT * FROM material");
                                            foreach ($material as $value) {
                                                echo '<option value="'.$value['ID'].'">'.$value['material'].'</option>';
                                                
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <!-- Textarea -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="description">Beschreibung</label>
                                <div class="col-md-4">                     
                                    <textarea class="form-control" id="description" name="description" placeholder="Bitte Beschreiben Sie den Fehler bzw. den Verbesserungsvorschlag" required=""></textarea>
                                </div>
                            </div>
                            <!-- Button -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="submit"></label>
                                <div class="col-md-4">
                                    <button id="submit" name="submit" class="btn btn-primary">Absenden</button>
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
