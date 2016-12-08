<?php

require_once './Entity/SpotListEntity.php';

class SpotModel {

    function getSpotList($zilla_id) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT id, name FROM spot WHERE zilla_id='$zilla_id'";
        mysqli_set_charset($conn,"utf8");
        $result = $conn->query($sql) or die($conn->error);
        $spots = array();
   
        while($row = $result->fetch_assoc()) {
            $spot = new SpotListEntity($row['id'], $row['name']);
            array_push($spots, $spot);
        }

        $conn->close();
        return $spots;
    }


    function getDescription($id) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT description FROM spot WHERE id='$id'";
        mysqli_set_charset($conn,"utf8");
        $result = $conn->query($sql) or die($conn->error);

        while($row = $result->fetch_assoc()) {
            $description = $row['description'];
        }

        $conn->close();
        return $description;
    }
}