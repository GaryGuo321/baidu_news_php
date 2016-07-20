<?php
// 获取用户点击的类别
$name = $_POST["name"];
// 获取数据库
$con  = mysqli_connect("localhost", "root", "123456");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    mysqli_select_db($con, "baidu_news");
    mysqli_query($con, "set names 'utf8'");
    $result = mysqli_query($con, "SELECT * FROM $name");
    if ($result) {
        // 如果用户点击了图片
        if ($name == "picture") {
            while ($row = mysqli_fetch_array($result)) {
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
            while ($row = mysqli_fetch_array($result)) {
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
mysqli_close($con);
?>