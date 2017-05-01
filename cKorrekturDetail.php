<?php
    require_once('model.php'); // Model-Klasse für DB Operationen aufrufen
    
    //Wenn per GET Parameter eine KorrekturID übermittelt wurde
    //DANN: Setze Sessionvariablen + Neu Aufrufen des Scripts
    if(isset($_GET['korrekturid'])) {
        $_SESSION['korrekturid'] = $_GET['korrekturid'];
        $_SESSION['status'] = $_GET['statusid'];
        header("location: vKorrekturDetail.php");
    }

    //Wenn der Speicherbutton in der Detailkorrektur geklickt wurde!
    if(isset($_GET['save'])) {
        $reason = $_GET['reason'];
        $NewStatus = $_GET['status'];
        $OldStatus = $_SESSION['status'];
        $korrekturid = $_SESSION['korrekturid'];
        $statustext = "";
        
        //Wenn der Status explizit geändert wurde wird dieser in der Korrektur geändert
        //Außerdem gibt es eine Mitteltung
        if ($NewStatus != $_SESSION['status']) {
            $statustext .= "Status geändert: $OldStatus &rarr; $NewStatus\r\n";
            
            //Status der Korrektur ändern
            $UpdateKorrektur = new db(); // Erstelle ein neues Object, Klasse db()
            $update = $UpdateKorrektur->execute("UPDATE korrektur set statusID = $NewStatus where ID = $korrekturid"); 
        }
        
        $statustext .= "Text: ".$reason;
        $BearbeitungSubmit = new db(); // Erstelle ein neues Object, Klasse db()
        //Daten in DB schreiben
        $insert = $BearbeitungSubmit->execute("INSERT INTO bearbeitung  (text, korrekturID)
                                                  VALUES('$statustext', '$korrekturid')");
        
        unset($_SESSION['korrekturid']);
        unset($_SESSION['status']);
        header("location: vKorrekturOverview.php");
    }
    
    
    //Abfrage + Anzeige der Tabelle aller bereits durchgeführten Bearbeitungen der Korrektur
    function tabelle() {
    
        if ($_SESSION['korrekturid'] != "" ) {
            
        echo "<hr />"
            . "<h2>Historie</h2>";
        
        
        //SQL Query
        $AlleBearbeitungen = new db(); // Erstelle ein neues Object, Klasse db()
          $Bearbeitungen = $AlleBearbeitungen->GetAll(""
          . "select * "
          . "from bearbeitung "
          . "where korrekturID =  ".$_SESSION['korrekturid']." "
          . "order by id DESC");
          
          //HTML Generierung
          if (count($Bearbeitungen)>0) {
              echo '<div class="container"><table class="table table-bordered">
                            <thead>
                             <tr>
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
                                <td>'.$value['date'].'</td>
                                <td>'.nl2br($value['text']).'</td>
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