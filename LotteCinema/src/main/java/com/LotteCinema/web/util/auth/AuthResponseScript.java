package com.LotteCinema.web.util.auth;

public class AuthResponseScript {
	
	public String signupValidScript(String msg) {
		StringBuilder script = new StringBuilder();
		script.append("<script>");
		script.append("alert(\""+msg+"\");");
		script.append("location.replace(\"/member/join/signup\")");
		script.append("</script>");
		return script.toString();
	}
}
