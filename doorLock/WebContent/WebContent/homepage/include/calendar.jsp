<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.1/css/all.css"
      integrity="sha384-v8BU367qNbs/aIZIxuivaU55N5GPF89WBerHoGA4QTcbUjYiLQtKdrfXnqAcXyTv" crossorigin="anonymous">
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/reset.css">
  <script src="jscript/main1.js"></script>
  <script src="jscript/data1.js"></script>
  <title>Calendar</title>
</head>
<body>
<header>
  <h1>
    <i class="far fa-calendar-check"></i>
    <span>Ķ����</span>
    <a href="index.jsp">������</a>

  </h1>
  <div class="calendar_title">
    <button class="prev">&#60;</button>
    <span class="current-year-month"></span>
    <button class="next">&#62;</button>
  </div>
</header>
<section class="content-left">
  <div class="left-main">
    <div class="main-wrap">
      <div class="main-day"></div>
      <div class="main-date"></div>
    </div>
    <div class="todo-wrap">
      <div class="todo-title">Todo List</div>
      <form class="input-form">
        <input type="text" placeholder="write here!!" class="input-box" />
        <button type="submit" class="input-btn clickBtn">INPUT</button>
      </form>
      <ul class="todoList"></ul>
      <div class="showList">
        <span class="listText"></span>
        <span class="createDate"></span>
        <button class="closed">close</button>
      </div>
      <div class="bgblack"></div>
    </div>
  </div>
</section>
<section class="content-right">
    <div class="day-of-week">
      <div class="dayHeader sun">Sun</div>
      <div class="dayHeader">Mon</div>
      <div class="dayHeader">Tue</div>
      <div class="dayHeader">Wed</div>
      <div class="dayHeader">Thu</div>
      <div class="dayHeader">Fri</div>
      <div class="dayHeader sat">Sat</div>
    </div>
    <div class="calendar-body"></div>
</section>
</body>
</html>