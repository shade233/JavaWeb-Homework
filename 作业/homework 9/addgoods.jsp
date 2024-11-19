<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <script>
        function uploadImage() {
            var file = document.getElementById('image').files[0];
            const img = document.getElementById('uploadedImage');
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    img.src = e.target.result;
                    img.style.display = 'block';
                };
                reader.readAsDataURL(file);
            }
        }
    </script>
</head>
<body>
<h1>添加商品</h1>
<form action="AddGoodsServlet" method="post" enctype="multipart/form-data">
    <label for="name">商品名:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="price">商品价格:</label>
    <input type="number" step="0.01" id="price" name="price" required><br><br>

    <label for="quantity">商品数量:</label>
    <input type="number" id="quantity" name="quantity" required><br><br>

    <label for="image">商品图片:</label>
    <input type="file" id="image" name="image" onchange="uploadImage()" required><br><br>
    <img id="uploadedImage" src="#" alt="Uploaded Image" style="display:none; width:100px;"><br><br>
    <input type="hidden" id="imagePath" name="imagePath">
    <input type="submit" value="添加商品">
</form>
</body>
</html>