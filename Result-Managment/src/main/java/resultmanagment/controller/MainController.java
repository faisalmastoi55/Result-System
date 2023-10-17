package resultmanagment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import resultmanagment.dao.ResultDao;
import resultmanagment.model.Result;

@Controller
public class MainController {
	
	@Autowired
	private ResultDao dao;

	@RequestMapping("/")
	public String home(Model model)
	{
		List<Result> allResult = dao.getAllResult();
		model.addAttribute("result1", allResult);
		
		return "index";
	}
	
	
	@RequestMapping(value = "/handleForm", method = RequestMethod.POST)
	public RedirectView handleResult(@ModelAttribute Result result, HttpServletRequest request, HttpSession session)
	{
		System.out.println(result);
		dao.createResult(result); 
		session.setAttribute("succMsg", "Insert Result Data Successfully");
		  
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	/* delete Handler */
	@RequestMapping("/delete/{resultId}")
	public RedirectView deleteResult(@PathVariable("resultId") int resultId, HttpServletRequest request, HttpSession session)
	{
		this.dao.deleteResult(resultId);
		session.setAttribute("deleteMsg", "Delete Result Data Successfully");
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	/* Update Handler */
	@RequestMapping("/update/{resultid}")
	public String updateResult(@PathVariable("resultid") int rid, Model model)
	{
		Result result1 = this.dao.getResult(rid);
		model.addAttribute("result", result1);
		
		return "update_form";
	}
	
	@RequestMapping(value = "/updateresult" , method = RequestMethod.POST)
	public RedirectView updateData(@ModelAttribute Result result, HttpServletRequest request , HttpSession session)
	{
		dao.updateResultData(result);
		session.setAttribute("succMsg", "Update Result Data Successfully");
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
}
