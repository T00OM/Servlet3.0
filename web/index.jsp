<%--
  Created by IntelliJ IDEA.
  User: jj
  Date: 2019/8/27
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%--enctype属性规定在发送到服务器之前应该如何对表单数据进行编码。在使用包含文件上传控件的表单时，必须使用该值。--%>
<form action="${pageContext.request.contextPath}/uploadFiles?method=uploadFiles" method="post"
      enctype="multipart/form-data">
<%--    支持选取多个文件，如果需要上传文件夹需要添加webkitdirectory属性--%>
    <input type="file" name="file" multiple="multiple"/>
    <input type="submit" value="submit"/>
</form>
</body>
</html>
