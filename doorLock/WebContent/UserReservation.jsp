<%@page import="com.VO.userVO"%>
<%@page import="com.VO.ReservationVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.controller.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse:collapse;
        }
        th{
            background-color: rgb(121, 202, 0);
            color: white;
            font-size: 15px;
        }
        th, td {padding: 15px;        }
        td{ font-size: 15px; }
    	/* GOOGLE FONTS */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap");

/* VARIABLES CSS */
:root {
    --nav--width: 92px;

    /* Colores */
    --first-color: #0c5df4;
    --bg-color: #12192c;
    --sub-color: #b6cefc;
    --white-color: #fff;

    /* Fuente y tipografia */
    --body-font: 'Poppins', sans-serif;
    --normal-font-size: 1rem;
    --small-font-size: .875rem;

    /* z index */
    --z-fixed: 100;
}

/* BASE */
*, ::before, ::after {
    box-sizing: border-box;
}

body {
    position: relative;
    margin: 0;
    padding: 2rem 0 0 6.75rem;
    font-family: var(--body-font);
    font-size: var(--normal-font-size);
    transition: .5s;
}

h1 {
    margin: 0;
}

ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

a {
    text-decoration: none;
}

/* l NAV */
.l-navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: var(--nav--width);
    height: 100vh;
    background-color: rgb(137, 206, 34);
    color: black;
    padding: 1.5rem 1.5rem 2rem;
    transition: .5s;
    z-index: var(--z-fixed);
}

/* NAV */
.nav {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    overflow: hidden;
}

.nav__brand {
    display: grid;
    grid-template-columns: max-content max-content;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 2rem;
}

.nav__toggle {
    font-size: 1.25rem;
    padding: .75rem;
    cursor: pointer;
}

.nav__logo {
    color: var(--white-color);
    font-weight: 600;
}

.nav__link {
    display: grid;
    grid-template-columns: max-content max-content;
    align-items: center;
    column-gap: .75rem;
    padding: .75rem;
    color: var(--white-color);
    border-radius: .5rem;
    margin-bottom: 1rem;
    transition: .3s;
    cursor: pointer;
}

.nav__link:hover {
    background-color: var(--first-color);
}

.nav__icon {
    font-size: 1.25rem;
}

.nav_name {
    font-size: var(--small-font-size);
}

/* Expander menu */
.expander {
    width: calc(var(--nav--width) + 9.25rem);
}

/* Add padding body*/
.body-pd {
    padding: 2rem 0 0 16rem;
}

/* Active links menu */
.active {
    background-color: var(--first-color);
}

/* COLLAPSE */
.collapse {
    grid-template-columns: 20px max-content 1fr;
}

.collapse__link {
    justify-self: flex-end;
    transition: .5;
}

.collapse__menu {
    display: none;
    padding: .75rem 2.25rem;
}

.collapse__sublink {
    color: var(--sub-color);
    font-size: var(--small-font-size);
}

.collapse__sublink:hover {
    color: var(--white-color);
}

/* Show collapse */
.showCollapse {
    display: block;
}

/* Rotate icon */
.rotate {
    transform: rotate(180deg);
    transition: .5s;
}

.tablebg{
    margin-top: -20px;
    margin-left: -4x;
    width: 98.8%;
    height: 700px;
    background-color:rgba(212, 245, 214, 0.374);
}

.icons{
    display: flex;
    width:50%;
    height: 302px;
    /* background: orange; */
    margin:auto;
    
  }
.tablebg > div{
    margin-top:30px;
  }

  #tbtext{
      text-align: center;
    width: 70px;
    height: 26px;
    margin-right: 10px;
  }

  .icon_img{
      /* 아이콘을 위쪽이랑 좀 띄우고 싶은데 잘안되네요..*/
      margin-top: 50px;
  }
    
    </style>
    

</head>

