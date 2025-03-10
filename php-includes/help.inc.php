<?php

// Browser Session Start here
session_start();
if(isset($_SESSION['user_id']) && isset($_SESSION['user_name'])){
	$user = $_SESSION['user_name'];




?>

	<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
                                                        <li >Help </li>
							<li class="active">Help</li>
						</ul><!-- /.breadcrumb -->

					</div>

					<div class="page-content">
						
                                            
                                            
                                            
                                            <div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<?php 
                                                        
                                                            //This is Small right side Toglling Menu
                                                            include_once 'php-includes/rightmenu.inc.php'; 
                                                        
                                                        ?>
						</div><!-- /.ace-settings-container -->

                                                
                                                
                                                
						<div class="page-header">
							<h1>
								 Help

							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

<div class="col-xs-12 col-sm-12">

    <div class="widget-box">
        <div class="widget-header">
                        <h4 class="widget-title">General Help</h4>

                        <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                </a>

                                <a href="#" data-action="close">
                                        <i class="ace-icon fa fa-times"></i>
                                </a>
                        </div>
                </div>

                <div class="widget-body">
                        <div class="widget-main">
                                
                            
                                 <div class="alert alert-success">

                                        <script type="text/javascript" src="https://cdnjs.buymeacoffee.com/1.0.0/button.prod.min.js" data-name="bmc-button" data-slug="dilmax" data-color="#FFDD00" data-emoji=""  data-font="Cookie" data-text="Buy me a coffee" data-outline-color="#000000" data-font-color="#000000" data-coffee-color="#ffffff" ></script>
                                    
                                 </div>
                    
                               
                            <div class="alert alert-info">

                                    
                                    <p >
                                    <h4 style="text-transform: uppercase; font-weight: bold;">Need premium support?</h4>
                                        If you need premium support you have to buy our support package. contact us for more details.   
                                        
                                    </p>   
                                    <a style="margin-top: 15px;" href="https://openapps.dev/support/" target="_blank" class="btn btn-success">I Need Premium Support.</a>
                                    
                                    
                                 </div>
                             
                            
    </div>

    </div>                                                             
                                                                
                            <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
            </div><!-- /.row -->
    </div><!-- /.page-content -->
    </div>
    </div><!-- /.main-content -->


<?php
// If session isn't meet, user will redirect to login page
} else { 
    header('Location: login.php');
}



?>