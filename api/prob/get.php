<?php
  require '/var/www/hackjack/db/creds.php';

  if(isset($_POST['id'])){
    $id = htmlspecialchars($_POST['id']);

    $sql = "select * from probability where id = '" . $id . "';";
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
