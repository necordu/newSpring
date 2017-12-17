<%--
  Created by IntelliJ IDEA.
  User: necordu
  Date: 16.12.2017
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>NewLAb</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>
  <h1>Hello World!</h1>
  <h2>Простой калькулятор</h2>
  <p><label for="first">Введите первое число</label>
    <input id="first" type="text" size="40">
  </p>
  <p><label for="second">Введите второе число</label>
    <input id="second" type="text" size="40">
  </p>
  <label>Ответ:</label>
  </body>
  <input type="button"  onclick="location.href='/home.htm'" value="Register" >
  <p id="answer">x</p>
  <br>
  <button id="plus">+</button>
  <button id="minus">-</button>
  <button id="drob">/</button>
  <button id="mult">*</button>
  <script>
      $(document).ready(function () {
          $('#plus').click(function () {
              var a = parseInt($('#first').val(), 10);
              var b = parseInt($('#second').val(), 10);
              $('#answer').text(a + b);
          });
          $('#minus').click(function () {
              var a = parseInt($('#first').val(), 10);
              var b = parseInt($('#second').val(), 10);
              $('#answer').text(a - b);
          });
          $('#drob').click(function () {
              var a = parseInt($('#first').val(), 10);
              var b = parseInt($('#second').val(), 10);
              $('#answer').text(a/b);
          });
          $('#mult').click(function () {
              var a = parseInt($('#first').val(), 10);
              var b = parseInt($('#second').val(), 10);
              $('#answer').text(a*b);
          });
      });
  </script>
</html>
