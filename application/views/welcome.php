<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Demo</title>
  <?php include('inc_metadata.php'); ?>
  <style type="text/css">
    #map {
      height: 500px;
    }
  </style>
</head>

<body>
  <?php include('inc_nav.php'); ?>

  <div class="signup-form">
    <h2>Hi! this is Home Page</h2>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
      Nisi nam fugit dolorum ipsam molestias obcaecati eos perferendis tempore, dicta, nihil numquam culpa!
      Reprehenderit eos atque deleniti culpa asperiores debitis aperiam.

      Lorem ipsum dolor sit, amet consectetur adipisicing elit.
      Sint nisi doloribus, dignissimos facere labore nihil animi enim saepe dolorum dicta soluta
      perspiciatis suscipit totam sequi debitis cupiditate sed molestias eaque!
    </p>

    <div id="map" class="map">

    </div>
    <!-- </div>
<?php echo form_open_multipart('welcome/uploadImage'); ?>

<input type="file" name="userfile" size="20" />

<br /><br />

<input type="submit" value="upload" />

</form> -->
    <!-- 
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="<?php echo base_url('assets/images/download.jepg') ?>" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<?php echo base_url('assets/images/download(1).jepg') ?>" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<?php echo base_url('assets/images/download(2).jepg') ?>" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> -->

    <?php include('inc_footer.php'); ?>
    <?php include('inc_bottom.php'); ?>
    <script type="text/javascript"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key= =initMap"></script>
    <script>
      function initMap() {
        // Initialize the map
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {
            lat: 37.7749,
            lng: -122.4194
          }, // Set the initial map center coordinates
          zoom: 12 // Set the initial zoom level
        });

        // Add a marker to the map
        var marker = new google.maps.Marker({
          position: {
            lat: 37.7749,
            lng: -122.4194
          }, // Set the marker position coordinates
          map: map, // Set the map to place the marker on
          title: 'San Francisco' // Set the marker title
        });
      }
    </script>
</body>

</html>