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
    <div class="container">
    <div class="row">
    <div class="col-md-12">
    <h3>Update Record |  CRUD Operations using CodeIgniter</h3>
    <hr />
    </div>
    </div>
    <!--- Success Message --->
    <?php if ($this->session->flashdata('success')) { ?>
    <p style="font-size: 18px; color:green"><?php echo $this->session->flashdata('success'); ?></p>
    <?php }?>
    <!---- Error Message ---->
    <?php if ($this->session->flashdata('error')) { ?>
    <p style="font-size: 18px; color:red"><?php	echo $this->session->flashdata('error'); ?></p>
    <?php } ?>
    <?php echo form_open('Signup/updatedetails',['name'=>'insertdata','autocomplete'=>'off']);?>
    <?php echo form_hidden ('userid',$row[0]->id);?>
    <div class="row">
    <div class="col-md-4"><b>First Name</b>
    <?php echo form_input(['name'=>'firstname','class'=>'form-control','value'=>set_value('firstname',$row[0]->FirstName)]);?>
    <?php echo form_error('firstname',"<div style='color:red'>","</div>");?>
    <!-- <input name='firstname' class='from-control' value='<?php echo $row->FirstName;?>'></input> -->
    </div>
    <div class="col-md-4"><b>Last Name</b>
    <?php echo form_input(['name'=>'lastname','class'=>'form-control','value'=>set_value('lastname',$row[0]->LastName)]);?>
    <?php echo form_error('lastname',"<div style='color:red'>","</div>");?>
    </div>
    </div>
    <div class="row">
    <div class="col-md-4"><b>Email id</b>
    <?php echo form_input(['name'=>'emailid','class'=>'form-control','value'=>set_value('emailid',$row[0]->Email)]);?>
    <?php echo form_error('emailid',"<div style='color:red'>","</div>");?>
    </div>
    </div>
    <div class="row" style="margin-top:1%">
    <div class="col-md-8">
    <?php echo form_submit(['name'=>'insert','value'=>'Update']);?>
    </div>
    </div>
    <?php echo form_close();?>
    </div>
    </div>
    <?php include('inc_footer.php');?>
<?php include('inc_bottom.php');?>
<script type="text/javascript"></script>
</body>
</html>