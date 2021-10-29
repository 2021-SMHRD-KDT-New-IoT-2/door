<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<style>
*{
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    text-decoration: none;
    border-collapse: collapse;
    margin:0px;
    padding: 0px;
    color: #000;

  
  }
  
  h1 {
    font-size: 130px;
    font-weight: 200;
  }
  h2{
    text-align: center;
    font-size: 60px;
    font-weight: 100;
  }
 
  .contents2{
    font-size: 10px;
  }
  .contents3 {
    font-size: 14px;
    font-weight: 100;
  }
  .contents1_bold{
    font-size: 40px;
    font-weight: bold;
  }

  /* --- */
  
  .result{
    font-size: 0px;
  }

  .intro_bg{
    background-image: url(image/leave.jpg);
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    background-position: center;
    background: radial-gradient(rgb(255, 255, 255));
    width: 100%;
    height: 1000px;
  }
  
  .header{
    width:100%;
    margin:auto;
    display:flex;
    height: 86px;
  }


  .nav{
    display: flex;
    justify-content: flex-end;
    width:calc(1280px - 300px);
    line-height: 86px;
    margin-left: 1900px;
  }

  .nav > li {
    margin-left:150px;
  }
  
  .nav > li > a {
    color: rgb(0, 0, 0);
    font-size: 30px;
    
  }
  
  /*------�˻�-------*/
  .searchArea{
    width:50%;
    height:80px;
    text-align: center;
    
    background: rgba(226, 206, 189, 0);
    border-radius: 5px;
    margin-top:500px;
    margin-left: 23%;
  }
  .searchArea > form > input{
    margin-top: 40px;
    border: 5px;
    border-color: black;
    width:100%;
    height:80px;
    
    background: rgba(238, 146, 92, 0.741);
    color:#fff;
    font-size: 40px;
    text-align: center;
    padding-left:10px;
  }
  .searchArea > form > span{
    width:50px;
    font-size: 30px;
    color:#fff;
  }
/*------�˻�-------*/


  .amount{
    position: relative;
    top:-66px;
    display: flex;
    width:1280px;
    background: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    margin: auto;
  }
  .amount > li {
    flex: 1;
    height: 132px;
  }
  .amount > li > div {
    text-align: center;
    margin-top:37px;
    height:57px;
  }
  
  .amount > li:not(:last-child) > div{
    border-right:1px solid #E1E1E1;
  }
  .intro_text{
    width:100%;
    margin:231px auto 231px auto;
    text-align: center;
  }

  .intro_text h2{
    color: rgba(92, 90, 90, 0.823);
  }


  .intro_text > h1{
    color: rgb(255, 255, 255);
  }
  .intro_text > h4{
    color:#fff;
  }
  
  /* main_text0 */
  
  .main_text0{
    width: 100%;
    height:601px;
    margin-bottom:-100px;
    background: #f7f7f7;
  }
  .main_text0 > h1{
    padding-top:116px;
    text-align: center;
  }
  .main_text0 > .contents1 {
    text-align: center;
  }
  
  .icons{
    display: flex;
    width:1500px;
    height: 302px;
    /* background: orange; */
    margin:auto;
  }
  .icons > li {
    flex: 1;
    background: rgba(255, 255, 255, 0);
    margin-top:350px;
    height:330px;
    text-align: center;
  }
  .icons > li > .icon_img{
    margin-top:18px;
  }
  
  .icons > li:not(:last-child){
    margin-right: 20px;
  }
  
  .icons .contents2 {
    width:280px;
    margin:auto;
    letter-spacing: -1px;
  }
  .button{
      font-size: 25px;
      color: #80acf3;
  }

  .nav a:hover{
    color: #1fdfdf;
  }

a:hover{
    color: #1fdfdf;
}

  .more{
    width:200px;
    height: 50px;
    background: #e4b06d6b;
    color: rgb(0, 0, 0);
    font-size: 25px;
    line-height: 30px;
    margin:25px auto;
    border: 0px;
  }
  
  /* main_text1 ȣ�� ��õ�ϴ� ��*/
  
  .main_text1{
    margin-left: 15%;
    width: 100%;
    height:659px;
    margin-top: 100px;
    /* background: #2F7AF4 */
  }
  .main_text1 > h2{
    padding-top:100px;
    margin-bottom: -30px;
    text-align: left;
  }
  .main_text1 > .contents1 {
    text-align: center;
  }
  .service {
    width:100%;
    display: flex;
    margin: 49px auto;
    height:427px;
    text-align: center;
    font-size: 25px;
    font-style:inherit;
  }
  
  .service > .contents2 {
    padding: 0px;
    margin-left: 25px;
    
  }
  .service > .contents2 > h2{
    margin-bottom: 20px;
  }

  .service > .contents2 > a{
    text-align: center;
    font-size: 30px;
    font-style:inherit;
  }


  
  /* main_text2 */
  .main_text2 {
    width:100%;
    height:500px;
    background-image: url("image/contact.png");
  }
  
  .main_text2 > ul {
    display: flex;
    padding-top:138px;
  }
  
  .main_text2 > ul > li {
    flex: 1;
    text-align: center;
  }
  .main_text2 > ul > li > div,
  .main_text2 > ul > li > div > h1{
    color: #fff;
  }
  .more2{
    width:220px;
    height:40px;
    border: 1px solid #fff;
    color: rgb(0, 0, 0);
    line-height: 40px;
    cursor: pointer;
    margin:16px auto;
  }
  .more2 a{
      color: white;
  }

  .footer{
    display: flex;
    background: #9aecea;
    padding:30px;
  }
  .footer > div:first-child {
    flex:3;
    text-align: center;
    color: rgb(0, 0, 0);
  }
  .footer > div:last-child {
    flex:9;
    color: rgb(0, 0, 0);
  }

  /* �湮 �ı� �Խ��� ���̺� ���� */
  table{
  width:100%;
  border-collapse: collapse;
  line-height: 24px;
  }
  table td,th {
    border-top:1px solid black;
    border-bottom:1px solid black;
    border-collapse: collapse;
    text-align: center;
    padding: 10px;
    font-size: 20px;
}
th {
	background: rgb(219, 236, 238);
}
a{
    text-decoration: none;
    color: black;
}
a:hover{
    text-decoration: underline;
}

