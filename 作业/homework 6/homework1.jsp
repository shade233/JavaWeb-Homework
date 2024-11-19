<!-- homework1.jsp -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <meta charset="UTF-8">
    <title>Shade's Website</title>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600">--%>
    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Source Sans Pro', Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>

</head>
<body>
<form action="homework2.jsp" method="post">
    <h2 style="text-align: center;">梯形面积计算器</h2>
    <label for="upper">梯形的上底：</label>
    <input type="text" id="upper" name="upper">
    <br>
    <label for="lower">梯形的下底：</label>
    <input type="text" id="lower" name="lower">
    <br>
    <label for="height">梯形的高：</label>
    <input type="text" id="height" name="height">
    <br>
    <input type="submit" value="获取面积">
</form>
</body>
</html>



