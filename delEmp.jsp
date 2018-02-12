<%@ page import="java.util.*,com.sampleproject.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration;" %>
<%! String eno; int empno; Session session1 = null; %>

<body>
<%
int num=Integer.parseInt(request.getParameter("a"));
String  name=request.getParameter("b");
String sal=request.getParameter("c");
String sub=request.getParameter("s1");

try
{
	SessionFactory sessionfactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	   Session session1 = sessionfactory.openSession();
 Transaction tr = session1.beginTransaction();

UserDetails e = (UserDetails)session1.get(UserDetails.class,num);


session1.delete(e);
tr.commit();
session1.close();

out.println("<h1>Deleted successfully!</h1>");

}
catch(Exception e)
{
System.out.println("e="+e.getMessage());
}

//}
%><form name="f1"><center>
  <table width="371" border="1">
  <tr><th colspan="3">Information</th></tr>
    <tr>
      <th> Emp No </th>
      <td><input name="a" type="text" value="<%= num %>" onFocus="this.blur()">
      </td>
    </tr>
    <tr>
      <th>Emp Name </th>
      <td><input name="b" type="text" value="<%= name %>"  onFocus="this.blur()"></td>
    </tr>
    <tr>
      <th>Salary </th>
      <td><input name="c" type="text" value="<%= sal %>" onFocus="this.blur()"></td>
    </tr>
   <tr>
      <th colspan="2"><input type="submit"  name="s1" value="delete" >
      </th>
    </tr>
  </table>
</form>
<a href="./index.html">HOME</a>
</center></body>
</html>
