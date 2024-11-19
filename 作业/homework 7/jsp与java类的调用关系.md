这五个JSP文件中调用了以下几个Java类：

1. **GoodsSingle**：表示单个商品的JavaBean类，用于存储商品的信息，如名称、价格、数量和图片等。
2. **MyTools**：一个工具JavaBean类，其中包含了`loadGoods_txt()`等方法，用于加载和保存商品列表数据。
3. **ShopCar**：表示购物车的JavaBean类，用于存储购物车中的商品信息，以及提供添加、移除和清空购物车等操作的方法。



这些Java类在JSP文件中的调用关系如下：

`index.jsp`:引用了`GoodsSingle`类和`MyTools`类，用于加载商品信息。

`show.jsp`:引用了`GoodsSingle`类，用于显示商品信息。

`shopcar.jsp`:

- 引用了`GoodsSingle`类，用于显示商品信息；

- 引用了`ShopCar`类，用于获取购物车内容。

`littleShopcar.jsp`:

- 引用了`GoodsSingle`类，用于显示商品信息；
- 引用了`ShopCar`类，用于获取购物车内容。

`docar.jsp`:引用了`GoodsSingle`类和`ShopCar`类，用于对购物车中的商品进行增删改操作。

