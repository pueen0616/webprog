<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!-- JSP 파일임을 정함-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="layout.css">
</head>
<body>
    <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String hireDate = request.getParameter("hireDate");
    String sex = request.getParameter("sex");
    String yesorno = request.getParameter("yesorno");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String phone1 = request.getParameter("phone1");
    String phone2 = request.getParameter("phone2");
    String job = request.getParameter("job");
    String[] ck = request.getParameterValues("ck");
    String textArea = request.getParameter("textArea");
    %>

    

    <h2>CSS Layout Float</h2>
<p>In this example, we have created a header, two columns/boxes and a footer. On smaller screens, the columns will stack on top of each other.</p>
<p>Resize the browser window to see the responsive effect (you will learn more about this in our next chapter - HTML Responsive.)</p>

<header>
  <h2>Cities</h2>
</header>

<form action="tokyo.jsp" method="POST">
<section>
  <nav style="height: 570px;">
    <ul >
      <li><a href="cities.html">London</a></li>
      <li><a href="paris.html">Paris</a></li>
      <li><a href="tokyo.html">Tokyo</a></li>
    </ul>
  </nav>

  <article style="height:570px;">
    <form>
        &nbspI&nbsp&nbspD:<input type="text" value=<%=id%>><br>
        날짜:<input type="date" value=<%=hireDate%>><br>
        성별:<input type="text" value=<%=sex%>><br>
        수신:<input type="text" value=<%=yesorno%>><br>
        이메일:<input type="text" value=<%=email%>><br>
        &nbsp폰&nbsp&nbsp:<select>
            <option value=""><%=phone%></option>
        </select>
        <input type="text" value=<%=phone1%>>
        <input type="text" value=<%=phone2%>><br>
        직업:<select>
            <option value=""><%=job%></option>
        </select><br>
        <%
        for(String hob : ck){
    %>
        취미:<input type="text" value=<%=hob%>><br>
    <%
        }
    %>
        소개:<input type="text" value=<%=textArea%>><br>
    </form>
  </article>
</section>
</form>

<footer>
  <p>Footer</p>
</footer>

</body>
</html>