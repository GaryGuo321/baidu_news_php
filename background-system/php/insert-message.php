<?php
// 获取数据库
$con  = mysql_connect("localhost", "root", "");
if (!$con) {
    die('Could not connect: ' . mysql_error());
} else {
    // 为数据库插入内容
    $sort  = $_POST["news-sort"];
    $title = $_POST["news-title"];
    $image = $_POST["news-image"];
    mysql_select_db("baidu_news", $con);
    // 为picture类别插入内容
    if (($sort == "picture")) {
        $sql = "INSERT INTO $sort(news_title,news_img) VALUES ('" . $title . "','" . $image . "')";
    // 为其他类别插入内容
    } else {
        $content = $_POST["news-content"];
        $source  = $_POST["news-source"];
        $time    = date('Y-m-d');
        $sql     = "INSERT INTO $sort(news_title,news_img,news_content,add_times,news_source) VALUES ('" . $title . "','" . $image . "','" . $content . "','" . $time . "','" . $source . "')";
    }
    mysql_query("set names 'utf8'");
    // 判断成功或者失败
    $result = mysql_query($sql, $con);
    if (!$result) {
        die('Error:' . mysql_error());
    } else {
        echo "success";
        echo "<br/><a href=\"../html/homepage.html\">return homepage</a>";
    }
}
mysql_close($con);
?>