<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">
    <title>用户登陆界面</title>
</head>
<body>
    <?php
$userName    = $userPassword = "";
$userNameArr = $userPasswordArr = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userName     = test_input($_POST["user-name"]);
    $userPassword = test_input($_POST["user-password"]);

    // 将mysql -> mysqli
    // 创建连接
    $con = mysqli_connect("localhost", "root", "123456");

    // 检测连接
    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    } else {
        mysqli_select_db($con, "baidu_news");
        $result = mysqli_query($con, "SELECT * FROM user_message");
        while ($row = mysqli_fetch_array($result)) {
            if ($row['user_name'] != $userName) {
                $userNameArr = "× 用户不存在";
            } else if ($row['user_password'] != $userPassword) {
                $userPasswordArr = "× 密码错误";
            } else {
                echo "<script>location.href='../html/homepage.html';</script>";
            }
        }
    }
    mysqli_close($con);
}
function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
    <!--头部-->
<div class="container-fluid">    
    <div class="header">
        <div class="circle">
            <span class="circle-content"></span>
        </div>
        <p>欢迎登陆后台管理界面平台</p>
        <ul class="inline">
            <li><a href="#"><li class="icon-home icon-white"></li>回首页</a></li>
            <li><a href="#"><li class="icon-question-sign icon-white"></li>帮助</a></li>
            <li><a href="#"><li class="icon-file icon-white"></li>关于</a></li>
        </ul>
    </div>


    <!--用户登录部分-->

    <div class="main">
        <div class="title">
            <img src="../image/system-logo.png" alt="system-logo">
            <p class="title-word">信息管理系统界面</p>
            <!--<p><small>INFORMATION MANRGEMENT SYSTEM GUI</small></p>-->
            <img src="../image/EN.png" alt="english" class="english">
        </div>
        <div class="login">
            <div class="left">
                <span></span>
                <img src="../image/login-picture.png" alt="login-picture">
            </div>
            <div class="right">
                <p class="people-login">用户登陆<small>UserLogin</small></p>
                <form class="form-horizontal" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
                    <div class="control-group">
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-user"></i> 用户</span>
                            <input type="text" name="user-name" id="input-user" placeholder="请输入用户名" autofocus>
                        </div>
                        <span class="error"><?php echo $userNameArr;?></span>
                    </div>
                    <div class="control-group">
                        <div class="controls input-prepend">
                            <span class="add-on"><i class="icon-lock"></i> 密码</span>
                            <input type="password" name="user-password" id="input-Password" placeholder="请输入密码">                          
                        </div>
                        <span class="error"><?php echo $userPasswordArr;?></span>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label class="checkbox">
                                <input type="checkbox">记住账号
                            </label>
                            <a href="#" class="password-forget">忘记密码？</a>
                            <!--<button type="submit" class="btn">登 录</button>-->
                            <!-- <input type="submit" name="tijiao" value="提交" class="btn"> -->
                            <a class="btn btn-small bottom" href="#"><i class="icon-star"></i> 登 录</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--尾部-->

    <div class="footer">
        <p>©版权所有  2015</p>
    </div>
</div>

    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/login.js"></script>
</body>
</html>