<?php require 'Controller/indexProcess.php'; ?>

<body>
    <?php include 'Template/header.php'; ?>

    <div id="slider">
        <img src="Asset/img/slide1.jpg" />
        <img src="Asset/img/slide2.jpg" />
        <img src="Asset/img/slide3.jpg" />
        <img src="Asset/img/slide4.jpg" />
    </div>
    
    <div id='grid_header'>
        <p class="fancy"><span>প্রসিদ্ধ স্থান সমূহ</span></p>
    </div>
    <div class="grid">
        <div class="grid_container">
            <div class="grid_item">
                <a href="#">
                    <img class="grid_img" src="Asset/img/1.jpg" alt=""/>
                </a>    
            </div>
            <h3 class="grid_item-title">রাতারকুল</h3>
        </div>
        <div class="grid_container">
            <div class="grid_item">
                <a href="#">
                    <img class="grid_img" src="Asset/img/2.jpg" alt=""/>
                </a>
            </div>
            <h3 class="grid_item-title">সেন্ট মারটিন</h3>
        </div>
        <div class="grid_container">
            <div class="grid_item">
                <a href="#">
                    <img class="grid_img" src="Asset/img/3.jpg" alt=""/>       
                </a>        
            </div>
            <h3 class="grid_item-title">নীলাচল</h3>
        </div>
        <div class="grid_container">
            <div class="grid_item">
                <a href="#">
                    <img class="grid_img" src="Asset/img/4.jpg" alt=""/>       
                </a>        
            </div>
            <h3 class="grid_item-title">সুন্দর বন</h3>
        </div>
        <div class="grid_container">
            <div class="grid_item">
                <a href="#">
                    <img class="grid_img" src="Asset/img/5.jpg" alt=""/>       
                </a>        
            </div>
            <h3 class="grid_item-title">জাফলং</h3>
        </div>
        <div class="grid_container">
            <div class="grid_item">
                <a href="#">
                    <img class="grid_img" src="Asset/img/6.jpg" alt=""/>       
                </a>        
            </div>
            <h3 class="grid_item-title">সিলেটি পাহাড়</h3>
        </div>
    </div>

    <div id="zilla_list">
        <ul> 
            <?php foreach ($zillaList as $key => $value) : ?>
                <li><a href="spot.php?mode=0&id=<?= $value->id ?>"><?= $value->name ?></a></li>
            <?php endforeach; ?>
        </ul>
    </div>   

    <?php include 'Template/footer.php'; ?>
    
    <!-- jQuery -->
    <script src="Asset/js/jquery-3.1.0.min.js"></script>
    <script src="Asset/js/main.js"></script>
    <!-- slider plugin -->
    <script src="Asset/js/jquery.onImagesLoad.min.js"></script>
    <script src="Asset/js/jquery.responsiveSlides.js"></script>
    <!-- Scrolling Nav plugin -->
    <script src="Asset/js/jquery.easing.min.js"></script>

</body>
</html>