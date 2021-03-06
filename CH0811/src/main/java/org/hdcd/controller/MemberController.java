package org.hdcd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hdcd.domain.CodeLabelValue;
import org.hdcd.domain.Member;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "/registerForm01", method = RequestMethod.GET)
	public String registerForm01(Model model) {
		logger.info("registerForm01");
		
		Map<String, String> nationalityCodeMap = new HashMap<String, String>();
		nationalityCodeMap.put("01", "Korea");
		nationalityCodeMap.put("02", "Germany");
		nationalityCodeMap.put("03", "Australia");
		
		model.addAttribute("nationalityCodeMap", nationalityCodeMap);
		
		model.addAttribute("member", new Member());
		
		return "registerForm01";
	}
	
	@RequestMapping(value = "/registerForm02", method = RequestMethod.GET)
	public String registerForm02(Model model) {
		logger.info("registerForm02");
		
		List<CodeLabelValue> nationalityCodeList = new ArrayList<CodeLabelValue>();
		nationalityCodeList.add(new CodeLabelValue("01", "Korea"));
		nationalityCodeList.add(new CodeLabelValue("02", "Germany"));
		nationalityCodeList.add(new CodeLabelValue("03", "Australia"));
		
		model.addAttribute("nationalityCodeList", nationalityCodeList);
		
		model.addAttribute("member", new Member());
		
		return "registerForm02";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(Member member, Model model) {
		logger.info("register");
		
		logger.info("member.getNationality() = " + member.getNationality());
		
		model.addAttribute("nationality", member.getNationality());
		
		return "result";
	}

	@RequestMapping(value = "/registerForm03", method = RequestMethod.GET)
	public String registerForm03(Model model) {
		logger.info("registerForm03");
		
		Map<String, String> carColdeMap = new HashMap<String, String>();
		carColdeMap.put("01", "Volvo");
		carColdeMap.put("02", "Saab");
		carColdeMap.put("03", "Opel");
		
		model.addAttribute("carCodeMap", carColdeMap);
		
		model.addAttribute("member", new Member());
		
		return "registerForm03";
	}

	@RequestMapping(value = "/registerForm04", method = RequestMethod.GET)
	public String registerForm04(Model model) {
		logger.info("registerForm04");
		
		List<CodeLabelValue> carCodeList = new ArrayList<CodeLabelValue>();
		carCodeList.add(new CodeLabelValue("01", "Volvo"));
		carCodeList.add(new CodeLabelValue("02", "Saab"));
		carCodeList.add(new CodeLabelValue("03", "Opel"));
		
		model.addAttribute("carCodeList", carCodeList);
		
		model.addAttribute("member", new Member());
		
		return "registerForm04";
	}

	@RequestMapping(value = "/register2", method = RequestMethod.POST)
	public String register2(Member member, Model model) {
		logger.info("register2");
		
		List<String> carList = member.getCarList();
		
		if(carList != null) {
			logger.info("carList != null = " + carList.size());
			
			for(int i = 0; i < carList.size(); i++) {
				logger.info("carList(" + i + ") = " + carList.get(i));
			}
		}
		else {
			logger.info("carList == null");
		}
		
		model.addAttribute("carList", member.getCarList());
		
		return "result2";
	}

	@RequestMapping(value = "/registerForm05", method = RequestMethod.GET)
	public String registerForm05(Model model) {
		logger.info("registerForm05");
		
		List<CodeLabelValue> carCodeList = new ArrayList<CodeLabelValue>();
		carCodeList.add(new CodeLabelValue("01", "Volvo"));
		carCodeList.add(new CodeLabelValue("02", "Saab"));
		carCodeList.add(new CodeLabelValue("03", "Opel"));
		
		model.addAttribute("carCodeList", carCodeList);
		
		model.addAttribute("member", new Member());
		
		return "registerForm05";
	}


}
