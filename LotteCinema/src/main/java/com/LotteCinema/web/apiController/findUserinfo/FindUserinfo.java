package com.LotteCinema.web.apiController.findUserinfo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.LotteCinema.web.requestDto.FindIdRequestDto;
import com.LotteCinema.web.service.AuthService;

@Controller
public class FindUserinfo {
	
	@Autowired
	private AuthService authService;
	
	@RequestMapping(value = "/member/join/find_id", method = RequestMethod.POST)
	@ResponseBody
	public boolean findId(FindIdRequestDto dto, HttpServletRequest request) {
		String username = authService.selectUsernameByDto(dto);
		if(username == null) {
			return false;
		} else {
			StringBuilder sb = new StringBuilder();
			sb.append(username.substring(0, 2));
			for(int i = 0; i < username.length() - 2; i++) {
				sb.append("*");
			}
			request.getSession().setAttribute("username", sb.toString());
			return true;
		}
	}
	
	@RequestMapping(value = "/member/join/find_password", method = RequestMethod.POST)
	@ResponseBody
	public boolean findPassword(FindIdRequestDto dto) {
		return false;
	}
}
