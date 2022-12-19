<?php
include 'conn.php';

    $nik_siswa = $_POST['nik_siswa'];
    $id_jdwl = $_POST['id_jdwl'];
    $id_kehadiran = $_POST['id_kehadiran'];
    $alasan = $_POST['alasan'];

    $connect->query("INSERT INTO absensi (nik_siswa,id_jdwl,id_kehadiran,alasan) VALUES ('.$nik_siswa.','.$id_jdwl.','.$id_kehadiran.','".$alasan."')")

?>