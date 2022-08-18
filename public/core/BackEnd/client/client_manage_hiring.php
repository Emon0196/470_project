<?php
  session_start();
  include('inc/config.php');
  include('inc/checklogin.php');
  check_login();
  //hold logged in user session.
  $c_id = $_SESSION['c_id'];
  //delete Booking
  if(isset($_GET['delete_booking']))
  {
        $id=intval($_GET['delete_booking']);
        $adn="DELETE FROM bookings WHERE b_id = ?";
        $stmt= $mysqli->prepare($adn);
        $stmt->bind_param('i',$id);
        $stmt->execute();
        $stmt->close();	 
  
          if($stmt)
          {
            $success = "My Booking Record Deleted";
          }
            else
            {
                $err = "Try Again Later";
            }
    }
  
?>

<!DOCTYPE html>
<html lang="en">

<?php include("inc/head.php");?>

<body class="">
 <!--Sidebar-->
 <?php include("inc/sidebar.php");?>
  
  <div class="main-content">
    <!-- Navbar -->
   <?php include("inc/nav.php");?>
    <!-- End Navbar -->
    <!-- Header -->
    <div class="header  pb-8 pt-5 pt-md-8" style="min-height: 300px; background-image: url(../../img/header-bg.jpg); background-size: cover; background-position: center top;">
        <span class="mask bg-gradient-default opacity-5"></span>
    </div>

    <div class="container-fluid mt--7">
        <!--Pie chart to show number of car categories-->
        <div class="row">
            <div class="card col-md-12">
                <h2 class="card-header">Manage My Car Hiring Records.</h2>
                <div class="card-body">
                    <div class="table-responsive">
                    <!-- Projects table -->
                        <table class="table align-items-center table-flush">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Car Name</th>
                                <th scope="col">RegNo.</th>
                                <th scope="col">Category</th>
                                <th scope="col">Date Hired</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action<th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            //get details of all cars
                                    $c_id = $_SESSION['c_id'];
                                    $ret="SELECT * FROM bookings WHERE c_id = ?  ORDER BY RAND() "; 
                                    $stmt= $mysqli->prepare($ret) ;
                                    $stmt->bind_param('i', $c_id);
                                    $stmt->execute() ;//ok
                                    $res=$stmt->get_result();
                                    $cnt=1;
                                    while($row=$res->fetch_object())
                                    {
                                        //Trim Timestamp To DD-MM-YYYY
                                        $mysqlDateTime = $row->b_date;
                            ?>
                                <tr>
                                <th scope="row">
                                    <?php echo $cnt;?>
                                </th>
                                <td>
                                    <?php echo $row->car_name;?>
                                </td>
                                <td>
                                    <?php echo $row->car_regno;?>
                                </td>
                                
                                <td>
                                    <?php echo $row->car_type;?>
                                </td>

                                <td>
                                    <?php echo date("d-m-Y", strtotime($mysqlDateTime));?>
                                </td>
                                
                                <td>
                                    <?php 
                                    //If Approved show in Green If Pending Red
                                        if($row->b_status == 'Approved')
                                        {
                                            echo '<span class="badge badge-success">Approved</span>';
                                        }
                                        else
                                        {
                                            echo '<span class="badge badge-danger">Pending</span>';
                                        }
                                    ?>
                                </td>
                                <td>
                                    <?php 
                                        if($row->b_status != 'Approved')
                                        {
                                            echo "<span class='badge badge-normal'>Not Approved!</span>";
                                            echo  "<a href  ='client_manage_hiring.php?delete_booking=<?php echo $row->b_id;?>' class='badge badge-danger'>
                                                       <i class='fa fa-car'></i>
                                                       cancel hiring
                                                    </a>";
                                                                               
                                        }  
                                        else
                                        {
                                            echo "<span class='badge badge-success'>Already Approved!</span>";

                                                
                                        }                                     

                                        ?>  

                                    <a href  ='client_view_bookings.php?car_id=<?php echo $row->car_id;?>&b_id=<?php echo $row->b_id;?>' class='badge badge-primary'>
                                        <i class='fas fa-eye'></i> <i class='fa fa-car'></i>
                                            View My Car
                                    </a>

                                    <a href  ='client_manage_hiring.php?delete_booking=<?php echo $row->b_id;?>' class='badge badge-danger'>
                                                    <i class='fa fa-car'></i>
                                                     cancel hiring
                                                    </a>
                                                           

                                </td>
                                </tr>
                            <?php $cnt = 1+$cnt; }?>
                            </tbody>
                        </table>
                    </div>
                </div>    
            </div>
        </div>
      <!-- Footer -->
        <?php include("inc/footer.php");?>      
    </div>
  </div>
 

</body>

</html>