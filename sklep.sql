-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Lis 2021, 00:13
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(40) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `opis` varchar(1000) DEFAULT NULL,
  `zdjecie` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `cena`, `opis`, `zdjecie`) VALUES
(1, 'AMD Ryzen 5 1600 AF', 599, 'Poznaj AMD Ryzen 5 1600 AF. Udoskonalony procesor z architekturą AMD Zen, przeznaczony do zastosowań profesjonalnych oraz gamingu. Odznacza się wysoką kulturą pracy. Daje się w prosty sposób podkręcać. Bez problemu radzi sobie z wielozadaniową pracą. A wszystko to przy wyjątkowo niskim poborze energii.', 'ryzen51600af.png'),
(2, 'Intel Core i3-10100F', 389, 'Poznaj moc do dziesiątej potęgi. Nowy procesor Intel® Core™ i3-10100F z rodziny Comet Lake zapewnia wysoką wydajność, która przekłada się na wzrost produktywności i fantastyczną rozrywkę. Intel Core i3 10-generacji oferuje m.in. częstotliwość dochodzącą do 4.3 GHz w trybie turbo, 4 rdzenie, 8 wątków, a także inteligentną optymalizację systemu. Odkryj nowe ultramożliwości z procesorem Intel® Core™ i3-10100F.', 'intelcorei3-10100f.png'),
(3, 'Intel Core i7-11700K', 1779, 'Dzięki 11. architekturze procesorów Intel Core do komputerów stacjonarnych i odpowiedniej równowadze między taktowaniem nawet 5 GHz a potężnymi 8 rdzeniami i 16 wątkami, możesz uzyskać dużą liczbę klatek i niewielkie opóźnienia, aby streamowanie i granie sprawiało większą przyjemność. Dzięki zaawansowanym funkcjom z odblokowanym mnożnikiem oraz obsłudze najnowszych platform technologicznych, z procesorem Intel Core i7-11700K 11. generacji możesz bawić się tak, jak chcesz.', 'intelcorei711700k.png'),
(4, 'AMD Athlon 200GE', 329, 'Odkryj wydajność procesora AMD Athlon 200GE 3.2 GHz. Jednostki wykonanej w procesie technologicznym 14nm, która może się stać sercem Twojego komputera. Kompatybilność z gniazdem AM4 pozwala na instalację CPU w płytach głównym najnowszej generacji i przyspieszać pracę zestawu pamięcią RAM o taktowaniu do 2677 MHz. AMD Athlon 200GE to także współczynnik TDP na poziomie 35W, a więc niskie zapotrzebowanie na energię oraz stabilność podczas pracy.', 'amdathlon200ge.png'),
(5, 'Microsoft Xbox Series S', 1345, 'Oto Microsoft Xbox Series S - konsola nowej generacji, która pomimo, że jest o 60% mniejsza od swojego większego brata Xbox Series X, posiada komponenty, które gwarantują gaming na najwyższym poziomie. Brak napędu sprawia, że konsola jest w pełni cyfrowa, a dysk SSD NVMe o pojemności 512 GB i architekturze Xbox Velocity nie tylko pomieści Twoje ulubione gry, ale również błyskawicznie je wczyta.', 'microsoftxboxseriess.png'),
(6, 'Microsoft Xbox Series X', 2349, 'Przyszłość gier właśnie nadeszła. Na imię jej Xbox Series X. W tej konsoli, w ramach architektury XboX Velocity, dokonała się głęboka integracja zaplecza sprzętowego z oprogramowaniem.', 'microsoftxboxseriesx.png'),
(7, 'Nintendo Switch Joy-Con - Szary', 1375, 'Konsola Nintendo Switch to nowe podejście do kwestii wygodnego gamingu. Bez problemu zagrasz więc nie tylko w domu, ale także u znajomego, czy nawet na świeżym powietrzu. Graj sam lub ze znajomymi. Nudna impreza zyska nowy wymiar.', 'nintendoswitch.png'),
(8, 'Nintendo Switch Lite - Niebieski', 989, 'Nintendo Switch Lite została zaprojektowana do rozrywki poza domem. Nie podłączysz jej do telewizora, ale zabierzesz wszędzie, gdzie nabierzesz ochoty na grę. Konsola jest lekka, przenośna i ma zintegrowane kontrolery Joy-Con.', 'nintendoswitchlite.png'),
(9, 'Oculus Quest 2 - 128 GB', 1879, 'Przeglądaj niesamowite gry i materiały z niezrównaną swobodą używając gogli VR Oculus Quest 2, w wariancie z wbudowaną pamięcią 128 GB. Te łatwe w konfiguracji, kompatybilne z VR na komputerze gogle zostały wyposażone w szybki procesor Qualcomm Snapdragon XR2 i grafikę nowej generacji.', 'oculusquest2.png'),
(10, 'Dell S2721DGFA nanoIPS HDR', 1809, 'Zachwycający design oraz niezwykle bogata funkcjonalność – to czyni z monitora Dell S2721DGFA narzędzie, dzięki któremu odkryjesz gaming na nowo. Solidna konstrukcja połączona z panelem IPS WQHD oferuje najlepsze doznania z gry w każdym calu. Bogate kolory, najdrobniejsze szczegóły i niezwykle szybki czas reakcji to cechy, dzięki którym odniesiesz sukces na wirtualnych polach bitwy. Poznaj gamingowy monitor Dell S2721DGFA.', 'dells2721dgfa.png'),
(11, 'Acer Nitro VG240YPBIIP', 949, 'Zyskaj dodatkową przewagę nad przeciwnikiem za sprawą gamingowego monitora Acer Nitro VG240YPBIIP. Daj się porwać niezwykłej dynamice i wiernie oddanym kolorom. Zyskaj też dodatkowy oręż w walce w postaci błyskawicznej reakcji matrycy. Jej szybkość wyświetlania sprawia, że obraz jest płynniejszy, co da Ci więcej czasu na reakcję i umożliwi dokładniejsze celowanie.', 'acernitrovg240ypbiip.png'),
(12, 'ASUS ROG Strix G15', 4299, 'Gotuj się do walki. Gamingowy laptop ASUS ROG Strix G15 wprowadzi Cię na pola wirtualnych bitew, oddając do dyspozycji arsenał, który poprowadzi Cię do niezliczonych zwycięstw. Wyposażony został w wyselekcjonowane, ultrawydajne komponenty - nowoczesny procesor oraz dedykowaną kartę graficzną. Z takim zapleczem technologicznym Twoi rywale mogą co najwyżej przygotowywać się do odwrotu.', 'asusrogstrixg15.png'),
(13, 'Razer Deathadder Essential', 79, 'Przez ponad dekadę seria Razer Deathadder była ostoją na światowej arenie e-sportowej. Deathadder to niezawodność, ergonomia i najwyższa jakość wykonania, dzięki którym rozgrywka nabiera nowego znaczenia. Poznaj najnowsze dzieło od Razera - Deathadder Essential. Ten niewielki gryzoń zachwyci Cię klasyczną ergonomią, zaawansowaną wytrzymałością, a także perfekcyjnym śledzeniem ruchów. Odkryj nową jakość gamingu.', 'razerdeathadderessential.png'),
(14, 'Logitech G102 LIGHTSYNC', 115, 'Logitech G102 Lightsync to przewodowa mysz z klasyczną 6-przyciskową, wygodną konstrukcję w kolorze czarnym. Urządzenie wyposażono w czujnik przeznaczony do gier. Co więcej, mysz posiada podświetlenie Lightsync, które nie tylko sprawi, że gra będzie bardziej wciągająca, ale również podświetli Twoje biurko.', 'logitechg102lightsync.png'),
(15, 'SteelSeries Apex 3', 308, 'Przygotuj się do gry w najlepszy możliwy sposób z klawiaturą SteelSeries Apex 3. Zaprojektowano ją tak, aby łączyła w sobie nowoczesne technologie z użytecznymi funkcjonalnościami gamingowymi. Dzięki temu każda rozgrywka dostarczy Ci niesamowitych wrażeń. Klawiatura wyposażona jest w przełączniki zmniejszające tarcie, gwarantujące ponadprzeciętną trwałość. Zamów swój egzemplarz i wejdź do gry.', 'steelseriesapex3.png'),
(16, 'Logitech G213 PRODIGY', 199, 'Logitech G213 PRODIGY to ergonomiczna klawiatura gamingowa, którą charakteryzuje wysoka jakość wykonania, niezawodność i szybki czas reakcji. To cechy, dzięki którym odniesiesz sukces. Jej funkcjonalność oraz konstrukcja dostosowana jest typowo do gamingu. Klawiatura Logitech G213 PRODIGY pomoże Ci odmienić losy rozgrywki na Twoją korzyść.', 'logitechg213prodigy.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(40) DEFAULT NULL,
  `haslo` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `nazwa`, `haslo`, `email`) VALUES
(1, 'adminek', 'adminek', 'adminek@example.com'),
(2, 'adminsy', 'adminsy', 'adminsy@example.com'),
(6, 'test', 'test', 'test@example.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
