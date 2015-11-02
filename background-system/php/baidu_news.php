<?php
// 获取用户点击的类别
$name = $_POST["name"];
// 获取数据库
$con  = mysql_connect("localhost", "root", "");
if (!$con) {
    die('Could not connect: ' . mysql_error());
} else {
    mysql_select_db("baidu_news", $con);
    mysql_query("set names 'utf8'");
    $result = mysql_query("SELECT * FROM $name");
    if ($result) {
        // 如果用户点击了图片
        if ($name == "picture") {
            while ($row = mysql_fetch_array($result)) {
                $title = $row["news_title"];
                $img   = $row["news_img"];
                echo "<div class=\"news-content\">
                    <div class=\"big-picture\">
                        <img src=\"$img\">
                    </div>
                    <div class=\"picture-title\">
                        <p>$title</p>
                    </div>
                </div>";
            }
            // 其他的类别
        } else {
            while ($row = mysql_fetch_array($result)) {
                $title  = $row["news_title"];
                $img    = $row["news_img"];
                $time   = $row["add_times"];
                $source = $row["news_source"];
                echo "<div class=\"news-content\">
                    <div class=\"content-picture\">
                        <img src=\"$img\">
                    </div>
                    <div class=\"content-title\">
                        <p>$title</p>
                    </div>
                    <div class=\"content-message\">
                        <span class=\"time\">$time</span>
                        <span class=\"source\">$source</span>
                    </div>
                </div>";
            }
        }
    }
}
mysql_close($con);
?>