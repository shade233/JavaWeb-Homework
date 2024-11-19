<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="https://res.wx.qq.com/a/wx_fed/wechat_search_common_assets/res/developers/3x/developers-8630de9303.png">
    <title>Shade's Website~</title>
    <style>
        body {
            background-color: aliceblue;
            font-family: 'Source Han Sans', '微软雅黑', '宋体', serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        .time-display {
            margin-bottom: 20px;
        }

        .submission-form {
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: inline-block;
            width: 120px;
        }

        input[type="text"],
        input[type="password"],
        textarea,
        select {
            width: calc(100% - 130px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to Shade's Website</h1>
    <div class="time-display">
        网页打开时间：
        <%= LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")) %>
    </div>
    <form action="homework2.jsp" method="post" class="submission-form">
        <div class="form-group">
            <label for="username">用户名:</label>
            <input id="username" type="text" name="username" placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label>性别:</label>
            <input type="radio" id="male" name="sex" value="male">
            <label for="male">男</label>
            <input type="radio" id="female" name="sex" value="female">
            <label for="female">女</label>
        </div>
        <div class="form-group">
            <input type="checkbox" name="settings" value="anonymous">匿名提交
            <input type="checkbox" name="settings" value="encrypt">密码加密
        </div>
        <div class="form-group">
            <label for="password">密码:</label>
            <input id="password" type="password" name="password" placeholder="请输入密码">
        </div>
        <div class="form-group">
            <label for="color">提交文字的颜色:</label>
            <select name="color">
                <option value="red">红色</option>
                <option value="blue">蓝色</option>
                <option value="black">黑色</option>
            </select>
        </div>
        <div class="form-group">
            <label for="font-type">提交文字的字体:</label>
            <select name="font_type">
                <option value="normal">正常</option>
                <option value="bold">粗体</option>
            </select>
        </div>
        <div class="form-group">
            <label for="contents">提交内容:</label>
            <textarea name="contents" id="contents" rows="10" cols="30" placeholder="请输入内容"></textarea>
        </div>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>