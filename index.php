<?php
error_reporting(0);
session_start();
$menu = '';
if (isset($_GET['menu'])) {
    $menu = $_GET['menu'];
}

//if (!file_exists($menu . ".php")) {
//    $menu = 'not_found';
//}

//if (!isset($_SESSION['apriori_ahass_id']) &&
//        ( $menu != 'tentang' & $menu != 'not_found' & $menu != 'forbidden')) {
//    header("location:login.php");
//}
include_once 'fungsi.php';
//include 'koneksi.php';
?>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Data Mining - Apriori Suku Cadang</title>
        <link href="assets/img/typo/attach.png" rel="shortcut icon" />
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Raleway:100,300,400" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" type="text/css" rel="stylesheet">
        
        <style>
            #hornav ul > li > a:hover, #hornav ul > li > span:hover, #hornav ul > li > a.active, #hornav ul > li > span.active, #hornav ul > li > a.current, #hornav ul > li > span.current{
                background: #f00;
            }
            
            #hornav ul > li > a, #hornav ul > li > span{
                background: #000;
            }
            
            b, strong{
                background: #000;
                color: #fff;
            }
        </style>
    </head>
    <body>
        
        <!-- Header -->
        <div id="header" style="background-position: 50% 0%; height:100%;" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="index.php" title="">
                            <!--<img src="assets/img/logo.png" alt="Logo" />-->
                            <h1>
                                <strong>
                            DATA MINING ASOSIASI APRIORI 
                            <br>
                            PT AHASS AGUNG MOTOR MALANG
                            </strong>
                            </h1>
                        </a>
                    </div>
                    <!-- End Logo -->
                </div>
                <!-- Top Menu -->
                <?php 
                include "menu.php";
                ?>
                <!-- End Top Menu -->
            </div>
        </div>
        <!-- End Header -->
        <!-- === END HEADER === -->
        
        <!-- === BEGIN FOOTER === -->
        <div id="base" class="background-dark text-light">
            <div class="container padding-vert-30">
                <div class="row">
                    <!-- Disclaimer -->
                    <div class="col-md-12 margin-bottom-30">
                        <h3 class="margin-bottom-10">IMPLEMENTASI DATA MINING</h3>
                        <p>Menggunakan algoritma apriori
                            untuk menentukan aturan asoisasi pada penjualan suku cadang sepeda motor<br>
                            di PT AHASS AGUNG MOTOR MALANG</p>
<!--                        <p>Dribbble images are property of their respective owners. All other images are freely available from
                            <a class="nobold" href="http://www.unsplash.com/" target="_blank">Unsplash</a>.</p>-->
                    </div>
                    <!-- End Disclaimer -->
                    
                </div>
            </div>
        </div>
        <!-- Footer -->
        <?php 
        include "footer.php";
        ?>
        <!-- End Footer -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Stellar Parallax -->
            <script type="text/javascript" src="assets/js/jquery.stellar.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->