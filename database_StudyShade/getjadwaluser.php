<?php
include 'conn.php';

$queryResult = $connect->query("SELECT * FROM jadwal INNER JOIN matkul on jadwal.id_matkul = matkul.id WHERE nik = '232323' ");

$result =array();

while ($fetchData= $queryResult->fetch_assoc()){
	$result[]=$fetchData;
}
echo json_encode($result);
?>