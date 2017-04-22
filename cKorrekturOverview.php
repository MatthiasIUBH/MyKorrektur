<?php
  include('model.php'); // Model-Klasse für DB Operationen aufrufen
  $GetKorrekturen = new db(); // Erstelle ein neues Object, Klasse db()
  $korrekturen = $GetKorrekturen->GetAll(""
          . "select KOR.ID,KOR.description,STA.status,MAT.material, MODU.module,TYP.type,USR.email "
          . "from korrektur KOR "
          . "inner join material MAT on MAT.ID = KOR.materialID "
          . "inner join module MODU on MODU.ID = KOR.moduleID "
          . "inner join type TYP on TYP.ID = KOR.typeID "
          . "inner join user USR on USR.ID = KOR.userStudentID "
          . "inner join status STA on STA.ID = KOR.statusID "
          . "where KOR.userDozentID = ".$_SESSION['userid']."");
  
  if (count($korrekturen)>0) {
      echo '<table class="table table-bordered">
                    <thead>
                     <tr>
                       <th>Korrekturnr.</th>
                       <th>Modul</th>
                       <th>Art der Korrektur</th>
                       <th>Material</th>
                       <th>Kurzbeschreibung</th>
                       <th>Status</th>
                       <th>Administration</th>
                     </tr>
                   </thead>';
        foreach ($korrekturen as $value) 
        {

            echo '  
                   <tbody>
                       <tr>
                       <td>'.$value['ID'].'</td>
                       <td>'.$value['module'].'</td>
                       <td>'.$value['type'].'</td>
                       <td>'.$value['material'].'</td>
                       <td>'.$value['description'].'</td>
                       <td>'.$value['status'].'</td>
                       <td><a>Bearbeiten</a></td>
                     </tr>
                   </tbody>
                 ';
        }
        echo '</table>';
  }
  else {
    echo '<br><div class="alert alert-success alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Keine Korrekturen zur Bearbeitung vorhanden!</div>';
  }
  ?>