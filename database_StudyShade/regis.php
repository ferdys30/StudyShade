<?php
include 'conn.php';

    $nama = $_POST['nama'];
    $kelas = $_POST['kelas'];
    $no_tlp = $_POST['no_tlp'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $connect->query("INSERT INTO login (nama,kelas,no_tlp,username,password,id_role) VALUES ('".$nama."','".$kelas."','".$no_tlp."','".$username."','".$password."', '2')")

?>