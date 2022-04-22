package com.LotteCinema.web.dto.util.auth;

public class AuthResponseScript {
	public String signupScript(boolean result) {
		StringBuilder script = new StringBuilder();
		
		if(result) {
			script.append("<script>");
			script.append("alert(\"회원가입 완료.\");");
			script.append("location.replace(\"/web/auth/signin\");");
			script.append("</script>");
		}else {
			script.append("<script>");
			script.append("alert(\"회원가입 실패.\");");
			script.append("history.back();");
			script.append("</script>");
		}
		
		return script.toString();
	}
}
