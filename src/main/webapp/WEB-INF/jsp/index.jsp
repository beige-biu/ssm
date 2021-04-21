
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
<body>
<div class="container" style="margin-top: 5%">
    <p style="font: 25px 'Microsoft YaHei';font-weight: bold;text-align: center">商品管理系统</p>
    <table class="container table table-hover" style="width: 80%">

        <tr>
            <td colspan="3">
                <a href="/toadd" class="btn btn-primary">添加商品</a>
                <a href="#" class="btn btn-danger" style="margin-left: 5%">批量删除</a>
            </td>
            <td colspan="3">
                <form class="form-inline" method="get" action="list">
                    <div class="form-group" style="margin-left: 25%">
                        <input type="text" name="gname" class="form-control"
                               placeholder="商品名称" />
                        <button type="submit" class="btn btn-success">查询</button>
                    </div>
                </form>
            </td>
        </tr>
        <tr>
            <th>编号</th>
            <th>商品名称</th>
            <th>单价</th>
            <th>商品热卖度</th>
            <th>生产日期</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${goods}" var="good" varStatus="count">
            <tr>
                <td>${count.index+1}</td>
                <td>${good.gname}</td>
                <td>${good.price}</td>
                <td>
                    <c:forEach begin="1" end="${good.star}">
                        <span style="color:red"
                              class="glyphicon glyphicon glyphicon-star" aria-hidden="true">
                        </span>
                    </c:forEach>
                </td>
                <td>${good.pubDate}</td>
                <td>
                    <a class="btn btn-success btn-group-xs" href="#">详情</a>
                    <a class="btn btn-danger" href="#">删除</a>
                    <a class="btn btn-info" href="#">修改</a>
                </td>
            </tr>

        </c:forEach>
        <tr>
            <td colspan="6" style="text-align: center">
                <h4>${pagenation}</h4>
            </td>
        </tr>
    </table>
</div>

</body>
</html>
