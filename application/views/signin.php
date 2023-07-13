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
<div class="signin-form">
		<h2>Signin</h2>

		<?php echo form_open('Signin',['name'=>'userregistration','autocomplete'=>'off']);?>

        <div class="form-group">
        <!--error message -->
        <?php if($this->session->flashdata('error')){?>
        <p style="color:red"><?php  echo $this->session->flashdata('error');?></p>	
        <?php } ?>

        <?php echo form_input(['name'=>'emailid','class'=>'form-control','value'=>set_value('emailid'),'placeholder'=>'Enter your Email id']);?>
        <?php echo form_error('emailid',"<div style='color:red'>","</div>");?>       	
                </div>
                <div class="form-group">
        <?php echo form_password(['name'=>'password','class'=>'form-control','value'=>set_value('password'),'placeholder'=>'Password']);?>
        <?php echo form_error('password',"<div style='color:red'>","</div>");?>  
                </div>
                <div class="form-group">
        <?php echo form_submit(['name'=>'insert','value'=>'Submit','class'=>'btn btn-success btn-lg btn-block']);?>
                </div>
            </form>
            <?php echo form_close();?>
            <div class="text-center">Not Registered Yet? <a href="<?php echo site_url('Signup');?>">Sign up here</a></div>
        </div>
        <?php include('inc_footer.php');?>
        <?php include('inc_bottom.php');?>
<script type="text/javascript"></script>
</body>
</html>