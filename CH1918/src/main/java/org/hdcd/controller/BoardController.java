package org.hdcd.controller;

import org.hdcd.common.domain.PageRequest;
import org.hdcd.common.domain.Pagination;
import org.hdcd.common.security.domain.CustomUser;
import org.hdcd.domain.Board;
import org.hdcd.domain.Member;
import org.hdcd.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	public void registerForm(Model model, Authentication authentication) throws Exception {
		CustomUser customUser = (CustomUser) authentication.getPrincipal();
		Member member = customUser.getMember();

		Board board = new Board();

		board.setWriter(member.getUserId());

		model.addAttribute(board);
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@PreAuthorize("hasRole('ROLE_MEMBER')")
	public String register(Board board, RedirectAttributes rttr) throws Exception {
		service.register(board);

		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/board/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(@ModelAttribute("pgrq") PageRequest pageRequest, Model model) throws Exception {
		
		model.addAttribute("list", service.list(pageRequest));
		
		Pagination pagination = new Pagination();
		pagination.setPageRequest(pageRequest);
	    
		pagination.setTotalCount(service.count());

		model.addAttribute("pagination", pagination);
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(int boardNo, @ModelAttribute("pgrq") PageRequest pageRequest, Model model) throws Exception {
		
		/*
		model.addAttribute(service.read(boardNo));
		*/
		
		Board board = service.read(boardNo);
		
		board.setPageRequest(pageRequest);
		
		model.addAttribute(board);
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")
	public String remove(int boardNo, PageRequest pageRequest, RedirectAttributes rttr) throws Exception {
		service.remove(boardNo);
		
		rttr.addAttribute("page", pageRequest.getPage());
		rttr.addAttribute("sizePerPage", pageRequest.getSizePerPage());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/board/list";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")
	public void modifyForm(int boardNo, @ModelAttribute("pgrq") PageRequest pageRequest, Model model) throws Exception {
		
		/*
		model.addAttribute(service.read(boardNo));
		*/
		
		Board board = service.read(boardNo);
		
		board.setPageRequest(pageRequest);

		model.addAttribute(board);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	@PreAuthorize("hasAnyRole('ROLE_ADMIN','ROLE_MEMBER')")
	public String modify(Board board, PageRequest pageRequest, RedirectAttributes rttr) throws Exception {
		service.modify(board);
		
		rttr.addAttribute("page", pageRequest.getPage());
		rttr.addAttribute("sizePerPage", pageRequest.getSizePerPage());
	    
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/board/list";
	}

}
