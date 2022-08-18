<?php
    $c_id = $_SESSION['c_id'];
    $ret="SELECT  * FROM clients  WHERE c_id=?";
    $stmt= $mysqli->prepare($ret) ;
    $stmt->bind_param('i',$c_id);
    $stmt->execute() ;//ok
    $res=$stmt->get_result();
    //$cnt=1;
    while($row=$res->fetch_object())
    {
?>
 <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">

    <div class="container-fluid">
      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Brand -->
      <a class="navbar-brand pt-0" href="../../index.php">
        <img src="assets/img/brand/blue.png" class="navbar-brand-img" alt="...">
      </a>
      <!-- User -->
 
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
        <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="staff_dashboard.php">
                <img src="assets/img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div>
        <!-- Form -->
        <form class="mt-4 mb-3 d-md-none">
          <div class="input-group input-group-rounded input-group-merge">
            <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <span class="fa fa-search"></span>
              </div>
            </div>
          </div>
        </form>
        <!-- Navigation -->
        <ul class="navbar-nav">
          <li class="nav-item   ">
            <a class="nav-link  " href="client_dashboard.php">
              <i class="ni ni-tv-2 text-primary"></i> Dashboard
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="client_view_cars.php">
              <i class="fa fa-car text-blue"></i>Cars
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="client_hire_car.php">
              <i class="fas fa-business-time text-blue"></i> Hire Car
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="client_manage_hiring.php">
              <i class="fas fa-cogs text-blue"></i> Manage My Hiring
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="client_manage_payments.php">
              <i class="fas fa-money-check-alt text-blue"></i> Payments
            </a>
          </li>


          <li class="nav-item">
            <a class="nav-link " href="client_give_feedbacks.php">
              <i class="fas fa-envelope text-blue"></i> Feedbacks
            </a>
          </li>

          
          <li class="nav-item">
            <a class="nav-link " href="client_logout.php">
            <i class="ni ni-user-run text-red"></i> Log Out
            </a>
          </li>

          
        </ul>
        
      </div>
    </div>
  </nav>

<?php }?>