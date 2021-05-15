<?php
include_once("dbconnect.php");
$gramid = $_POST['gramid'];

$sqlloadcomment= "SELECT * FROM tbl_gram_comments INNER JOIN tbl_user ON tbl_gram_comments.gram_reply = tbl_user.user_email WHERE tbl_gram_comments.gram_id = '$gramid'";

//$sqlloadcomment= "SELECT * FROM tbl_gram_comments WHERE gram_id = '$gramid'";
$result = $conn->query($sqlloadcomment);
if ($result->num_rows > 0){
    $response["comments"] = array();
    while ($row = $result -> fetch_assoc()){
        $commentlist = array();
        $commentlist['gramid'] = $row['gram_id'];
        $commentlist['gram_owner'] = $row['gram_owner'];
        $commentlist['gram_reply'] = $row['gram_reply'];
        $commentlist['gram_comment'] = $row['gram_comment'];
        $commentlist['gram_datepost'] = $row['gram_datepost'];
        $commentlist['user_name'] = $row['user_name'];
        array_push($response["comments"],$commentlist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}
?>