<div class="header">
    <div class="inner">
        <h1><span>বাংলাদেশ</span> ভ্রমণ</h1>
        <nav>
            <?php  if(!isset($_GET['mode'])) : ?>   <!--index page-->
                <a class="top_content" href="#slider">নীড় পাতা</a>
                <a class="bottom_content" href="#grid_header">প্রসিদ্ধ স্থান</a>
                <a class="bottom_content" href="#zilla_list">জেলা</a>
            
                <?php if(isset($_SESSION['email'])) : ?>
                    <a href="profile.php?mode=1">
                        <i class="fa fa-user tooltip" aria-hidden="true">
                            <span class="tooltiptext">ইউজার</span>
                        </i>
                    </a>
            	<?php else : ?>
    				<a  href="login.php">
                        <i class="fa fa-sign-in tooltip" aria-hidden="true">
                            <span class="tooltiptext">লগ ইন</span>
                        </i>
                    </a>
            	<?php endif; ?>
            <?php else : ?>
                <a href="index.php">নীড় পাতা</a>
                <?php  if($_GET['mode']==1) : ?>
                    <a  href="./Controller/logoutProcess.php">
                        <i class="fa fa-sign-out tooltip" aria-hidden="true">
                            <span class="tooltiptext">লগ আউট</span>
                        </i>
                    </a>
                <?php endif; ?>
            <?php endif; ?>
        </nav>
    </div>
</div>