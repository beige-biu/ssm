
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
<script src="/bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/laydate.js"></script>
<body>
<div class="container" style="margin-top: 5%">
    <p style="font: 25px 'Microsoft YaHei';font-weight: bold;text-align: center">商品管理系统</p>
    <table class="container table table-hover" style="width: 80%">

        <tr>
            <td colspan="3">
<%--                <a href="/toadd" class="btn btn-primary">添加商品</a>--%>
            <button type="button" class="btn btn-success" class="btn btn-primary btn-md"
            data-toggle="modal" data-target="#add">添加商品</button>
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
<%--                    <a class="btn btn-success btn-group-xs" href="#">详情</a>--%>
                    <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal${good.gid}">
                        详情
                    </button>
                    <a class="btn btn-danger" href="#">删除</a>
                    <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModalupdate${good.gid}">
                         修改
                    </button>
                </td>
            </tr>
            <div class="modal fade" id="myModal${good.gid}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">商品详情</h4>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label >商品名称</label>
                                    <p class="help-block">${good.gname}</p>
                                </div>
                                <div class="form-group">
                                    <label >单价</label>
                                    <p class="help-block">${good.price}</p>
                                </div>
                                <div class="form-group">
                                    <label >生产日期</label>
                                    <p class="help-block">${good.pubDate}</p>
                                </div>
                                <div class="form-group">
                                    <label >热卖度</label>
                                    <c:forEach begin="1" end="${good.star}">
                                        <span style="color:red"
                                              class="glyphicon glyphicon glyphicon-star" aria-hidden="true">
                                        </span>
                                    </c:forEach>
                                </div>
                                <div class="form-group">
                                    <label >图片</label>
                                    <img width="100px" height="100px" src="${good.picture}" />
                                </div>
                                <div class="form-group">
                                    <label >简介</label>
                                    <p class="help-block">
                                            ${good.intro}
                                    </p>
                                </div>




                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>

<%--            修改--%>
            <div class="modal fade" id="myModalupdate${good.gid}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">商品详情</h4>
                        </div>
                        <div class="modal-body">
                            <form action="update" method="post">
                                <div class="form-group" >
                                    <label >商品id</label>
                                    <input class="form-control" type="text" name="gid" value="${good.gid}">
                                </div>
                                <div class="form-group">
                                    <label >商品名称</label>
                                    <input class="form-control" type="text" name="gname" value="${good.gname}">
                                </div>
                                <div class="form-group">
                                    <label >价格</label>
                                    <input class="form-control" type="text" name="price" value="${good.price}">
                                </div>
                                <div class="form-group">
                                    <label >生产日期</label>
                                    <input class="form-control" type="date" name="gname" value="${good.pubDate}">
                                </div>
                                <div class="form-group">
                                    <label >热度</label>
                                    <input class="form-control" type="text" name="star" value="${good.star}">
                                </div>
                                <div class="form-group">
                                    <label >简介</label>
                                    <textarea class="form-control" name="intro" rows="3">${good.intro}</textarea>
                                </div>
                                <input type="submit" class="btn btn-success" value="提交">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>

        </c:forEach>
        <tr>
            <td colspan="6" style="text-align: center">
                <h4>${pagenation}</h4>
            </td>
        </tr>
    </table>
</div>

</body>

<%--添加商品--%>
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">商品详情</h4>
            </div>
            <div class="modal-body">
                <form action="/add" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label >商品名称</label>
                        <input class="form-control" type="text" name="gname" >
                    </div>
                    <div class="form-group">
                        <label >单价</label>
                        <input class="form-control" type="text" name="price">
                    </div>
                    <div class="form-group">
                        <label >热卖度</label>
                        <input  class="form-control" type="text" name="star">
                    </div>
                    <div class="form-group">
                        <label >生产日期</label>
                        <input class="form-control" type="date" name="pubDate">
                    </div>
<%--                    <div class="form-group">--%>
<%--                        <label >图片</label>--%>
<%--                        <input class="form-control" type="file" name="photo">--%>
<%--                    </div>--%>
                    <div class="form-group">
                        <label >简介</label>
                        <textarea class="form-control" name="intro" rows="3"></textarea>
                    </div>

                    <input type="submit" class="btn btn-primary" value="添加">


                </form>
            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>
</html>
