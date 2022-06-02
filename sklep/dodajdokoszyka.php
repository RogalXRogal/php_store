<?php
  session_start();
  if(!$_SESSION['koszyk']) $_SESSION['koszyk'] = [];
  $_SESSION['koszyk'][] = $_REQUEST['itemid'];

  header("location: index.php?itemid=$_REQUEST[itemid]");
?>