<body id="body-pd">
    <%
		ReservationDAO dao= new ReservationDAO();
		ArrayList<ReservationVO> al = new ArrayList<ReservationVO>();
		userVO vo1 = (userVO)session.getAttribute("user");
		al = dao.Reservation_info(vo1.getCustomer_id());
		ReservationVO vo2 = new ReservationVO();
	%>
    
    <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">내 정보 관리</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">예약 확인</span>
                    </a>


                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보수정</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">회원 탈퇴</span>
                </a>
            </div>
        </nav>
    </div>
    <div class="tablebg">
            <table align="center" width=80%;>
                <caption>
                    <div class="icon_img">
                        <img src="image/check.png" width="150px" height="100px">
                    </div>
                    <h2>펜션 예약 확인</h2>
                </caption>
                <thead>
                    <tr>
                        <th>예약 번호</th>
                        <th>숙소 이름</th>
                        <th>방번호</th>
						<th>예약 인원</th>
                        <th>체크인 일자</th>
                        <th>체크아웃 일자</th>
                        <th>도어락 비밀번호</th>
                        <th>예약 상태</th>
                    </tr>
                </thead>
                <tbody align="center">
                    <tr>
                       <% for(ReservationVO vo:al){ %>
								<tr>
									<td><%=vo.getReservation_num()%></td>
									<td><%=vo.getHotel_uid()%></td>
									<td><%=vo.getRoom_num()%></td>
									<td><%=vo.getNum_of_people()%></td>
									<td><%=vo.getCheckin_date()%></td>
									<td><%=vo.getCheckout_date()%></td>
									<td><label for="email">비밀번호 설정:</label> 
									<input min="4" max="8" value="0" type="number" id="doorlockPW">
									<button id="change_pw" type="button" class= "btn btn-default">전송</button></td>
									<td><%=vo.getStatus()%></td>
									
								</tr>	
							<%} %>
    
                    </tr>
                    
    
                </tbody>
            </table>
    </div>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!-- JS -->
    <script>
    /* EXPANDER MENU */
    const showMenu = (toggleId, navbarId, bodyId) => {
        const toggle = document.getElementById(toggleId),
        navbar = document.getElementById(navbarId),
        bodypadding = document.getElementById(bodyId)

        if( toggle && navbar ) {
            toggle.addEventListener('click', ()=>{
                navbar.classList.toggle('expander');

                bodypadding.classList.toggle('body-pd')
            })
        }
    }

    showMenu('nav-toggle', 'navbar', 'body-pd')

    /* LINK ACTIVE */
    const linkColor = document.querySelectorAll('.nav__link')
    function colorLink() {
        linkColor.forEach(l=> l.classList.remove('active'))
        this.classList.add('active')
    }
    linkColor.forEach(l=> l.addEventListener('click', colorLink))

    /* COLLAPSE MENU */
    const linkCollapse = document.getElementsByClassName('collapse__link')
    var i

    for(i=0;i<linkCollapse.length;i++) {
        linkCollapse[i].addEventListener('click', function(){
            const collapseMenu = this.nextElementSibling
            collapseMenu.classList.toggle('showCollapse')

            const rotate = collapseMenu.previousElementSibling
            rotate.classList.toggle('rotate')
        });
    }

	<script type="text/javascript">


$(function(){ 
	$.ajax({
		url : "Get_info",
		type : "get",
		dataType : "json",
		success : function(data){
			$('#result').html("현재 도어락 비밀번호 : " + data.doorlockPW);
		},
		error : function(){
			alert('error');
		}
	});
});

	$("#change_pw").on('click',function(){
		var doorlockPW = $('#doorlockPW').val();
		$.ajax({
			url : "Input_doorlockPW",
			type : "get",
			data : {"doorlockPW": doorlockPW},
			dataType : "json",
			success : function(data){
				$('#result').html("현재 도어락 비밀번호 : " + data.doorlockPW);
			},
			error : function(){
				 alert('error');
			}
		});
	});
</script>
  
</body>
</html>