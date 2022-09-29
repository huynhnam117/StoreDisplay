<%--
  Created by IntelliJ IDEA.
  User: vannam
  Date: 29/09/2022
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:redirect url = "/customer"/>
<html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
      img {
        height: 100px;
        width: 100px;
      }
    </style>
  </head>
  <body>
  <h1>ưustomer!</h1>
  <table class="table table-dark">
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Birthday</th>
      <th>Address</th>
      <th>Image</th>
    </tr>
    <c:forEach var="x" items="${customerListServlet}">
      <tr>
        <td>${x.getId()}</td>
        <td>${x.getName()}</td>
        <td>${x.getBirthday()}</td>
        <td>${x.getAddress()}</td>
        <td>
          <c:choose>
            <c:when test="${x.getId() == 1}">
              <img src="https://cdn.pixabay.com/photo/2017/11/06/23/19/composing-2925179__480.jpg">
            </c:when>
            <c:when test="${x.getId() == 2}">
              <img src="https://media.coolmate.me/cdn-cgi/image/quality=80/uploads/October2021/meme-cheems-25.jpg">
            </c:when>
            <c:when test="${x.getId() == 3}">
              <img src="">
            </c:when>
            <c:when test="${x.getId() == 4}">
              <img src="https://cdn.pixabay.com/photo/2018/01/03/05/33/the-sun-3057622__480.jpg">
            </c:when>
            <c:when test="${x.getId() == 5}">
              <img src="https://i.pinimg.com/236x/b2/a7/2b/b2a72b082c6adbf28d8a4046ff9f54ab--gif-collection-frogs.jpg">
            </c:when>
          </c:choose>
        </td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>

