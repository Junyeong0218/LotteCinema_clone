package com.LotteCinema.web.dto.util.auth;

public class AuthResponseScript {
	public String signupScript(boolean result) {
		StringBuilder script = new StringBuilder();
		
		if(result) {
			script.append("<script>");
			script.append("alert(\"ȸ������ �Ϸ�.\");");
			script.append("location.replace(\"/web/auth/signin\");");
			script.append("</script>");
		}else {
			script.append("<script>");
			script.append("alert(\"ȸ������ ����.\");");
			script.append("history.back();");
			script.append("</script>");
		}
		
		return script.toString();
	}
}
