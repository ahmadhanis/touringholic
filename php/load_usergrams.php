<?php
include_once("dbconnect.php");
$pageno = (int)$_POST['pageno'];
$results_per_page = 10;  
$page_first_result = ($pageno-1) * $results_per_page;  

if (isset($_POST['email'])){
    $user_email = $_POST['email'];

    $sqlloadgrams = "SELECT * FROM tbl_grams INNER JOIN tbl_user ON tbl_grams.user_email = tbl_user.user_email WHERE tbl_grams.user_email = '$user_email' ORDER BY tbl_grams.date_post DESC";
    $sqlloadgramspage ="SELECT * FROM tbl_grams INNER JOIN tbl_user ON tbl_grams.user_email = tbl_user.user_email WHERE tbl_grams.user_email  = '$user_email' ORDER BY tbl_grams.date_post DESC LIMIT $page_first_result , $results_per_page";
    //$sqlloadgrams= "SELECT * FROM tbl_grams WHERE user_email = '$user_email' ORDER BY date_post DESC";
    //$sqlloadgramspage= "SELECT * FROM tbl_grams WHERE user_email = '$user_email' ORDER BY date_post DESC LIMIT $page_first_result , $results_per_page";

}else{
    $sqlloadgrams = "SELECT * FROM tbl_grams INNER JOIN tbl_user ON tbl_grams.user_email = tbl_user.user_email ORDER BY tbl_grams.date_post DESC";
    $sqlloadgramspage ="SELECT * FROM tbl_grams INNER JOIN tbl_user ON tbl_grams.user_email = tbl_user.user_email ORDER BY tbl_grams.date_post DESC LIMIT $page_first_result , $results_per_page";
   // $sqlloadgrams= "SELECT * FROM tbl_grams ORDER BY date_post DESC";
    //$sqlloadgramspage= "SELECT * FROM tbl_grams ORDER BY date_post DESC LIMIT $page_first_result , $results_per_page";
}

$result = $conn->query($sqlloadgrams);
$number_of_result = mysqli_num_rows($result);  
$number_of_page = ceil($number_of_result / $results_per_page);  

$result2 = $conn->query($sqlloadgramspage);

if ($result2->num_rows > 0){
    $response["grams"] = array();
    while ($row = $result2 -> fetch_assoc()){
        $gramlist = array();
        $gramlist['gramid'] = $row['gram_id'];
        $gramlist['gramdesc'] = $row['gram_desc'];
        $gramlist['user_email'] = $row['user_email'];
        $gramlist['date_post'] = $row['date_post'];
        $gramlist['user_name'] = $row['user_name'];
        $gramlist['numpage'] = $number_of_page;
        array_push($response["grams"],$gramlist);
    }
    echo json_encode($response);
}else{
    echo "nodata";
}

?>