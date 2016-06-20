<%--<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%@ include file="/common/taglibs.jsp" %>--%>

<%
    String path = request.getContextPath();
    String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> <html>

<head>

    <base href="<%=basePath%>">

    <title>My JSP 'test.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">

    <meta http-equiv="cache-control" content="no-cache">

    <meta http-equiv="expires" content="0">

    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> <meta http-equiv="description" content="This is my page">

    <!--

    <link rel="stylesheet" type="text/css" href="styles.css">

    -->

    <script type="text/javascript">

        //建立XMLHttpRequest对象

        var xmlhttp;

        try{

            xmlhttp= new ActiveXObject("Msxml2.XMLHTTP");

        }catch(e){

            try{

                xmlhttp= new ActiveXObject("Microsoft.XMLHTTP");

            }catch(e){

                try{

                    xmlhttp= new XMLHttpRequest();

                }catch(e){}

            }

        }

        function getPart(url){

            xmlhttp.open("get",url,true);

            xmlhttp.onreadystatechange = function(){

                if(xmlhttp.readyState == 4)

                {

                    if(xmlhttp.status == 200)

                    {

                        if(xmlhttp.responseText!=""){

                            document.getElementById("partdiv").innerHTML = unescape(xmlhttp.responseText);

                        }

                    }

                    else{

                        document.getElementById("partdiv").innerHTML = "数据加载出错";

                    }

                }

            }

            xmlhttp.setRequestHeader("If-Modified-Since","0");

            xmlhttp.send(null);

        }

        setInterval("getPart('event/eventController!getEventsAll.action')",6000) ; //更新页面url

    </script>

</head>

<body>

<div id="partdiv">

    <table>

        <tr>

            <td>

                事件级别

            </td>

            <td>

                事件状态

            </td>

            <td>

                事件组

            </td>

            <td>

                事件来源

            </td>

            <td>

                hostID

            </td>

        </tr>

        <c:forEach var="event" items="${list}">

            <tr>

                <td>

                        ${event.eventLevel }

                </td>

                <td>

                        ${event.ticketStatus }

                </td>

                <td>

                        ${event.acceptGroup }

                </td>

                <td>

                        ${event.eventSource}

                </td>

                <td>

                        ${event.hostId }

                </td>

            </tr>

        </c:forEach>

    </table>

</div>
</body> </html>