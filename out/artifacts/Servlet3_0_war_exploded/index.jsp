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
   <form action="${pageContext.request.contextPath}/uploadFiles?method=uploadFiles" method="post" enctype="multipart/form-data">
       <input type="file" name="file" multiple="multiple"/>
       <input type="submit" value="submit"/>
   </form>
</body>
</html>
