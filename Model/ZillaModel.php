<?php

require_once './Entity/ZillaEntity.php';

class ZillaModel {

    function getZillaList() {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT * FROM zilla ORDER BY id ASC";
        mysqli_set_charset($conn,"utf8");
        $result = $conn->query($sql) or die($conn->error);
        $zillas = array();
   
        while($row = $result->fetch_assoc()) {
            $zilla = new ZillaEntity($row['id'], $row['name']);
            array_push($zillas, $zilla);
        }

        $conn->close();
        return $zillas;
    }
}