<?php
    // 获取点击的类名
$sortName = $_POST["name"];
// 读取数据库
$con      = mysqli_connect("localhost", "root", "123456");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    mysqli_select_db($con, "baidu_news");
    mysqli_query($con, "set names 'utf8'");
    $result = mysqli_query($con, "SELECT * FROM $sortName");
    // 若读取到picture执行此操作
    if ($sortName == "picture") {
        while ($row = mysqli_fetch_array($result)) {
            $num   = $row["news_id"];
            $title = $row["news_title"];
            $img   = $row["news_img"];
            echo "<tr>
                    <td><input type=\"checkbox\" name=\"select[]\" value=$num></td>
                    <td>$num</td>
                    <td>$title</td>
                    <td>$img</td>
                </tr>";
        }
        // 其他的新闻类执行此操作
    } else {
        while ($row = mysqli_fetch_array($result)) {
            $num     = $row["news_id"];
            $title   = $row["news_title"];
            $img     = $row["news_img"];
            $content = $row["news_content"];
            $time    = $row["add_times"];
            $source  = $row["news_source"];
            echo "<tr>
                    <td><input type=\"checkbox\" name=\"select[]\" value=$num></td>
                    <td>$num</td>
                    <td>$title</td>
                    <td>$img</td>
                    <td>$content</td>
                    <td>$time</td>
                    <td>$source</td>
                </tr>";
        }
    }
}
mysqli_close($con);
?>