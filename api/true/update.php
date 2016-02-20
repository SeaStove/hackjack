<?php
  require '/var/www/hackjack/db/creds.php';
  $response['status'] = 'bad';
  if(isset($_POST['id']) && isset($_POST['total']) && isset($_POST['decks']) && isset($_POST['running'])){
    $id = htmlspecialchars($_POST['id']);
    $total = htmlspecialchars($_POST['total']);
    $decks = htmlspecialchars($_POST['decks']);
    $running = htmlspecialchars($_POST['running']));

    $sql = "UPDATE probability
            SET total = '" . $total "',
                decks = '" . $decks "',
                running = '" . $running . "'
            WHERE id = '" . $id . "';";
    $result = mysqli_query($mysqli,$sql);
    if (!$result) {
            $response['message'] = "Query Failed" . mysql_error();
            die(json_encode($response));
        } else {
            $response['status'] = "ok";

            print json_encode($response);
        }
  } else {
    print json_encode($response);
  }
 ?>
