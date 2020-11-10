package webinar.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webinar.dao.InstrutorDao;
import webinar.model.Endereco;
import webinar.model.Formacao;
import webinar.model.Instrutor;

/**
 * Servlet implementation class InstrutorServlet
 */
public class InstrutorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InstrutorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int instrutorid = Integer.parseInt(request.getParameter("id"));
		Instrutor inst = new InstrutorDao().get(instrutorid);
		request.setAttribute("instrutor", inst);
		request.getRequestDispatcher("editinstrutor.jsp").forward(request, response);
		//response.sendRedirect("editinstrutor.jsp?id=" + instrutorid);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// novoinstrutor.jsp
		if (request.getParameter("id") == null) {

			Endereco end1 = new Endereco("Rua 123", "Alfenas");

			Instrutor inst = new Instrutor();
			inst.setNome(request.getParameter("nome"));
			inst.setFormacao(Formacao.valueOf(request.getParameter("formacao")));
			inst.setEmail(request.getParameter("email"));
			inst.setSalario(Double.parseDouble(request.getParameter("salario")));
			inst.setEndereco(end1);

			InstrutorDao daoinst = new InstrutorDao();
			daoinst.save(inst);
		} else {
			// editinstrutor.jsp
			int id = Integer.parseInt(request.getParameter("id"));
			Instrutor inst = new InstrutorDao().get(id);
			inst.setEmail(request.getParameter("email"));
			inst.setFormacao(Formacao.valueOf(request.getParameter("formacao")));
			inst.setNome(request.getParameter("nome"));
			inst.setSalario(Double.parseDouble(request.getParameter("salario")));
			new InstrutorDao().update(inst);
		}
		response.sendRedirect("coninstrutor.jsp");

	}

}
