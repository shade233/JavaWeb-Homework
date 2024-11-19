<!-- procString.jsp -->
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <title>Shade's Website~</title>
    <style>
        body {
            background-color: aliceblue;
            margin: 20px;
        }

        div {
            margin-top: 10px;
        }
    </style>
</head>

<body>

<%
    request.setCharacterEncoding("UTF-8");
    String text = request.getParameter("contents");
    Integer length = 0;
    if (text != null) {
        length = text.replaceAll("\\r|\\n", "").length();
    }
%>
<br>
<div>text: <%= text %>
</div>
<div>the length of text: <%= length %>
</div>

</body>
</html>
