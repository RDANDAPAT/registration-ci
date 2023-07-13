<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">MENTOR</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" onclick="window.location.href='<?php echo base_url('index.php/welcome');?>'">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="about" onclick="window.location.href='<?php echo base_url('index.php/about');?>'">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="window.location.href='#'">Courses</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="window.location.href='#'">Trainers</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="window.location.href='<?php echo base_url('index.php/editUser');?>'">Edit User Details</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" onclick="window.location.href='<?php echo base_url('index.php/welcome');?>'">Home</a>
          <a class="dropdown-item" onclick="window.location.href='<?php echo base_url('index.php/about');?>'">About</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" onclick="window.location.href='<?php echo base_url('index.php/logout');?>'">Log out</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" onclick="window.location.href='#'">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" onclick="window.location.href='<?php echo base_url('index.php/logout');?>'">Log out</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Not Enable" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
  </div>
</nav>