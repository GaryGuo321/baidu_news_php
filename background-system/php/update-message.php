<?php
// 读取数据库
$con    = mysql_connect("localhost", "root", "");
if (!$con) {
    die('Could not connect: ' . mysql_error());
} else {
    $sort   = $_POST["news-sort"];
    $newsId = $_POST["news-id"];
    $title  = $_POST["news-title"];
    $image  = $_POST["news-image"];
    mysql_select_db("baidu_news", $con);
    // 对新闻类进行更新
    if (($sort == "picture")) {
        $sql = "UPDATE $sort SET news_title='" . $title . "',news_img='" . $image . "' WHERE news_id=$newsId";
    } else {
        $content = $_POST["news-content"];
        $source  = $_POST["news-source"];
        $time    = date('Y-m-d');
        $sql     = "UPDATE $sort SET news_title='" . $title . "',news_img='" . $image . "',news_content='" . $content . "',news_source='" . $source . "',add_times='" . $time . "' WHERE news_id=$newsId";
    }
    mysql_query("set names 'utf8'");
    $result = mysql_query($sql, $con);
    // 判断是否执行成功
    if (!$result) {
        die('Error:' . mysql_error());
    } else {
        echo "success";
        echo "<br/><a href=\"../html/homepage.html\">return homepage</a>";
    }
}
mysql_close($con);
?>