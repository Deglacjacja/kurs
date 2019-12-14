<?php
  $number = 20;
  echo '$number'; // w apostrofir potraktuje zmienna jako teks
  echo "$number"; // w cudzysłowie wyświetli wartość zmiennej

  // int number = 20; c#
$number="Janusz";
echo $number;

$number = 30;
echo "<br>liczba: $number<br>";

// $imię = "Janusz;"
// echo $imię; nie robić polskich znaków!

$_number = 1;
echo $_number;

// $1number = 1; nazwa zmiennej nie może rozpoczynac sie od zmiennej
// typy skalarny
// typ boolean

$bool = true;
echo $bool; //1 - prawda

$bool = false;
echo $bool; //nic nie wyswietla jesli zmienna ma wartosc false

//typ integer

echo "<hr>";
$calkowita = 40;

$binarna =0b1010; //1010 => 0*2*0 + 1*2*1 + 0*2*2 + 1*2*3 + 0+2+0+8=10
$oktalna = 01010;
$heksadecymalna = 0xA;

echo $heksadecymalna."<hr>";
// . konkatenacja

//typ float

$x = 20.5;

// składnia heredoc

$name = "Anna";
$surname = "Kowal";

$napis = <<< TEKST
  Masz na imie: $name<br>
  Twoje nazwisko: $surname<hr>
TEKST;

echo $napis;

echo "<br>binarna: $binarna<br>oktalna: $oktalna<br>heksadecymanla: $heksadecymalna<hr>";

$text = "binarna: $binarna<br>";
$text.="oktalna: $oktalna<br>";
$text.="heksadecymalna: $heksadecymalna<hr>";

echo $text;

echo <<<T
janusz<br>
kowalski<hr>
T;

//składnia nowdoc

$x = 20;
echo <<<E
  wiek: $x<hr>
E;

?>
