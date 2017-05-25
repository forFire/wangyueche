package com.sichuang.controller;

import com.sichuang.bean.vo.Result;
import com.sichuang.biz.LoginBiz;
import com.sichuang.util.Constants;
import com.sichuang.util.base.BaseController;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping
public class LoginController extends BaseController {

	@Autowired
	private LoginBiz biz;

	/**
	 * 进入登录页面
	 */
	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(HttpSession session) {
//		Object token = session.getAttribute(Constants.Token.RONCOO);
//		if (token == null) {
//			return "login";
//		}
		return "0";
	}

	/**
	 * 登录
	 * 
	 * @throws IOException
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void postLogin(HttpSession session) {

	}

	@RequestMapping(value = "/certification", method = RequestMethod.GET)
	public String certification(HttpSession session) {
		Result<String> result = biz.login();
		if (result.isStatus()) {
			logger.info(result.getResultData());

			session.setAttribute(Constants.Token.RONCOO, "www.roncoo.com");

		}
		return redirect("/login");
	}

	/**
	 * 授权登录
	 */
	@RequestMapping(value = "/oauth", method = RequestMethod.GET)
	public String oauth(@RequestParam(value = "code", defaultValue = "") String code, RedirectAttributes redirectAttributes, HttpSession session) {
		Result<String> result = biz.oauth(code);
		if (result.isStatus()) {
			// 成功之后，传入session
			session.setAttribute(Constants.Token.RONCOO, result.getResultData());
		}

		// 重定向到登录页面，由它来判断session进行登录
		return redirect("/login");
	}

	/**
	 * 退出登陆操作
	 */
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(RedirectAttributes redirectAttributes, HttpSession session) {
		session.removeAttribute(Constants.Token.RONCOO);
		SecurityUtils.getSubject().logout();
		redirectAttributes.addFlashAttribute("msg", "您已经安全退出");
		return redirect("/login");
	}

	/**
	 * 权限不足
	 */
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public void error() {

	}

}
