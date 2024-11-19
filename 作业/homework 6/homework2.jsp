<!-- homework2.jsp -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <meta charset="UTF-8">
    <title>Shade's Website</title>
    <style>
        body {
            background-color: aliceblue;
            font-family: 'Source Han Sans', '微软雅黑', '宋体', serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .trapezoid-info {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .trapezoid-info span {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>梯形信息</h1>
    <%-- 通过JSP标记，用户获得一个id是trapezoid的page bean: --%>
    <jsp:useBean id="trapezoid" class="shade.Shape.Trapezoid" scope="page" />
    <jsp:setProperty name="trapezoid" property="*"/>
    <%--<jsp:setProperty name="trapezoid" property="upper" param ="upper" />--%>
    <%--<jsp:setProperty name="trapezoid" property="lower" param ="lower"/>--%>
    <%--<jsp:setProperty name="trapezoid" property="height" param ="height"/>--%>
    <div class="trapezoid-info">
        <span>梯形的上底：</span><jsp:getProperty name="trapezoid" property="upper"/>
    </div>
    <div class="trapezoid-info">
        <span>梯形的下底：</span><jsp:getProperty name="trapezoid" property="lower"/>
    </div>
    <div class="trapezoid-info">
        <span>梯形的高：</span><jsp:getProperty name="trapezoid" property="height"/>
    </div>
    <div class="trapezoid-info">
        <span>梯形的面积：</span><jsp:getProperty name="trapezoid" property="area"/>
    </div>
</div>
</body>
</html>