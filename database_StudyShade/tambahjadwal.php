<?php
include 'conn.php';

    $matkul = $_POST['matkul'];
    $ruang = $_POST['ruang'];
    $waktu = $_POST['waktu'];
    $pembimbing = $_POST['pembimbing'];

    $connect->query("INSERT INTO matkul (matkul,ruang,waktu,pembimbing) VALUES ('".$matkul."','".$ruang."','".$waktu."','".$pembimbing."')")

?>