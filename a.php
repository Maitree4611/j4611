<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ไมตรี อินทะเเสง</title>
</head>



<body>
<h1> บ้านจัดสรร </h1>
<?php
include_once("connectdb.php");


$sql = "SELECT * FROM product ORDER BY product.p_id ASC" ;
$rs = mysqli_query($conn,$sql); // mysqli_query เก็บ database

while ($data = mysqli_fetch_array($rs)){ // array ตัวแปรเก็บข้อมูลได้มากกว่า 1 ตัว
    $img = $data['p_id'].".".$data['p_ext'];
    echo "<img src='img/{$img}' width='200'><br>";
    echo $data['p_id']."<br>";
    
    echo $data['p_name']."<br>";
    echo $data['p_price']." ล้านบาท <hr>";
    }
mysqli_close($conn);


?>

</body>
</html>