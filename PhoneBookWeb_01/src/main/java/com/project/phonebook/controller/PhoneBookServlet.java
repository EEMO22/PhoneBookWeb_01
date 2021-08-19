package com.project.phonebook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.phonebook.dao.PhoneBookDAO;
import com.project.phonebook.dao.PhoneBookDAOImpl;
import com.project.phonebook.vo.PhoneBookVO;

@WebServlet("/ps")
public class PhoneBookServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		String actionName = req.getParameter("a");
		
		if ("form".equals(actionName)) {
			RequestDispatcher rd = getServletContext()
					.getRequestDispatcher("/WEB-INF/views/phonebook/form.jsp");
			rd.forward(req, resp);
		} else {
			PhoneBookDAO dao = new PhoneBookDAOImpl();
			List<PhoneBookVO> list = dao.getList();
			
			req.setAttribute("list", list);
			req.setAttribute("search", "");
			
			RequestDispatcher rd = getServletContext()
					.getRequestDispatcher("/WEB-INF/views/home.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
				String actionName = req.getParameter("a");
				
				//	add
				if ("add".equals(actionName)) {
					String name = req.getParameter("name");
					String hp = req.getParameter("hp");
					String tel = req.getParameter("tel");
					
					PhoneBookVO vo = new PhoneBookVO();
					vo.setName(name);
					vo.setHp(hp);
					vo.setTel(tel);
					
					PhoneBookDAO dao = new PhoneBookDAOImpl();
					int insertedCount = dao.insert(vo);
					
					resp.sendRedirect(req.getContextPath() + "/");
			
				} else if ("search".equals(actionName)) {
					
					PhoneBookDAO dao = new PhoneBookDAOImpl();
					String keyword = (String)req.getParameter("search");
					List<PhoneBookVO> list = dao.search(keyword);
					
					req.setAttribute("list", list);
					
					RequestDispatcher rd = getServletContext()
							.getRequestDispatcher("/WEB-INF/views/home.jsp");
					rd.forward(req, resp);
					
					
				} else if ("delete".equals(actionName)) {
					Long id = Long.valueOf(req.getParameter("id"));
					
					PhoneBookDAO dao = new PhoneBookDAOImpl();
					int deletedCount = dao.delete(id);
					
					resp.sendRedirect(req.getContextPath() + "/");
				} else {
					doGet(req, resp);
				}
	}

}
