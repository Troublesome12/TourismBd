<?php include 'Template/top.php'; ?>
<?php require_once 'Controller/infoProcess.php'; ?>

<body>
	<?php include 'Template/header.php'; ?>
	<link rel="stylesheet" href="Asset/css/profile.css" />

	<!-- <button><a href="./Controller/logoutProcess.php">Log out</a></button> -->
	<div class="container">
		<div class="user_info">
			<div id="image">
				<img id="image_display" src="<?=$user->imagePath?>">
				<input id="image_input" type="file" name="image" />
			</div>
			<form>	
				<label>নামঃ </label>
				<input id="name_input" type="text" name="name" value="<?=$user->name?>"><br>
				<label>ইমেইলঃ </label>
				<input id="name_email" type="text" name="email" value="<?=$user->email?>"><br>
			</form>
			<button class="btn" id="edit_button">পরিবর্তন</button>
			<button class="btn" id="save_button">সেভ</button>
		</div>
	</div>

	<!-- jQuery -->
    <script src="Asset/js/jquery-3.1.0.min.js"></script>
    <script src="Asset/js/profile.js"></script>

</body>
</html>