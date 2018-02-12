<%@ page import="com.sampleproject.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.cfg.Configuration,java.util.*,org.hibernate.Query;" %>
<%! int id;double sal; String name; Session session1 = null; %>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<body>
<table width="220" border="1">
<tr><th>NUMBER</th><th>NAME</th><th>SALARY</th></tr>                     
<%
try{
SessionFactory sessionfactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
session1 =sessionfactory.openSession();
//Using from Clause
String SQL_QUERY ="from UserDetails";
Query query = session1.createQuery(SQL_QUERY);
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
</tr>
<%
}
}
catch(Exception e)
{
	System.out.println("error="+e.getMessage());
}
session1.close();
%>
</table>
<a href="./index.html">HOME</a>
</body>
</html>
