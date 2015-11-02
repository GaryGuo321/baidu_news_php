
<?php
// 获取点击的类名
$sortName = $_POST["name"];
// 读取数据库
$con      = mysql_connect("localhost", "root", "");
if (!$con) {
    die('Could not connect: ' . mysql_error());
} else {
    mysql_select_db("baidu_news", $con);
    mysql_query("set names 'utf8'");
    $result = mysql_query("SELECT * FROM $sortName");
    // 若读取到picture执行此操作
    if ($sortName == "picture") {
        while ($row = mysql_fetch_array($result)) {
            $num   = $row["news_id"];
            $title = $row["news_title"];
            $img   = $row["news_img"];
            echo "<tr>
                    <td>$num</td>
                    <td>$title</td>
                    <td>$img</td>
                    <td><a href=\"#\" class=\"change\" value=\"$num\">修改</a></td>
                </tr>";
        }
        // 其他的新闻类执行此操作
    } else {
        while ($row = mysql_fetch_array($result)) {
            $num     = $row["news_id"];
            $title   = $row["news_title"];
            $img     = $row["news_img"];
            $content = $row["news_content"];
            $time    = $row["add_times"];
            $source  = $row["news_source"];
            echo "<tr>
                    <td>$num</td>
                    <td>$title</td>
                    <td>$img</td>
                    <td>$content</td>
                    <td>$time</td>
                    <td>$source</td>
                    <td><a href=\"#\" class=\"change\" value=\"$num\">修改</a></td>
                </tr>";
        }
    }
}
mysql_close($con);
?>