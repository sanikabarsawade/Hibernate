<%@ page import="java.util.*,com.sampleproject.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.cfg.Configuration,org.hibernate.Query" %>
<%! int id;double sal; String name; Session session1 = null; %>
<body><center>
<table width="220" border="1">
<tr><th colspan="3">Information</th></tr>
 <!-- <form action="./delEmp.jsp">-->
 	
 <tr><th>NUMBER</th><th>NAME</th><th>SALARY</th></tr>                     
<%


SessionFactory sessionfactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 session1=sessionfactory.openSession();
 session1.beginTransaction();
		
         
//String SQL_QUERY ="from userdetails";
Query query = session1.createQuery("from UserDetails");
Iterator it=query.iterate();
while(it.hasNext())
{
	UserDetails e=(UserDetails)it.next();
id=e.getEmpno();
name=e.getEname();
sal=e.getSal();            
%>
                  
<tr>
<td><%=id%></td>
<td><%=name%></td>
<td><%=sal%></td>

<td><a href="./updEmp.jsp?a=<%=id%>&b=<%=name%>&c=<%=sal%>" temp_href="./updEmp.jsp?a=<%=id%>&b=<%=name%>
c=<%=sal%>">Edit</a></td>

<td><a href="./delEmp.jsp?a=<%=id%>&b=<%=name%>&c=<%=sal%>" temp_href="./delEmp.jsp?a=<%=id%>&b=<%=name%>
c=<%=sal%>">Delete</a></td>
<!-- <td><input type="checkbox" value="<%=id%>" name="c1"></td>-->
</tr>
<%
}
session1.close();
%>

</form>
</table>
<a href="./index.html">HOME</a>
</center>
</body>
</html>
