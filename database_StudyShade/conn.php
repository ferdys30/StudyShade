<?php

$connect = new mysqli("localhost","root","","studyshade");

if ($connect){
}else{
	echo "Connection gagal";
	exit();
}
?>