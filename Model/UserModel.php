<?php

class UserModel {

    function checkUser($email, $password) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT id FROM account WHERE email='$email' AND password='$password'";
        $result = $conn->query($sql) or die($conn->error);
        $count = $result->num_rows;
        $conn->close();
        return $count;
    }

    function checkEmail($email) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT id FROM account WHERE email='$email'";
        $result = $conn->query($sql) or die($conn->error);
        $count = mysqli_num_rows($result);
        $conn->close();
        return $count;
    }

    function saveUser($name, $email, $password, $image_path) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "INSERT INTO account (id, name, email, password, image_path) 
                VALUES (NULL, '$name', '$email', '$password', '$image_path')";
        $result = $conn->query($sql) or die($conn->error);
        $conn->close();
        return $result;     //boolean
    }

    function getUserInfo($id) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT * FROM account WHERE id='$id'";
        mysqli_set_charset($conn,"utf8");
        $result = $conn->query($sql) or die($conn->error);
        $user = null;
        require_once 'Entity/UserEntity.php';

        while($row = $result->fetch_assoc()) {
            $user = new UserEntity($row['id'], $row['name'], $row['email'], $row['image_path']);
        }

        $conn->close();
        return $user;
    }

    function getUserId($email) {
        include 'Credentials.php';

        //Open Connection and select database
        $conn = new mysqli($host, $user, $passwd, $database) or die($conn->connect_error);
        $sql = "SELECT id FROM account WHERE email='$email'";
        
        $result = $conn->query($sql) or die($conn->error);
        $id = null;

        while($row = $result->fetch_assoc()) {
            $id = $row['id'];
        }
        
        $conn->close();
        return $id;
    }
}