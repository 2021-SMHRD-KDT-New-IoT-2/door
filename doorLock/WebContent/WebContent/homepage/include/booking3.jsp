<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>





    <meta charset="utf-8">
    <title>��������Ʈ</title>
    <link rel="stylesheet" href="css/booking3.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/booking3.js"></script>
</head>
<body>
    <div id="container">
   <!-- <header>
        <a href="main_display.jsp"><img id="logotype" src="images/main_logo.JPG" alt="���ηΰ�"></a>
        <ul>
            <li><a href="reason.jsp">reason</a></li>
            <li><a href="notice.jsp">notice</a></li>
            <li><a href="rooms.jsp">rooms</a></li>
            <li><a href="booking.jsp">booking</a></li>
            <li><a href="check booking.jsp">check booking</a></li>
            <li><a href="q&a.jsp">q&a</a></li>
        </ul>
    </header>
    -->
    <section>
        <div id="firstarticle">
            <h2>�����ϱ�</h2>
            <img src="images/booking3_picture.gif">
        </div>
        <div id="secondarticle">
            <form action="" method="post" name="info">
                <table cellspacing="0">
                    <colgroup>
                        <col width="20%">
                        <col width="80%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>��(ROOM)</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>�����Ͻ�(date)</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>�ð�</th>
                            <td></td>
                        </tr>
                    <!--    <tr>
                            <th>�ο�</th>
                            <td></td>
                        </tr> -->
                        <tr>
                            <th>�밡��</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>����� ����</th>
                            <td id="deposittext">10,000��</td>
                        </tr>
                        <tr>
                            <th>�������</th>
                            <td></td>
                        </tr>
                        <tr>
                            <th>�Աݰ���</th>
                            <td>
                                <select id="selecttype">
                                    <option value="notselect">=== �Ա� ���¸� �������ּ��� ===</option>
                                    <option value="account">�ݴް� 000-000-000000</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>�Ա��ڸ�</th>
                            <td><input type="text" class="inputtype"></td>
                        </tr>
                        <tr>
                            <th>�Աݿ�����</th>
                            <td><input type="text" class="inputtype"></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td class="finaletype" colspan="2">
                                <input type="button" onclick="firstbooking();" value="ó������" class="buttontype"></button>
                                <input type="button" onclick="prevbooking();" value="��������" class="buttontype"></button>
                                <button type="button" onclick="location='booking4.jsp';"  class="buttontype">��������</button>
                               <!-- <input type="button" onclick="selectingaccount();" value="�����ϱ�" class="buttontype"></button>-->
                            </td>
                        </tr>
                    </tfoot>
                </table>    
            </form>
        </div>
    </section>
    <footer>
        <ul>
            <li>�ּ� : ������</li>
            <li>��ǥ : �ݴް�</li>
            <li>��ȭ��ȣ : 000-0000-0000</li>
            <li>�̸��� : goodnight@naver.com</li>
            
        </ul>
    </footer>
    </div>
</body>
</html>