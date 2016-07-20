<?php
// 读取数据库
$con    = mysqli_connect("localhost", "root", "123456");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    $sort   = $_POST["news-sort"];
    $newsId = $_POST["news-id"];
    $title  = $_POST["news-title"];
    $image  = $_POST["news-image"];
    mysqli_select_db($con, "baidu_news");
    // 对新闻类进行更新
    if (($sort == "picture")) {
        $sql = "UPDATE $sort SET news_title='" . $title . "',news_img='" . $image . "' WHERE news_id=$newsId";
    } else {
        $content = $_POST["news-content"];
        $source  = $_POST["news-source"];
        $time    = date('Y-m-d');
        $sql     = "UPDATE $sort SET news_title='" . $title . "',news_img='" . $image . "',news_content='" . $content . "',news_source='" . $source . "',add_times='" . $time . "' WHERE news_id=$newsId";
    }
    mysqli_query($con, "set names 'utf8'");
    $result = mysqli_query($con, $sql);
    // 判断是否执行成功
    if (!$result) {
        die('Error:' . mysqli_error($con));
    } else {
        echo "success";
        echo "<br/><a href=\"../html/homepage.html\">return homepage</a>";
    }
}
mysqli_close($con);
?>