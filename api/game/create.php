<?php
    require '/home/robert/config/conn.php';
    $response['status'] = 'bad';

        $sql="INSERT INTO game(status) VALUES ('created');";
        //echo $sql;
        $result = mysqli_query($mysqli,$sql);
        //echo mysql_error();
        if (!$result) {
            $response['message'] = "Query Failed" . mysqli_error($mysqli);
            die(json_encode($response));
        } else {
            $id = mysqli_insert_id($mysqli);

            //creating true row
            $sql="INSERT INTO probability(id) VALUES ('" . $id . "');";
            $result = mysqli_query($mysqli,$sql);

            if(!result){
              $response['message'] = "Query Failed" . mysqli_error($mysqli);
              die(json_encode($response));
            } else {
              //creating prob row
              $sql="INSERT INTO trueCount(id) VALUES ('" . $id . "');";
              mysqli_query($mysqli,$sql);
              if(!result){
                $response['message'] = "Query Failed" . mysqli_error($mysqli);
                die(json_encode($response));
              } else {
                $response['status'] = 'ok';
                $response['message'] = "Game created";
                $response['id']      = $id;
                print json_encode($response);
              }
            }
        }
    $mysqli->close();
?>
