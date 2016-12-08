<?php

class UserEntity {
    public $id;
    public $name;
    public $email;
    public $imagePath;
    
    function __construct($id, $name, $email, $imagePath) {
        $this->id=$id;
        $this->name = $name;
        $this->email = $email;
        $this->imagePath = $imagePath;
    }
}