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
    <?php include('inc_nav.php');?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>CRUD Operations using CodeIgniter</h3> <hr />
                <!--- Success Message --->
                <?php if ($this->session->flashdata('success')) { ?>
                <p style="font-size: 20px; color:green"><?php echo $this->session->flashdata('success'); ?></p>
                <?php }?>
                <!---- Error Message ---->
                <?php if ($this->session->flashdata('error')) { ?>
                <p style="font-size: 20px; color:red"><?php echo $this->session->flashdata('error'); ?></p>
                <?php } ?>
                <a href="<?php echo site_url('signup'); ?>">
                <button class="btn btn-primary"> Insert Record</button></a>
                <div class="table-responsive">
                <table id="mytable" class="table table-bordred table-striped">
                    <thead>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Posting Date</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </thead>
                    <tbody>
                    <?php
                    $cnt=1;
                    foreach($result as $row)
                    {
                    ?>
                    <tr>
                    <td><?php echo htmlentities($cnt);?></td>
                    <td><?php echo htmlentities($row->FirstName);?></td>
                    <td><?php echo htmlentities($row->LastName);?></td>
                    <td><?php echo htmlentities($row->Email);?></td>
                    <td><?php echo htmlentities($row->PostingDate);?></td>
                    <td>
                    <?php
                    //for passing row id to controller
                    echo  anchor("Edituser/getdetails/{$row->id}",' ','class="btn btn-primary btn-xs glyphicon glyphicon-pencil"')?>
                    </td>
                    <td>
                    <?php
                    //for passing row id to controller
                    echo anchor("Edituser/removeuser/{$row->id}",' ','class="btn btn-danger btn-xs glyphicon glyphicon-trash"')?>
                    </td>
                    </tr>
                    <?php
                    // for serial number increment
                    $cnt++;
                    } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
	</div>
    <?php include('inc_footer.php');?>
<?php include('inc_bottom.php');?>
<script type="text/javascript"></script>
</body>
</html>