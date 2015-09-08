<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form enctype="multipart/form-data" method="post" action="auction">
		<table>
			<tr>
				<td>Title</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>Picture</td>
				<td><input type="file" name="pic" /></td>
			</tr>
			<tr>
				<td>Doc</td>
				<td><input type="file" name="doc" /></td>
			</tr>
			<tr>
				<td>Pdf</td>
				<td><input type="file" name="pdf" /></td>
			</tr>
		</table>
		<input type="submit" value="ClickMe"/>
	</form>
</body>
</html>