<?php include('inc_config.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Demo</title>
<?php include('inc_metadata.php');?>
</head>
<body>
	<div class="signup-form">
			<h2>Register</h2>
			<p class="hint-text">Create your account</p>

			<?php echo form_open('Signup',['name'=>'userregistration','autocomplete'=>'off']);?>
			<div class="form-group">

		<!--success message -->
			<?php if($this->session->flashdata('success')){?>
		<p style="color:green"><?php  echo $this->session->flashdata('success');?></p>	
			<?php } ?>

			<div class="row">
				<div class="col">
			<?php echo form_input(['name'=>'firstname','class'=>'form-control','value'=>set_value('firstname'),'placeholder'=>'Enter First Name']);?>
			<?php echo form_error('firstname',"<div style='color:red'>","</div>");?>

				</div>
				<div class="col">
			<?php echo form_input(['name'=>'lastname','class'=>'form-control','value'=>set_value('lastname'),'placeholder'=>'Enter Last Name']);?>
			<?php echo form_error('lastname',"<div style='color:red'>","</div>");?>
		
				</div>
			</div>        	
			</div>
			<div class="form-group">
			<?php echo form_input(['name'=>'emailid','class'=>'form-control','value'=>set_value('emailid'),'placeholder'=>'Enter your Email id']);?>
			<?php echo form_error('emailid',"<div style='color:red'>","</div>");?>       	
			</div>
		<div class="form-group">
			<?php echo form_password(['name'=>'password','class'=>'form-control','value'=>set_value('password'),'placeholder'=>'Password']);?>
			<?php echo form_error('password',"<div style='color:red'>","</div>");?>  


			</div>
		<div class="form-group">
			<?php echo form_password(['name'=>'confirmpassword','class'=>'form-control','value'=>set_value('confirmpassword'),'placeholder'=>'Password']);?>
			<?php echo form_error('confirmpassword',"<div style='color:red'>","</div>");?>  
			</div>        
	
			<div class="form-group">
			<?php echo form_submit(['name'=>'insert','value'=>'Submit','class'=>'btn btn-success btn-lg btn-block']);?>
				</div>
		</form>
		<?php echo form_close();?>
		<div class="text-center">Already have an account? <a href="<?php echo site_url('Signin');?>">Sign in</a></div>
		</div>
		<?php include('inc_footer.php');?>
		<?php include('inc_bottom.php');?>
<script type="text/javascript"></script>
</body>
</html>
</body>
</html>