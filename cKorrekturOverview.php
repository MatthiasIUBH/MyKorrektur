<?php

require_once('model.php'); // Model-Klasse für DB Operationen aufrufen

//Sessionvariablen löschen, falls diese noch geladen sein sollten von einem KorrekturDetail
unset($_SESSION['korrekturid']);
unset($_SESSION['status']);


$GetKorrekturen = new db(); // Erstelle ein neues Object, Klasse db()
//Alle Korrekturen des aktiven Dozenten auslesen
$korrekturen = $GetKorrekturen->GetAll(""
        . "select KOR.ID,KOR.description,STA.ID as 'statusid',STA.final,STA.status,MAT.material, MODU.module,TYP.type,USR.email "
        . "from korrektur KOR "
        . "inner join material MAT on MAT.ID = KOR.materialID "
        . "inner join module MODU on MODU.ID = KOR.moduleID "
        . "inner join type TYP on TYP.ID = KOR.typeID "
        . "inner join user USR on USR.ID = KOR.userStudentID "
        . "inner join status STA on STA.ID = KOR.statusID "
        . "where KOR.userDozentID = " . $_SESSION['userid'] . " "
        . "order by KOR.ID DESC");


//Wenn der Dozent Korrekturen hat, diese anzeigen
if (count($korrekturen) > 0) {
    echo '<table class="table table-bordered">
                    <thead>
                     <tr>
                       <th>Korrektur ID</th>
                       <th>Modul</th>
                       <th>Art der Korrektur</th>
                       <th>Material</th>
                       <th>Kurzbeschreibung</th>
                       <th>Status</th>
                       <th>Administration</th>
                     </tr>
                   </thead>';

    //Alle Daten der DB Abfrage in eine Tabelle schreiben
    foreach ($korrekturen as $value) {

        echo '  
                    <tbody>
                        <tr>
                        <td>' . $value['ID'] . '</td>
                        <td>' . $value['module'] . '</td>
                        <td>' . $value['type'] . '</td>
                        <td>' . $value['material'] . '</td>
                        <td>' . $value['description'] . '</td>
                        <td>' . $value['status'] . '</td>
                        <td>';
                        
                        //Wenn der Status Final ist: keine Anzeige eines Buttons
                        //Wenn der Status NICHT Final ist: Anzeuge Button zur Detailansicht!
                        if($value['final'] == 1) {
                            echo '<a href="vKorrekturDetail.php?korrekturid=' . $value['ID'] . '&statusid=' . $value['statusid'] . '" target="_self"">Ansehen</a>';
                        }
                        else {
                            echo '<a href="vKorrekturDetail.php?korrekturid=' . $value['ID'] . '&statusid=' . $value['statusid'] . '" target="_self"">Bearbeiten</a>';
                        }
        
        echo '          </td>
                     </tr>
                   </tbody>
                 ';
    }
    echo '</table>';
}

//Wenn Dozent keine Korrekturen hat Meldung anzeigen
else {
    echo '<br><div class="alert alert-success alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Keine Korrekturen zur Bearbeitung vorhanden!</div>';
}
?>