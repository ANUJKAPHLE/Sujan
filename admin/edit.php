
<div id="viewport">
<?php
include 'admin.header.php';

if(isset($_POST['update-data']))
{
    $name = $_POST['bus_name'];
    $type = $_POST['bus_type'];
    $d_time = $_POST['d_time'];
    $dep_place = $_POST['d_place'];
    $a_time = $_POST['a_time'];
    $ari_place = $_POST['a_place'];
    $price = $_POST['price'];
    if($_POST['sat'] == 'On'){
        $Sat = 1;
    }
    else{
        $Sat = 0;
    }
    if($_POST['sun'] == 'On'){
        $Sun = 1;
    }
    else{
        $Sun = 0;
    }
    if($_POST['mon'] == 'On'){
        $Mon = 1;
    }
    else{
        $Mon = 0;
    }
    if($_POST['tue'] == 'On'){
        $Tue = 1;
    }
    else{
        $Tue = 0;
    }
    if($_POST['wed'] == 'On'){
        $Wed = 1;
    }
    else{
        $Wed = 0;
    }
    if($_POST['thu'] == 'On'){
        $Thu = 1;
    }
    else{
        $Thu = 0;
    }
    if($_POST['fri'] == 'On'){
        $Fri = 1;
    }
    else{
        $Fri = 0;
    }
    $number=$_POST['bus_number'];
    $id = $_POST['id'];
    $insert_bus_query = "UPDATE _all_bus SET `name`='$name', `number`='$number', `type`='$type', `d_time`='$d_time', `d_place`='$dep_place', `a_time`='$a_time', `a_place`='$ari_place', `price`='$price', `Sat`='$Sat', `Sun`= '$Sun', `Mon`='$Mon', `Tue`='$Tue', `Wed`='$Wed', `Thu`='$Thu', `Fri`='$Fri' WHERE id='$id'";

    mysqli_query($conn,$insert_bus_query);
    header('Location: '.$_SERVER['PHP_SELF'].'?id='.$id);
}
if(isset($_GET['id'])){
    $get_id = $_GET['id'];
    $view_query = "SELECT * FROM _all_bus WHERE id='$get_id'";
    $result = mysqli_query($conn, $view_query);
    $view_row = mysqli_fetch_assoc($result);
    }
?>
    <div class="container bg-light shadow-md rounded py-4 " style="max-width: 550px">
        <div class="card">
            <h5 class="card-header">
                Edit Bus
            </h5>
            <form class="container" id="" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <input type="hidden" name="id" value="<?php echo $get_id;?>"
                <label for="bus_name" class="col-form-label">Bus Name</label>
                <div class="form-row">
                    <div class="col form-group">

                        <input name="bus_name" id="bus_name" type="text" class="form-control" value="<?php echo $view_row['name']?>" required  placeholder="">

                    </div>
                </div>
                <label for="bus_number" class="col-form-label">Bus Number</label>
                <div class="form-row">
                    <div class="col form-group">

                        <input value="<?php echo $view_row['number']?>" name="bus_number" id="bus_number" type="text" class="form-control" required  placeholder="">

                    </div>
                </div>
                <label for="bus_type" class="col-form-label">Bus Type</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select value="" name="bus_type" class="form-control" id="bus_type">
                            <option>AC</option>
                            <option>NON-AC</option>
                        </select>
                    </div>
                </div>
                <label for="d_place" class="col-form-label">Departure Place</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select id="d_place" class="form-control" name="d_place">
                            <option selected hidden>From</option>
                            <option>Butwal</option>
                            <option>Chitwan</option>
                            <option>Dang</option>
                            <option>Pokhara</option>
                            <option>palpa</option>
                            <option>Kathmandu</option>
            
                        </select>

                    </div>
                </div>
                <label for="d_time" class="col-form-label">Departure Time</label>
                <div class="form-row">
                    <div class="col form-group">
                        <input value="<?php echo $view_row['d_time']?>"name="d_time" id="d_time" type="text" class="form-control">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>

                    </div>
                </div>
                <label for="a_place" class="col-form-label">Bus Name</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select id="a_place" class="form-control" name="a_place">
                            <option selected hidden>From</option>
                            <option>deluxe</option>
                            <option>Chitwan</option>
                            <option>Dang</option>
                            <option>Pokhara</option>
                            <option>palpa</option>
                            <option>Kathmandu</option>
                        </select>

                    </div>
                </div>
                <label for="a_time" class="col-form-label">Arrival Time</label>
                <div class="form-row">
                    <div class="col form-group">
                        <input value="<?php echo $view_row['a_time']?>" name="a_time" id="a_time" type="text" class="form-control">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>

                    </div>
                </div>
                <label for="price" class="col-form-label">Price</label>
                <div class="form-row">
                    <div class="col form-group">

                        <input value="<?php echo $view_row['price']?>" name="price" id="price" type="text" class="form-control" required  placeholder="">

                    </div>
                </div>
                <label for="sat" class="col-form-label">Saturday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="sat" class="form-control" id="sat">
                            <option >On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
                <label for="sun" class="col-form-label">Sunday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="sun" class="form-control" id="sun">
                            <option>On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
                <label for="mon" class="col-form-label">Monday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="mon" class="form-control" id="mon">
                            <option>On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
                <label for="tue" class="col-form-label">Tuesday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="tue" class="form-control" id="tue">
                            <option>On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
                <label for="wed" class="col-form-label">Wednesday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="wed" class="form-control" id="wed">
                            <option>On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
                <label for="thu" class="col-form-label">Thursday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="thu" class="form-control" id="thu">
                            <option>On</option>
                            <option>Off</option>
                        </select>
                    </div>
                </div>
                <label for="fri" class="col-form-label">Friday</label>
                <div class="form-row">
                    <div class="col form-group">
                        <select name="fri" class="form-control" id="fri">
                            <option <?php echo $view_row['Fri']==1?'Selected':''?>>On</option>
                            <option <?php echo $view_row['Fri']==0?'Selected':''?>>Off</option>
                        </select>
                    </div>
                </div>
                <input class="btn btn-primary btn-block" type="submit" name="update-data" value="Proceed">
                <br>
            </form>
        </div>

        </form>
    </div>
</div>
<script>

    $('#d_time').timepicker();
    $('#a_time').timepicker();
</script>