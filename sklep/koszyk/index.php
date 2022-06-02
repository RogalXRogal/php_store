<?php
  include("../../modules/header.php");
  if(!$_SESSION['zalogowany']) header("location: ../../login.php");
?>
<title>Koszyk</title>
<link rel="stylesheet" href="../sklep.css" />


<table border="4">
<th>Przedmioty w koszyku:</th>
<?php
  $przedmioty = implode(",", $_SESSION['koszyk']);
  $szukaj = mysqli_query($baza, "SELECT * FROM produkty WHERE `id` IN($przedmioty) ORDER BY `cena` ASC");

  while($r = mysqli_fetch_assoc($szukaj)) {
    echo "<tr>";
    echo "<td>".$r['nazwa']."</td>";
    echo "</tr>";
  }
echo "</table>";
?>
