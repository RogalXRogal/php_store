<?php
    include("./modules/header.php");
?>
<title>Rejestracja</title>

<div class="center">

    <h1>Rejestracja</h1>
    <div id="panel">
        <?php
            if (@$_REQUEST['error'] == "username_in_use") {
                ?>
                    <div class="error">Podana nazwa użytkownika jest już zajęta</div>
                <?php
            }
            else if (@$_REQUEST['error'] == "email_in_use") {
                ?>
                    <div class="error">Podany email jest już zajęty</div>
                <?php
            }
            else if (@$_REQUEST['error'] == "empty_fields") {
                ?>
                    <div class="error">Żadne pole nie może być puste!</div>
                <?php
            }
        ?>
        <form class="form" action="dodanie.php" method="POST">
            <label for="nazwa">Nazwa użytkownika:</label>
            <input type="text" id="nazwa" name="nazwa">
            <label for="haslo">Hasło:</label>
            <input type="password" id="haslo" name="haslo">
            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email">
            <div id="lower">
                <input type="submit" value="Potwierdź">
            </div>
        </form>
        <div class="wiadomosc">

        </div>
    </div>
</div>

</body>

</html>