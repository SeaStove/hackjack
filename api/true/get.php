<?php
  require '/var/www/hackjack/db/creds.php';

  if(isset($_POST['trueId'])){
    $id = htmlspecialchars($_POST['trueId']);

    $sql = "select * from trueCount where id = '" . $id . "';";
    if (!$result) {
            $response['message'] = "Query Failed" . mysql_error();
            die(json_encode($response));
        } else {
            $response['status'] = "ok";
            $response['data'] = mysqli_fetch_row($result);

            print json_encode($response);
        }
  }
 ?>
