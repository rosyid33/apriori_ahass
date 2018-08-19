<div id="hornav" class="row text-light">
    <div class="col-md-12">
        <div class="text-center visible-lg">
            <ul id="hornavmenu" class="nav navbar-nav">
                <li>
                    <a href="index.php" class="fa-home ">Home</a>
                </li>
                <?php
                if (isset($_SESSION['apriori_ahass_id'])){
                    
                ?>
                <li>
                    <a href="layout.php?menu=data_produk" class="fa-th-list ">Data Produk</a>
                </li>
                <li>
                    <a href="layout.php?menu=proses_apriori" class="fa-gears ">Proses Apriori</a>
                </li>
                <li>
                    <a href="layout.php?menu=hasil_rule" class="fa-bar-chart-o ">Hasil Rule</a>
                </li>
                <li>
                    <a href="logout.php" class="fa-sign-out ">Logout</a>
                </li>
                <?php
                }
                else{
                ?>      
                <li>
                    <a href="login.php" class="fa-key ">Login</a>
                </li>
                <?php
                }
                ?>
            </ul>
        </div>
    </div>
</div>