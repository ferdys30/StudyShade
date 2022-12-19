<?php
include 'conn.php';

    $nik = $_POST['nik'];
    $id_matkul = $_POST['id_matkul'];

    $connect->query("INSERT INTO jadwal (nik,id_matkul) VALUES ('.$nik.','.$id_matkul.')")

?>