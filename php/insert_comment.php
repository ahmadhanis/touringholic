<?php
include_once("dbconnect.php");
$gram_id = $_POST['gram_id'];
$gram_owner = $_POST['gram_owner'];
$gram_reply = $_POST['gram_reply'];
$gram_comment = $_POST['gram_comment'];

$sqlinsert = "INSERT INTO tbl_gram_comments(gram_id,gram_owner,gram_reply,gram_comment) VALUES('$gram_id','$gram_owner','$gram_reply','$gram_comment')";
if ($conn->query($sqlinsert) === TRUE){
    echo "success";
}else{
    echo "failed";
}
?>