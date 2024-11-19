<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-hans">
<head>
    <link
            rel="icon" type="image/x-icon"
            href="https://res.wx.qq.com/a/wx_fed/wechat_search_common_assets/res/developers/3x/developers-8630de9303.png"
    />
    <title>Shade's Website~</title>
    <style>
        body {
            background-color: aliceblue;
            font-family: "Source Han Sans", "微软雅黑", "宋体", sans-serif;
            margin: 0;
            padding: 0;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .text-output {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
<%! public static String MD5(String input) {
    try {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(input.getBytes());
        byte[] digest = md.digest(); // Convert byte array to hexadecimal string
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(String.format("%02x", b & 0xff));
        }
        return sb.toString();
    } catch (NoSuchAlgorithmException e) {
        System.err.println("MD5 algorithm not found");
        return null;
    }
}
%> <% request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String sex = request.getParameter("sex");
    String[] settings = request.getParameterValues("settings");
    String color = request.getParameter("color");
    String font_type = request.getParameter("font_type");
    String text = request.getParameter("contents");
    if (settings != null)
        for (String setting : settings) {
        if (setting.equals("anonymous"))
            username = "anonymous";
        if (setting.equals("encrypt"))
            password = MD5(password);
    } %>
<div class="text-output">
    <p><strong>Username:</strong> <%= username %></p>
    <p><strong>Password:</strong> <%= password %></p>
    <p><strong>Sex:</strong> <%= sex %></p>
    <strong>Text:</strong>
    <div style="color: <%= color %>; font-weight: <%= font_type %>">
         <%= text %>
    </div>
</div>
</body>
</html>
