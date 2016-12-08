<?php

class ImageModel {

    function getImageList($spot_id) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT image_path FROM image WHERE spot_id='$spot_id'";
        mysqli_set_charset($conn,"utf8");
        $result = $conn->query($sql) or die($conn->error);
        $images = array();
   
        while($row = $result->fetch_assoc()) {
            array_push($images, $row['image_path']);
        }

        $conn->close();
        return $images;
    }
}