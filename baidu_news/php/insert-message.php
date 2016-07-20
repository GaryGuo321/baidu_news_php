<?php
// 获取数据库
$con  = mysqli_connect("localhost", "root", "123456");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    // 为数据库插入内容
    $sort  = $_POST["news-sort"];
    $title = $_POST["news-title"];
    $image = $_POST["news-image"];
    mysqli_select_db($con, "baidu_news");
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
    mysqli_query($con, "set names 'utf8'");
    // 判断成功或者失败
    $result = mysqli_query($con, $sql);
    if (!$result) {
        die('Error:' . mysqli_error($con));
    } else {
        echo "success";
        echo "<br/><a href=\"../html/homepage.html\">return homepage</a>";
    }
}
mysqli_close($con);
?>