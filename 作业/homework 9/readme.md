### 作业说明

本次作业包含以下文件和改动：

1. **addgoods.jsp**：用于添加新商品的页面。
2. **AddGoodsServlet.java**：处理添加商品请求的Servlet。
3. **demo.gif**：演示如何使用该项目的动图。
4. **Mytools.java**：移动到`save`包后，添加了新方法，并对其进行了修改。改动包括从web应用根目录下获取商品信息和图片，而不是使用固定地址。
5. **show.jsp**：对其进行了适配改动，同时对页面界面进行了优化。
6. **StartShopServlet.java**：已适配新的`Mytools`类。

此外，将项目中所有源文件中出现的`float`类型均改为了`double`类型，以提供更高的精确性。