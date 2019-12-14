<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Table</title>
  </head>
  <body>
    <table>
      <tr>
        <th>imię</th>
        <th>nazwisko</th>
        <th>wiek</th>
        <th>miasto</th>
        <th>adres</th>
      </tr>
      <tr>
<?php
//person 1
$name1 = "janusz";
$surname1 = "kowalski";
$age1 = "25";
$city1 = "warszawa";
$address1 = "kwiatowa";

echo<<<ROW
<td>$name1</td>
<td>$surname1</td>
<td>$age1</td>
<td>$city1</td>
<td>$address1</td>
ROW;
 ?>

      <tr>
<?php
//person 2
      $name2 = "anna";
      $surname2 = "nowak";
      $age2 = "35";
      $city2 = "lublin";
      $address2 = "malinowa";

      echo<<<ROW
      <td>$name2</td>
      <td>$surname2</td>
      <td>$age2</td>
      <td>$city2</td>
      <td>$address2</td>
ROW;
?>
      </tr>

    </table>
  </body>
</html>
