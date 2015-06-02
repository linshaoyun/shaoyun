<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<title>用户注册</title>
	</head>

	<body>
		<s:form action="Register" namespace="/">
			<s:textfield key="用户名" name="user.userName" required="true" requiredposition="left"/>
			<s:password key="密码" name="user.userPwd"  required="true" requiredposition="left"/>
			<s:password key="再输一遍密码" name="repassword"  required="true" requiredposition="left"/>	
			<s:textfield key="年龄" name="user.userAge" />
			<s:radio name="user.userSex" list="#{1 : '男', 0 : '女'}" label="性　别"></s:radio>  
			<s:textfield key="电话" name="user.userPhone" />
			<s:textfield key="邮箱" name="user.userEmail" />
			<s:textarea name="user.memo" cols="30" rows="5" label="描　述"></s:textarea>
			<s:submit value="提 交" />
		</s:form>
	</body>
</html>