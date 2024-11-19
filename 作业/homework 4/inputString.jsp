<!-- inputString.jsp -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <meta charset="UTF-8">
    <title>Shade's Website</title>
    <style>
        body {
            background-color: aliceblue;
            font-family: 'Source Han Sans', '微软雅黑', '宋体', serif;
        }
        form {
            margin: 20px;
        }
        textarea {
            width: 300px;
            height: 150px;
            margin-bottom: 10px;
            resize: none;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="procString.jsp" method="post">
    <textarea name="contents" id="textStyle" placeholder="我是一个文本框~写点东西进来吧~"></textarea>
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>