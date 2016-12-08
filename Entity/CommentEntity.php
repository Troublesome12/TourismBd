<?php

class CommentEntity {
	public $spot_id;
	public $user_id;
	public $user_name;
	public $user_image_path;
    public $text;
    
    function __construct($spot_id, $user_id, $user_name, $user_image_path, $text) {
        $this->spot_id = $spot_id;
        $this->user_id = $user_id;
        $this->user_name = $user_name;
        $this->user_image_path = $user_image_path;
        $this->text = $text;
    }
}