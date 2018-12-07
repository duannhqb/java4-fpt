package org.apache.jsp.Common;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class category_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <!------ Include the above in your HEAD tag ---------->\n");
      out.write("\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"jumbotron text-center\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h1 class=\"jumbotron-heading\">E-COMMERCE CATEGORY</h1>\n");
      out.write("                <p class=\"lead text-muted mb-0\">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte...</p>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                    <nav aria-label=\"breadcrumb\">\n");
      out.write("                        <ol class=\"breadcrumb\">\n");
      out.write("                            <li class=\"breadcrumb-item\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                            <li class=\"breadcrumb-item\"><a href=\"category.html\">Category</a></li>\n");
      out.write("                            <li class=\"breadcrumb-item active\" aria-current=\"page\">Sub-category</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12 col-sm-3\">\n");
      out.write("                    <div class=\"card bg-light mb-3\">\n");
      out.write("                        <div class=\"card-header bg-primary text-white text-uppercase\"><i class=\"fa fa-list\"></i> Categories</div>\n");
      out.write("                        <ul class=\"list-group category_block\">\n");
      out.write("                            <li class=\"list-group-item\"><a href=\"category.html\">Cras justo odio</a></li>\n");
      out.write("                            <li class=\"list-group-item\"><a href=\"category.html\">Dapibus ac facilisis in</a></li>\n");
      out.write("                            <li class=\"list-group-item\"><a href=\"category.html\">Morbi leo risus</a></li>\n");
      out.write("                            <li class=\"list-group-item\"><a href=\"category.html\">Porta ac consectetur ac</a></li>\n");
      out.write("                            <li class=\"list-group-item\"><a href=\"category.html\">Vestibulum at eros</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card bg-light mb-3\">\n");
      out.write("                        <div class=\"card-header bg-success text-white text-uppercase\">Last product</div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"https://dummyimage.com/600x400/55595c/fff\" />\n");
      out.write("                            <h5 class=\"card-title\">Product title</h5>\n");
      out.write("                            <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                            <p class=\"bloc_left_price\">99.00 $</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <img class=\"card-img-top\" src=\"https://dummyimage.com/600x400/55595c/fff\" alt=\"Card image cap\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\"><a href=\"product.html\" title=\"View Product\">Product title</a></h4>\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <p class=\"btn btn-danger btn-block\">99.00 $</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-success btn-block\">Add to cart</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <img class=\"card-img-top\" src=\"https://dummyimage.com/600x400/55595c/fff\" alt=\"Card image cap\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\"><a href=\"product.html\" title=\"View Product\">Product title</a></h4>\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <p class=\"btn btn-danger btn-block\">99.00 $</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-success btn-block\">Add to cart</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <img class=\"card-img-top\" src=\"https://dummyimage.com/600x400/55595c/fff\" alt=\"Card image cap\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\"><a href=\"product.html\" title=\"View Product\">Product title</a></h4>\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <p class=\"btn btn-danger btn-block\">99.00 $</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-success btn-block\">Add to cart</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <img class=\"card-img-top\" src=\"https://dummyimage.com/600x400/55595c/fff\" alt=\"Card image cap\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\"><a href=\"product.html\" title=\"View Product\">Product title</a></h4>\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <p class=\"btn btn-danger btn-block\">99.00 $</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-success btn-block\">Add to cart</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <img class=\"card-img-top\" src=\"https://dummyimage.com/600x400/55595c/fff\" alt=\"Card image cap\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\"><a href=\"product.html\" title=\"View Product\">Product title</a></h4>\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <p class=\"btn btn-danger btn-block\">99.00 $</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-success btn-block\">Add to cart</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <img class=\"card-img-top\" src=\"https://dummyimage.com/600x400/55595c/fff\" alt=\"Card image cap\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <h4 class=\"card-title\"><a href=\"product.html\" title=\"View Product\">Product title</a></h4>\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <p class=\"btn btn-danger btn-block\">99.00 $</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-success btn-block\">Add to cart</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <nav aria-label=\"...\">\n");
      out.write("                                <ul class=\"pagination\">\n");
      out.write("                                    <li class=\"page-item disabled\">\n");
      out.write("                                        <a class=\"page-link\" href=\"#\" tabindex=\"-1\">Previous</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\n");
      out.write("                                    <li class=\"page-item active\">\n");
      out.write("                                        <a class=\"page-link\" href=\"#\">2 <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\n");
      out.write("                                    <li class=\"page-item\">\n");
      out.write("                                        <a class=\"page-link\" href=\"#\">Next</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
