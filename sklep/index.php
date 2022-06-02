<?php
include("../modules/header.php");
?>

<link rel="stylesheet" href="./sklep.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=M+PLUS+1+Code&display=swap" rel="stylesheet">

<script>
    function DodajDoKoszyka(itemid) {
        location.assign("dodajdokoszyka.php?itemid="+itemid);
    }
</script>

<body>
    <div id="panel">
        <a href="index.php"><button class="button2">Strona główna</button></a>
        &nbsp;
        <a href="koszyk/"><button class="button2">Koszyk</button></a>
        &nbsp;
        <a href="../wyloguj.php"><button class="button2">Wyloguj się</button></a>
        &nbsp;
        <br>
        <br>
    </div>


    <div id="glowny">

        <?php

            if ($_SESSION['zalogowany']) {
                // STOP! Ta strona jest tylko dla zalogowanych!

                if (isset($_REQUEST['itemid'])) {
                    // Wyświetlanie wybranego produktu
                    $itemid = $_REQUEST['itemid'];
                    $itemdata = mysqli_query($baza, "SELECT * FROM produkty WHERE `id`=$itemid");
                    if (mysqli_num_rows($itemdata)) {
                        // Przedmiot istnieje w bazie danych, więc wyświetlamy informacje o nim
                        $r = mysqli_fetch_assoc($itemdata);
                        // Teraz wyświetlamy informacje o przedmiocie (zdjęcie, nazwa, cena, opis, itp)
                        ?>  
                            <br>
                            <div id="kontener">
                                <h1><?=$r['nazwa']?></h1>
                                <h2><?=$r['cena']?> zł</h2>
                                <img id="pokaz_zdjecie" src="../grafiki/<?=$r['zdjecie']?>">
                                <h3><?=$r['opis']?></h3>
                            </div>                       

                            <br>
                            <input class="button2" type="button" value="Cofnij" onclick="location.href='./'">
                            <input class="button2" type="button" value="Dodaj do koszyka" onclick="DodajDoKoszyka(<?=$r['id']?>)">
                        <?php
                    }
                    else {
                        // Przedmiot nie został odnaleziony
                        // Wywalamy błąd, albo przekierowujemy na listę produktów
                    }
                } else {
                    // Wyświetlanie listy produktów
                    $zapytanie1 = "SELECT * FROM produkty";
                    $odp1 = mysqli_query($baza, $zapytanie1);

                    while ($wiersz = mysqli_fetch_array($odp1)) {
                        ?>
                            <a id="produkty" href="?itemid=<?= $wiersz['id'] ?>">
                                <h3><?= $wiersz['nazwa'] ?></h3>
                                <img src='../grafiki/<?= $wiersz['zdjecie'] ?>' />
                                <h4><?= $wiersz['cena'] ?> zł</h4>
                            </a>
                        <?php
                    }
                }
            } else {
                // Jeżeli nie jest zalogowany, to niech lepiej idzie to zrobić teraz
                header("Location: ../login.php");
            }

        ?>

    </div>

</body>

</html>