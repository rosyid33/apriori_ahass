<?php
    session_start();
    unset($_SESSION['apriori_ahass_id']);
    unset($_SESSION['apriori_ahass_username']);
    unset($_SESSION['apriori_ahass_level']);
    unset($_SESSION['apriori_ahass_key']);
    unset($_SESSION['apriori_ahass_last_login']);
    session_destroy();
    header("location:login.php");
