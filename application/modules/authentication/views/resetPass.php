<?php include('layout/header.php'); ?>

<body>
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<div class="error-pagewrap">
		<div class="error-page-int">
			<div class="text-center ps-recovered">
				<h3>PASSWORD RECOVER</h3>
				<p>Please fill the form to recover your password</p>
			</div>
			<div class="content-error">
				<div class="hpanel">
                    <div class="panel-body poss-recover">
                        <p>
                            Enter your email address and your password will be reset and emailed to you.
                        </p>
                        <form action="<?php echo base_url('Authentication/resetPass')?>" id="loginForm">
                            <div class="form-group">
                                <label class="control-label" for="username">Email</label>
                                <input type="text" placeholder="example@gmail.com" required="" value="" name="email" class="form-control">
                                <span class="help-block small">Your registered email address</span>
                            </div>
                            <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">
                            <button class="btn btn-success btn-block">Reset password</button>
                        </form>
                    </div>
                </div>
			</div>
			<div class="text-center login-footer">
				<p>Copyright © 2018. All rights reserved. Template by <a href="https://colorlib.com/wp/templates/">Colorlib</a></p>
			</div>
		</div>   
    </div>
	<?php include('layout/footer.php'); ?>
