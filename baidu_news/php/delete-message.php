<?php
// 把checkbox的值存入数组
$arr = $_POST['select'];
// 读取数据库
$con    = mysqli_connect("localhost", "root", "123456");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    // 根据获取的id号删除数据
    $sort   = $_POST["news-sort"];
    //$newsId = $_POST["news-id"];
    mysqli_select_db($con, "baidu_news");
    mysqli_query($con, "set names 'utf8'");
    for($i=0;$i<count($arr);$i++){
        $sql = "DELETE FROM $sort WHERE news_id=$arr[$i]";
        $result = mysqli_query($con, $sql);
    }
    if (!$result) {
        die('Error:' . mysqli_error($con));
    } else {
        echo "success";
        echo "<br/><a href=\"../html/homepage.html\">return homepage</a>";
    }
}
mysqli_close($con);
?>

    