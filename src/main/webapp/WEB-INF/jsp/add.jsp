
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
<body>
<div class="container" style="margin-top: 5%">
    <p style="font: 25px 'Microsoft YaHei';font-weight: bold;text-align: center">添加商品</p>
    <form action="add" method="post">
        商品名称：<input type="text" name="gname"><br>
        生产日期：<input type="date" name="pubDate"><br>
        图片地址：<input type="text" name="picture"><br>
        价格：<input type="number" name="price"><br>
        热度：<input type="number" maxlength="5" name="star"><br>
        品类：<input type="number" name="typeid"><br>
        <input type="submit" value="提交">

    </form>
</div>

</body>
</html>
