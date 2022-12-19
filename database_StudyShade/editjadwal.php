<?php
include 'conn.php';

    $id = $_POST['id'];
    $matkul = $_POST['matkul'];
    $ruang = $_POST['ruang'];
    $waktu = $_POST['waktu'];
    $pembimbing = $_POST['pembimbing'];

    $connect->query("UPDATE matkul SET matkul='$matkul',ruang='$ruang',waktu='$waktu',pembimbing='$pembimbing' WHERE id =".$id)

?>