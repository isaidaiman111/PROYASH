<?php

$fname =filter_input(INPUT_POST,'fname');
$lname=filter_input(INPUT_POST,'lname');
$email=filter_input(INPUT_POST,'email');
$password=filter_input(INPUT_POST,'password');
$NID=filter_input(INPUT_POST,'NID');
$phone=filter_input(INPUT_POST,'phone');
$adr=filter_input(INPUT_POST,'adr');
$Location=filter_input(INPUT_POST,'Location');
$specialisation=filter_input(INPUT_POST,'specialisation');
$Visiting_Fee=filter_input(INPUT_POST,'Visiting_Fee');
$Acc_Num=filter_input(INPUT_POST,'Acc_Num');
$Bank_Name=filter_input(INPUT_POST,'Bank_Name');
$Bank_Branch=filter_input(INPUT_POST,'Bank_Branch');
$bkash=filter_input(INPUT_POST,'bkash');
echo "Email is =$email";

session_start();
$conn= mysqli_connect('localhost', 'Tanvir', '', 'proyash');

if (mysqli_connect_error()){
die('Connect Error ('. mysqli_connect_errno() .') '
. mysqli_connect_error());
}

else{ 
$sql = "INSERT INTO doctor (EMAIL,PASSWORD,FIRST_NAME,LAST_NAME,NID,SPECIALISATION,CHAMBER_ADDRESS,VISITING_FEE,AREA_LOCATION,BANK_AC,BANK_BRANCH,BANK_NAME,BKASH,Phone) 
VALUES ('$email', '$password', '$fname', '$lname', '$NID', '$specialisation', '$adr', '$Visiting_Fee','$Location', '$Acc_Num', '$Bank_Branch', '$Bank_Name', '$bkash','$phone')";

if ($conn->query($sql)){
    
    header('location:SignUpSuccess.html');
    
}
else{
echo "Error: ". $sql ."
". $conn->error;
}
$conn->close();
}
?>
