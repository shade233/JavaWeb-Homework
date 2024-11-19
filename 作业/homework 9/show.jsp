<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="pojo.GoodsSingle" %>
<%@ page import="java.util.List" %>
<%
    List<GoodsSingle> goodslist = (List<GoodsSingle>)application.getAttribute("goodslist");
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>今日推荐</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .title {
            font-size: 2em;
            color: fuchsia;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: lightgrey;
        }
        .product-image {
            width: 150px;
            height: auto;
        }
        .message {
            text-align: center;
            padding: 50px;
            font-size: 1.2em;
            color: red;
        }
        .links {
            text-align: center;
            margin-top: 20px;
        }
        .links a {
            margin: 0 10px;
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>
<table border="0" width="650" rules="none" cellspacing="0" cellpadding="0">
    <tr>
        <td>
            <table border="0" width="550" rules="none" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="4" align="left">
                        <p class="title">今日推荐</p>
                    </td>
                </tr>
                <tr align="center" height="30">
                    <th>图片</th>
                    <th>名称</th>
                    <th>价格(元/斤)</th>
                    <th>购买</th>
                </tr>
                <% if(goodslist == null || goodslist.size() == 0) { %>
                <tr height="100">
                    <td colspan="4" class="message">没有商品可显示！</td>
                </tr>
                <% } else {
                    for(int i = 0; i < goodslist.size(); i++) {
                        GoodsSingle single = goodslist.get(i);
                %>
                <tr height="50">
                    <td><img src="<%= request.getContextPath() %>/<%= single.getImgname() %>" class="product-image"></td>
                    <td><%= single.getName() %></td>
                    <td><%= single.getPrice() %></td>
                    <td><a href="<%= request.getContextPath() %>/docar?action=buy&id=<%= i %>">购买</a></td>
                </tr>
                <% }
                } %>
                <tr height="50">
                    <td colspan="4" class="links">
                        <a href="<%= request.getContextPath() %>/shopcar.jsp">查看购物车</a>
                        <a href="<%= request.getContextPath() %>/addgoods.jsp">增加新商品</a>
                    </td>
                </tr>
            </table>
        </td>
        <td><%@ include file="littleShopcar.jsp" %></td>
    </tr>
</table>
</body>
</html>