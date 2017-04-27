<?php
    require_once('model.php'); // Model-Klasse für DB Operationen aufrufen
    
    if(isset($_GET['korrekturid'])) {
        $_SESSION['korrekturid'] = $_GET['korrekturid'];
        $_SESSION['status'] = $_GET['status'];
        header("location: vKorrekturDetail.php");



    }
    
    if(isset($_GET['back'])) {
        unset($_SESSION['korrekturid']);
        unset($_SESSION['status']);
        header("location: vKorrekturOverview.php");
        
    }
    
    if(isset($_GET['save'])) {
        //echo '##Status: '.$_GET['status'].' - Grund: '.$_GET['reason'].' ##';
        $reason = $_GET['reason'];
        $NewStatus = $_GET['status'];
        $OldStatus = $_SESSION['status'];
        $korrekturid = $_SESSION['korrekturid'];
        
        //Wenn der Status geändert wurde wird dieser in der Korrektur geändert und außerdem eine neue Bearbeitung gesetzt
        if ($NewStatus != $_SESSION['status']) {
            $statustext = "Status geändert: $OldStatus &rarr; $NewStatus";
            
            //neue Bearbeitung für Statusänderung schreiben
            $BearbeitungStatus = new db(); // Erstelle ein neues Object, Klasse db()
            $insert = $BearbeitungStatus->execute("INSERT INTO bearbeitung  (text, korrekturID)
                                                  VALUES('$statustext', '$korrekturid')");            
                        
            //Status der Korrektur ändern
            $UpdateKorrektur = new db(); // Erstelle ein neues Object, Klasse db()
            $update = $UpdateKorrektur->execute("UPDATE korrektur set statusID = $NewStatus where ID = $korrekturid"); 
        }
        
        $BearbeitungSubmit = new db(); // Erstelle ein neues Object, Klasse db()
        //Daten in DB schreiben
        $insert = $BearbeitungSubmit->execute("INSERT INTO bearbeitung  (text, korrekturID)
                                                  VALUES('$reason', '$korrekturid')");
        
        
        unset($_SESSION['korrekturid']);
        unset($_SESSION['status']);
        header("location: vKorrekturOverview.php");
    }
    
    function tabelle() {
    
        if ($_SESSION['korrekturid'] != "" ) {
            
        echo "<hr />"
            . "<h2>Historie</h2>";
        
        //hier kommen alle bearbeitungstände zur korrektur hinein
        $AlleBearbeitungen = new db(); // Erstelle ein neues Object, Klasse db()
        
          $Bearbeitungen = $AlleBearbeitungen->GetAll(""
          . "select * "
          . "from bearbeitung "
          . "where korrekturID =  ".$_SESSION['korrekturid']." "
          . "order by id DESC");
          
          if (count($Bearbeitungen)>0) {
              echo '<div class="container"><table class="table table-bordered">
                            <thead>
                             <tr>
                               <th>ID.</th>
                               <th>Datum</th>
                               <th>Text</th>
                             </tr>
                           </thead>';

              //Alle Daten der DB Abfrage in eine Tabelle schreiben
                foreach ($Bearbeitungen as $value) 
                {

                    echo '  
                            <tbody>
                                <tr>
                                <td>'.$value['ID'].'</td>
                                <td>'.$value['date'].'</td>
                                <td>'.$value['text'].'</td>
                                </td>
                             </tr>
                           </tbody>
                         ';
                }
                echo '</table></div>';
          }


          //Wenn Dozent keine Korrekturen hat Meldung anzeigen
          else {
            echo '<br><div class="alert alert-success alert-dismissable">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Keine Korrekturen zur Bearbeitung vorhanden!</div>';
          }
    }
}
        
    

?>