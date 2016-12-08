<?php

class CommentModel {

    function getCommentList($spot_id) {
        include 'Credentials.php';
        require_once 'Model/UserModel.php';
        $userModel = new UserModel();

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT * FROM comment WHERE spot_id='$spot_id'";
        mysqli_set_charset($conn,"utf8");
        $result = $conn->query($sql) or die($conn->error);
        $comments = array();
        require_once './Entity/CommentEntity.php';

        while($row = $result->fetch_assoc()) {
            $user_id = $row['user_id'];
            $user =  $userModel->getUserInfo($user_id);
            $comment = new CommentEntity($row['spot_id'], $user_id, $user->name, $user->imagePath ,$row['text']);
            array_push($comments, $comment);
        }

        $conn->close();
        return $comments;
    }

    function submitComment($spot_id, $user_id, $comment) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        mysqli_set_charset($conn,"utf8");
        $sql = "INSERT INTO comment (spot_id, user_id, text) 
                VALUES ('$spot_id', '$user_id', '$comment')";
        $result = $conn->query($sql) or die($conn->error);
        $conn->close();
        return $result;     //boolean
    }
}