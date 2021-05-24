<?php
session_start();
$conn= mysqli_connect('localhost', 'Tanvir', '', 'proyash');

$email = $_POST['uname'];
$pass = $_POST['psw'];
$sql = "select * from doctor where EMAIL= '$email' && PASSWORD= '$pass'";

$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$num = mysqli_num_rows($result);

if($num == 1){
    $_SESSION['username'] = $name;
    //header('location:DocHome.html');
    header('Location: DocHome.html?eid='.$row['ID'].'');
}else{
    header('location:LoginError.html');
}
?>