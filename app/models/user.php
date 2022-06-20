include(database.php);
<?php
if(isset($_POST['submit'])){
    $id = $_POST['id'];
    $NAMES = $_POST['NAMES'];
    $ROLE = $_POST['ROLE'];
    $EMAIL = $_POST['EMAIL'];
    $ACCOUNT_TYPE = $_POST['ACCOUNT TYPE'];
    $GENDER = $_POST['GENDER'];
    $STATUS = $_POST['STATUS'];

    
    $con = mysqli_connect($NAMES, $ROLE, $EMAIL, $ACCOUNT_TYPE, $GENDER, $STATUS);

    if(!con){
        die("connection failed". mysqli_connect_error());
    }
    echo"connection successful";


    $sql="INSERT INTO `employee`(`id`, `NAMES`, `ROLE`, `EMAIL`, `ACCOUNT_TYPE`, `GENDER`, `STATUS`) 
    VALUES ('$id ','$NAMES','$ROLE','$EMAIL','$ACCOUNT_TYPE','$GENDER','$STATUS')";

    $result = mysqli_query($con, $sql);
    if($result){
        echo"success";
    }
    else{
        echo "Failed: ".sqli_error($con);
    }
    
}
?>
