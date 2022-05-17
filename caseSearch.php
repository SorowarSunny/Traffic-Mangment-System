<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Case Search </title>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-4">
                    
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-7">

                                <form action="" method="GET">
                                    <div class="input-group mb-3">
                                        <input type="text" name="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Enter vehicle Reg. Number ">
                                        <button type="submit" class="btn btn-primary">Search</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Case_id</th>
                                    <th>Vahicle_Number</th>
                                    <th>Occur_time</th>
                                    <th>city</th>
                                    <th>location</th>
                                    <th>law ID</th>
                                    <th>Total_fine</th>
                                    <th>last_pay_date</th>
                                    <th>Case_Status</th>
                                    <th>Action</th>


                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $con = mysqli_connect("localhost","root","","traffic_database");

                                    if(isset($_GET['search']))
                                    {
                                        $filtervalues = $_GET['search'];
                                        $query = "SELECT * FROM cases WHERE  Vahicle_Number  LIKE '%$filtervalues%' ";
                                        $query_run = mysqli_query($con, $query);

                                        if(mysqli_num_rows($query_run) > 0)
                                        {
                                            foreach($query_run as $items)
                                            {
                                                ?>
                                                <tr>
                                                <td> <?= $items['Case_id']; ?></td>
                                                 <td><?= $items['Vahicle_Number']; ?></td>
                                                <td><?= $items['Occur_time']; ?></td>
                                                <td><?= $items['city']; ?></td>
                                                <td> <?= $items['location']; ?></td>
                                                 <td><?= $items['law_id1']; ?></td>
                                                <td><?= $items['Total_fine']; ?></td>
                                                <td><?= $items['last_pay_date']; ?></td>
                                                <td><?= $items['Case_Status']; ?></td>
                                                <td><li><a href="Casepayment.php" class="btn brand z-depth-0">Pay Fine </a></li></td>
                                                
                                                </tr>

                                                <?php
                                            }
                                        }
                                        else
                                        {
                                            ?>
                                                <tr>
                                                    <td colspan="4">No Cases Found</td>
                                                </tr>
                                            <?php
                                        }
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>