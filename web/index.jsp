<%--
  Created by IntelliJ IDEA.
  User: fjrd
  Date: 07.03.2020
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>

  <form id="add" method="post" action="/calc">
    <%--<form name="Enter your message" method="post" action="/hello"> --%>
    <table>
      <tr>
        <td><input name="n1" type="text" size="=40"></td>
        <td><input name="n2" type="text" size="=40"></td>
      <tr/>
      <tr>
        <td><input name="sum" type="submit" value="Сложить"></td>
        <td><input name="clear" type="submit" value="Очистить"/></td>
      </tr>
    </table>
  </form>


  <form id="multy" method="post" action="/calc">
    <table>
      <tr>
        <td><input name="n1" type="text" size="=40"></td>
        <td><input name="n2" type="text" size="=40"></td>
      <tr/>
      <tr>
        <td><input name="mult" type="submit" value="Умножить"></td>
        <td><input name="clear" type="submit" value="Очистить"/></td>
      </tr>
    </table>
  </form>

  <% String msg = (String) request.getAttribute("msg");
    if (msg != null) {
      out.println("Ansver: " + msg);
    }
  %>

  </body>
</html>
