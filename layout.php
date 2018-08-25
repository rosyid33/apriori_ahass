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

if (!isset($_SESSION['apriori_ahass_id']) &&
        ( $menu != 'tentang' & $menu != 'not_found' & $menu != 'forbidden')) {
    header("location:login.php");
}
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

        <!-- daterange picker -->
        <link rel="stylesheet" href="import/daterangepicker/daterangepicker-bs3.css">
        
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
        <?php
        include "header.php";
        ?>
        <!-- End Header -->
        <!-- === END HEADER === -->
        <!-- === BEGIN CONTENT === -->

        <?php
        $menu = ''; //variable untuk menampung menu
        if (isset($_GET['menu'])) {
            $menu = $_GET['menu'];
        }

        if ($menu != '') {
            if (can_access_menu($menu)) {
                if (file_exists($menu . ".php")) {
                    include $menu . '.php';
                } else {
                    include "not_found.php";
                }
            } else {
                include "forbidden.php";
            }
        } else {
            include "home.php";
        }
        ?>
        <!-- === END CONTENT === -->
        <!-- === BEGIN FOOTER === -->
        <!-- Footer -->
        <?php
        include "footer.php";
        ?>
        <!-- End Footer -->
        <!-- JS -->
        <!-- jQuery 2.1.4 -->
        <script src="import/jQuery/jQuery-2.1.4.min.js"></script>
        <!--<script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>-->
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



        <!-- jQuery 2.1.4 -->
    <!-- <script src="import/jQuery/jQuery-2.1.4.min.js"></script> -->
        <!-- date-range-picker -->
        <script src="import/daterangepicker/moment-cloud.min.js"></script>
        <script src="import/daterangepicker/daterangepicker.js"></script>

        <!-- Page script -->
        <script>
            $(function () {
                //Date range picker
                $('#reservation').daterangepicker(
                        {format: 'DD/MM/YYYY'}
                );
                $('#daterange-btn').daterangepicker(
                        {
                            ranges: {
                                'Today': [moment(), moment()],
                                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                                'This Month': [moment().startOf('month'), moment().endOf('month')],
                                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                            },
                            startDate: moment().subtract(29, 'days'),
                            endDate: moment()
                        },
                        function (start, end) {
                            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                        }
                );

            });
        </script>
    </body>
</html>
<!-- === END FOOTER === -->