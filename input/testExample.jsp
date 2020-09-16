<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!-- JSP 파일임을 정함-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>input/testExample.jsp</title>
</head>
<body>
    <%
    request.setCharacterEncoding("UTF-8"); //post 한글깨짐 그래서 UTF-8
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    %>
    <table border="3">
       <tr>
           <th>
               <h3>이름</h3>
               <td align="center"><%=firstName%></td>
            </th>
        </tr>
       <tr>
           <th>
               <h3>성</h3>
               <td align="center"><%=lastName%></td>
            </th>
        </tr>
       <tr>
           <th>
               <h3>이메일</h3>
               <td align="center"><%=email%></td>
            </th>
        </tr>
    </table>
</body>
</html>