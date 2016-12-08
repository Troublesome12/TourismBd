<?php include 'Template/top.php'; ?>

<body>
	<?php require_once 'Controller/spotProcess.php'; ?>
	<?php include 'Template/header.php'; ?>
	<link rel="stylesheet" href="Asset/css/spot.css" />
	<link rel="stylesheet" href="Asset/css/comment.css" />

	<!-- Navigation -->
	<nav id="slide-menu">
		<ul>
			<?php
				$firstIteration = true; 
				foreach ($spotList as $key => $value) : 
					if($firstIteration) : ?>
						<li id=<?=$value->id?>>
							<a href="?spot_id=<?=$value->id?>&id=<?=$zilla_id?>&mode=0"><?= $value->name ?></a>
						</li>		
						<?php $firstIteration = false; 
						$_COOKIE['spot_id'] = $value->id;
						if(!isset($_GET['spot_id'])) :
							require_once 'Controller/spotInit.php';
						endif;
					
					else : ?>
						<li id=<?=$value->id?>>
							<a href="?spot_id=<?=$value->id?>&id=<?=$zilla_id?>&mode=0"><?= $value->name ?></a>
						</li>
					<?php endif; ?>
			<?php endforeach; ?>
		</ul>
	</nav>

	
    	<!-- Content panel -->  
  	<div id="image_slider">
  		<?php foreach ($imageList as $key => $value) : ?> 
  			<img src="Asset/img/<?= $value?>" />
  		<?php endforeach; ?>
    </div>

	<div id="content">
		<code><?= $spotDetail;?></code>
	</div>

	<div class="comments-container">
        <ul id="comments-list" class="comments-list">
            <li>
            	<?php foreach ($spotComments as $key => $value) : ?>
	                <div class="comment-main-level">
	                    <!-- Avatar -->
	                    <div class="comment-avatar"><img src="<?=$value->user_image_path?>" alt=""></div>
	                   	<!-- comment box -->
	                    <div class="comment-box">
	                        <div class="comment-head">
	                            <h6 class="comment-name"><a href=""><?=$value->user_name?></a></h6>
	                        </div>
	                        <div class="comment-content">
	                            <?=$value->text?>
	                        </div>
	                    </div>
	                </div>
                <?php endforeach; ?>
            </li>
        </ul>

        <!-- submit new comment -->
        <?php if(isset($_SESSION['email'])) : ?>
	        <div class="comment-box">
	        	<textarea placeholder="কমেন্ট করুন" id="comment_textarea"></textarea>
	        	<button onclick="submitComment(<?=$id?>)">Submit</button>
	        </div>
    	<?php endif; ?>
    </div>

	<?php include 'Template/footer.php'; ?>

	<!-- jQuery -->
	<script src="Asset/js/jquery-3.1.0.min.js"></script>
	<script src="Asset/js/spot.js"></script>
    <!-- slider plugin -->
    <script src="Asset/js/jquery.onImagesLoad.min.js"></script>
    <script src="Asset/js/jquery.responsiveSlides.js"></script>

    <?php echo "<script>setSelected('$id')</script>"; ?>
    <script>
    	
    </script>
</body>