package com.LotteCinema.web.util.auth;

public class AuthResponseScript {
	public String signupScript(boolean result) {
		StringBuilder script = new StringBuilder();
		
		if(result) {
			script.append("<script>");
			script.append("alert(\"ȸ������ �Ϸ�.\");");
			script.append("location.replace(\"/member/login\");");
			script.append("</script>");
		}else {
			script.append("<script>");
			script.append("alert(\"ȸ������ ����.\";");
			script.append("history.back();");
			script.append("</script>");
		}
		
		return script.toString();
	}
	
	public String signinValidScript(String msg) {
		StringBuilder script = new StringBuilder();
		
		script.append("<script>");
		script.append("alert(\"" + msg + "\");");
		script.append("location.replace(\"/app/auth/signin\");");
		script.append("</script>");
		
		return script.toString();
	}
}
