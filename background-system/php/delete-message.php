<?php
// 把checkbox的值存入数组
$arr = $_POST['select'];
// 读取数据库
$con    = mysql_connect("localhost", "root", "");
if (!$con) {
    die('Could not connect: ' . mysql_error());
} else {
    // 根据获取的id号删除数据
    $sort   = $_POST["news-sort"];
    //$newsId = $_POST["news-id"];
    mysql_select_db("baidu_news", $con);
    mysql_query("set names 'utf8'");
    for($i=0;$i<count($arr);$i++){
        $sql = "DELETE FROM $sort WHERE news_id=$arr[$i]";
        $result = mysql_query($sql, $con);
    }
    if (!$result) {
        die('Error:' . mysql_error());
    } else {
        echo "success";
        echo "<br/><a href=\"../html/homepage.html\">return homepage</a>";
    }
}
mysql_close($con);
?>

    