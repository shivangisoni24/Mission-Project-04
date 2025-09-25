<%@page import="in.co.rays.proj4.bean.UserBean"%>
<%@page import="in.co.rays.proj4.controller.LoginCtl"%>
<%@page import="in.co.rays.proj4.bean.RoleBean"%>
<%@page import="in.co.rays.proj4.controller.ORSView"%>

<html>
<head>
<link rel="icon" type="image/png"
	href="<%=ORSView.APP_CONTEXT%>/img/logo.png" sizes="16x16" />
	
	<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- Include jQuery UI -->
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<!-- Include jQuery UI CSS -->
<link rel="stylesheet"
  	href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">



<script type="text/javascript" src="/ORSProject-04/js/datepicker.js"></script>

<script type="text/javascript" src="/ORSProject-04/js/checkbox.js"></script>

</head>
<%
	UserBean user = (UserBean) session.getAttribute("user");

	boolean userLoggedIn = user != null;

	String welcomeMsg = "Hi, ";

	if (userLoggedIn) {
		String role = (String) session.getAttribute("role");
		welcomeMsg += user.getFirstName() + " (" + role + ")";//welcomeMsg =welcomeMsg+ user.getFirstName() + " (" + role + ")";
	} else {
		welcomeMsg += "Guest";
	}
%>

<table>
	<tr>
		<td width="90%"><a style="text-decoration: none;"
			href="<%=ORSView.WELCOME_CTL%>"><b>Welcome</b></a> | <%
			if (userLoggedIn) {
		%> <a style="text-decoration: none;"
			href="<%=ORSView.LOGIN_CTL%>?operation=<%=LoginCtl.OP_LOG_OUT%>"><b>Logout</b></a>

			<%
				} else {
			%> <a style="text-decoration: none;" href="<%=ORSView.LOGIN_CTL%>"><b>Login</b></a>
			<%
				}
			%></td>
		<td rowspan="2">
			<h1 align="Right">
				<img src="<%=ORSView.APP_CONTEXT%>/img/customLogo.jpg" width="318"
					height="90">
			</h1>
		</td>

	</tr>

	<tr>
		<td>
			<h3>
				<%=welcomeMsg%></h3>
		</td>
	</tr>


	<%
		if (userLoggedIn) {
	%>

	<tr>
		<td colspan="2">
		<a href="<%=ORSView.MY_PROFILE_CTL%>">My Profile</a> | 
		<a href="<%=ORSView.CHANGE_PASSWORD_CTL%>">Change Password</a> | 
		<a href="<%=ORSView.GET_MARKSHEET_CTL%>">Get Marksheet</a> | 
		<a href="<%=ORSView.MARKSHEET_MERIT_LIST_CTL%>">Marksheet Merit List </a> 
		<%
 	   if (user.getRoleId() == RoleBean.ADMIN) {
       %> | 
      <a href="<%=ORSView.COLLEGE_CTL%>">Add College</a> | 
      <a href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a> | 
      <a href="<%=ORSView.MARKSHEET_CTL%>">Add Marksheet</a> | 
	  <a href="<%=ORSView.MARKSHEET_LIST_CTL%>">Marksheet List</a> | 
	  <a href="<%=ORSView.USER_CTL%>">Add User</a> | 
	  <a href="<%=ORSView.USER_LIST_CTL%>">User List</a> | 
	  <a href="<%=ORSView.ROLE_CTL%>">Add Role</a> | 
	  <a href="<%=ORSView.ROLE_LIST_CTL%>">Role List</a> |
	  
	  <%
 	}

 		if (user.getRoleId() == RoleBean.COLLEGE || user.getRoleId() == RoleBean.ADMIN) {
 %>  <a href="<%=ORSView.STUDENT_CTL%>">Add Student</a> | 
      <a href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a> | 
      <a href="<%=ORSView.COURSE_CTL%>">Add Course</a> | 
      <a href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a> | 
	  <a href="<%=ORSView.SUBJECT_CTL%>">Add Subject</a> | 
	  <a href="<%=ORSView.SUBJECT_LIST_CTL%>">Subject List</a> | 
	  <a href="<%=ORSView.FACULTY_CTL%>">Add Faculty</a> | 
	  <a href="<%=ORSView.FACULTY_LIST_CTL%>">Faculty List</a> <%
 	}
 		if (user.getRoleId() == RoleBean.COLLEGE || user.getRoleId() == RoleBean.FACULTY
 				|| user.getRoleId() == RoleBean.ADMIN) {
 %> | <a href="<%=ORSView.TIMETABLE_CTL%>">Add Timetable</a> | 
      <a href="<%=ORSView.TIMETABLE_LIST_CTL%>">Timetable List</a> <%
 	}

 		if (user.getRoleId() == RoleBean.ADMIN) {
 %> | <a href="doc/index.html" target="blank">Java Doc</a> <%
 	}
 	} else {
 %> <a href="<%=ORSView.LOGIN_CTL%>"></a> <%
 	}
 %></td>

	</tr>

</table>
<hr>
</html>