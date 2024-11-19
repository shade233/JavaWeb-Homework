### SCNU 2024 Java Web 课程项目

----

##### 任课老师：陈俊侠

----

##### 作业汇总

（1）运行第2章的示例代码，上传动图到作业项目中. 



（2）随机产生大小写希腊字母表：
设计两个JSP页面，第一个页面产生随机数，并作为参数转发到第二页面，在第二页面中根据参数的值，产生大写或者小写的希腊字母表。



（3）HTML表单提交：
设计一个包含表单页面，要求包含输入框，密码框，文本区，无线按钮，检测框，列表框，下拉式列表框（可参考常见用户注册）。用提交按钮使用POST方式提交到第二个页面。第二个页面显示获得的各个变量值。



（4）编写两个JSP页面inputString.jsp和procString.jsp，用可以使用inputString.jsp提供的表单输入一个字符串，并提交给procString.jsp页面，该页面通过内置对象获取inputString.jsp页面提交的字符串，计算并显示字符串的长度。



（5）一个用户在不同Web服务目录中的session对象相同吗？一个用户在同一Web服务目录中的不同子目录中的session对象相同吗？



（6）编写一个表单页面，用户输入梯形的上底、下底和高，提交给处理jsp页面。处理jsp页面中使用page bean产生一个page bean对象，并调用梯形类的求面积方法，在jsp中显示出梯形的参数和面积值。（模仿例题中求圆表面）。



（7）运行MyShop体会商品列表和购物车功能完成以下要求：
    a.写出每个Java类的作用（特别说明类中的geter/seter构造方法以外的其它方法的作用）
    b.写出每个jsp文件的作用
    c.分析jsp之间的调用关系
    d.分析jsp与Java类的调用关系
    e.给商品列表中增加菠萝这种水果（提示：可直接修改temp中的文本文件）



（8）参考JSP自动生成的内置对象的代码，改写MyShop中两个JSP文件为Servlet，并使MyShop可正常运行
    a.把index.jsp改写成StartServlet.java,映射地址为/index
    b.把docar.jsp改成CarServlet.java,映射地址为/docar



（9）在本次课发布的MyShop代码中，进行如下功能增强：
    a.写一个商品添加表单JSP页面，表单中包含商品名，商品价格，商品数量，商品图片文件（File类型），表单数据提交给（c）中的servlet类处理。
    b.把pojo.MyTool类移动到save包中，并给MyTool添加一个方法public static void appendGoods_txt(GoodsSingle single) throws Exception,其功能是把single中的商品添加到已有文本文件的最后一行。
    c.写一个注解式的Servlet，从jsp中获取新增商品的信息，并同时获取对应的图片文件上传，保存到应用的动态img目录中，并调用(b)中的写的appendGoods_txt方法，把新加的商品保存到文本文件后，调用MyTools中已有的ArrayList<GoodsSingle> loadGoods_txt()方法设置好goodslist后，转发到show.jsp进行视图显示更新。



（10）JDBC_Start项目用可直接执行的类演示了如何使用驱动程序来直接操作mysql数据库，请根据目录中提供的sql语句建库和表，直接运行每个类并上传运行结果的GIF动图。包里面有sql语句，也可以不使用新的库和表，直接修改连接参数和源码中的sql语句，使用我们讲课已经建好的库和表。



（11）运行课堂上提供的springdemo1-5代码的示例测试，做成动图上传。



（12）查阅资料，并结合示例代码，解释什么是spring框架的控制反转（IOC）和依赖注入（DI）。



（13）查阅资料，回答问题：什么叫ORM，MyBatis框架比起Hibernate框架有什么特色？



综合作业
（1）什么叫MVC模式，试以第九次作业为例，分析MyShop当中的MVC实现，并说说这种模式的优点。
（2）转发和重定向有什么区别，它们各自适用于那些典型情景？
（3）JSP中include指令与include动作在实现上有什么区别，请举例说明。
（4）较为复杂的web应用在实现时通常分为哪三层？每层各自具有什么功能？这种三层模式和MVC模式有什么区别？
