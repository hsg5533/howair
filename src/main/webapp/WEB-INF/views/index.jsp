<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <table class="table table-hover">
      <thead>
        <tr>
          <th>대기</th>
          <th>이름</th>
          <th>설명</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${list}" var="list">
          <tr>
            <td>${list.air}</td>
            <td>${list.name}</td>
            <td>${list.distribution}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
