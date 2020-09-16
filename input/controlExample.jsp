<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!-- JSP 파일임을 정함-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>input/controlExample.jsp</title>
</head>
<body>
    <%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String hireDate = request.getParameter("hireDate");
    String computer = request.getParameter("computer");
    %>
    <form>
        <input type="text" value=<%=firstName%>><br>
        <input type="text" value=<%=lastName%>><br>
        <input type="date" value=<%=hireDate%>><br>
        <select>
            <option value=""><%=computer%></option>
            <option value="Software">Software</option>
            <option value="Robot">Robot</option>
            <option value="System">System</option>
        </select><br>
    </form>
</body>
</html>