.under{
  width: 2600px;
  height: 90px;
  background-color: rgb(242, 131, 72);
  margin-top: 100px;
  text-align: center;
}
.under > a{
font-size: 30px;
color: white;
}

</style>
 <style type="text/css">
        .intro_text>h2 {
            font-size: 45px;
            font-family: "sans-serif";
            font-weight: normal;
        }
    </style>

</head>
<body>
   <%
		
   userVO vo = (userVO)session.getAttribute("member");
   
		
%>
	
   
   
    <div class="back">
        <div class="intro_bg">

            <div class="header">
                <ul class="nav">
                 
                    <li><a href="#">HOME</a></li>
                    <%if(vo==null){%>
					<li><a href="join.jsp">�α���/ȸ������(�Ϲ�)</a></li>
					<li><a href="hostJoin.jsp">�α���/ȸ������(��ü)</a></li>
			    	 <%}%>
							
				 	<%if(!(vo==null)){%>
					
					<li><a href="#">�����ϱ�</a></li>
					<li><a href="#">�� ��������</a></li>
					<li><a href="#">����ã��</a></li>
					 <%}%>
                    
                   
                  	
                </ul>
            </div>
            <div class="intro_text">
                <h2>�ʰ� ã�� ����? ���� ���־�!!</h2>
                <h1>���� �?</h1>
            </div>
            <ul class="icons">
                <li>
                    <div class="icon_img">
                        <img src="image/dok.png" width="200px" height="200px">
                    </div>

                    <div class="contents1_bold">
                        <button class="more "> <a href="#"> ��ä ����</a></button>
                    </div>
                </li>
                <li>

                    <div class="icon_img">
                        <img src="image/jib.png" width="200px" height="200px">
                    </div>

                    <div class="contents1_bold">
                        <button class="more"> <a href="#"> ȣ�� ����</a></button>
                    </div>

                </li>

                <li>
                    <div class="icon_img">
                        <img src="image/house.png" width="200px" height="200px">
                    </div>
                    <div class="contents1_bold">
                        <button class="more"> <a href="#"> �Խ�Ʈ�Ͽ콺 ����</a></button>
                    </div>

                </li>

                <li>
                    <div class="icon_img">
                        <img src="image/full.png" width="200px" height="200px">
                    </div>
                    <div class="contents1_bold">
                        <button class="more"> <a href="#"> Ǯ���� ���� </a></button>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="searchArea">
        <form>
            <input type="search" placeholder="search">
            <span>�˻�</span>
        </form>
    </div>


    <div class="main_text1">
        <h2>ȣ�� ��õ</h2>
        <div class="service">
            <div class="backpicture">
                <img src="image/ho1.JPG" width="630px" height="400px"><br>
                <a href="http://127.0.0.1:5500/web%20%ED%8C%8C%EC%9D%BC%EB%AA%A8%EC%9D%8C/%ED%8E%9C%EC%85%98%EB%A9%94%EC%9D%B8.html">���丮�� 300,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/ho2.jpg" width="630px" height="400px"><br>
                <a href="#">�ϳ���ȣ�� 230,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/ho3.jpg" width="630px" height="400px"><br>
                <a href="#">���ֽ����� 250,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/ho4.jpg" width="630px" height="400px"><br>
                <a href="#">�ƴ���ȣ�� 170,000�� ���� ~ </a>
            </div>
        </div>

        <h2>�Խ�Ʈ �Ͽ콺 ��õ</h2>
        <div class="service">
            <div class="backpicture">
                <img src="image/ge1.jpg" width="630px" height="400px"><br>
                <a href="#">�ϴ� �Խ�Ʈ�Ͽ콺 15,000�� ���� ~ </a>
            </div>
            <div class="contents2">
                <img src="image/ge2.jpg" width="630px" height="400px"><br>
                <a href="#">ǳ���� �Խ�Ʈ�Ͽ콺 25,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/ge3.jpg" width="630px" height="400px"><br>
                <a href="#">���� �Խ�Ʈ�Ͽ콺 20,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/ge4.jpg" width="630px" height="400px"><br>
                <a href="#">���� �Խ�Ʈ�Ͽ콺 17,000�� ���� ~ </a>
            </div>
        </div>
        
        <h2>Ǯ���� ��õ</h2>
        <div class="service">
            <div class="backpicture">
                <img src="image/full1.jpg" width="630px" height="400px"><br>
                <a href="#">����ƹ븮 150,000�� ���� ~ </a>
            </div>
            <div class="contents2">
                <img src="image/full2.jpg" width="630px" height="400px"><br>
                <a href="#">Ǯ�������� 110,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/full3.png" width="630px" height="400px"><br>
                <a href="#">��������Ǯ���� 99,000�� ���� ~ </a>
            </div>

            <div class="contents2">
                <img src="image/full4.png" width="630px" height="400px"><br>
                <a href="#">������ 199,000�� ���� ~ </a>
            </div>
        </div>

        <div class = "under"><a href="#">�� ��</a></div>
    </div>
</html>