/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.60
 * Generated at: 2022-09-20 04:49:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class movies_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/D:/gyujin/project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/gmovie/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/D:/gyujin/project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/gmovie/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1659671595531L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>영화전체보기</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/normalize.css\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css\">\r\n");
      out.write("    <script src=\"//code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <style>\r\n");
      out.write("        .content {\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            margin: auto;\r\n");
      out.write("            background-color: #111;\r\n");
      out.write("        }\r\n");
      out.write("        .section {\r\n");
      out.write("        width: 100%;\r\n");
      out.write("        height: 50px;\r\n");
      out.write("        margin: auto;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        border-top: 2px solid black;\r\n");
      out.write("        border-bottom: 2px solid black;\r\n");
      out.write("        background-color: #FFB500;\r\n");
      out.write("      }\r\n");
      out.write("      .section .logo span {\r\n");
      out.write("        float: left;\r\n");
      out.write("        clear: both;\r\n");
      out.write("        padding-top: 4px;\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("        font-size: 25px;\r\n");
      out.write("      }\r\n");
      out.write("      .tab_list li{\r\n");
      out.write("        display: inline-block;\r\n");
      out.write("        margin: 10px 30px 10px 0;\r\n");
      out.write("        padding\r\n");
      out.write("      }\r\n");
      out.write("      .tab_list li a {\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("        font-size: large;\r\n");
      out.write("      }\r\n");
      out.write("      .movies {\r\n");
      out.write("        width: 1440px;\r\n");
      out.write("        margin: auto;\r\n");
      out.write("        margin-top: 100px;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list {\r\n");
      out.write("        display: inline-block;\r\n");
      out.write("        width: 340px;\r\n");
      out.write("        height: 750px;\r\n");
      out.write("        border: 1px solid rgba(0, 0, 0, .8);\r\n");
      out.write("        background-color: #121212;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        margin: 48px 8px;\r\n");
      out.write("        padding-top: 8px;\r\n");
      out.write("        box-shadow: rgb(204, 219, 232) 3px 3px 6px 0px inset, rgba(255, 255, 255, 0.5) -3px -3px 6px 1px inset;\r\n");
      out.write("        position: relative;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list:last-child(4n) {\r\n");
      out.write("        margin-left: 0;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list strong {\r\n");
      out.write("        position: absolute;\r\n");
      out.write("        left: 10%;\r\n");
      out.write("        top: 5%;\r\n");
      out.write("        font-size: 35px;\r\n");
      out.write("        font-style: italic;\r\n");
      out.write("        color: #fff;\r\n");
      out.write("        text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.9);\r\n");
      out.write("        z-index: 999;\r\n");
      out.write("        \r\n");
      out.write("      }\r\n");
      out.write("      .movies .list img {\r\n");
      out.write("        width: 320px;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list .tit {\r\n");
      out.write("        text-align: left;\r\n");
      out.write("        padding: 20px 0 0 20px;\r\n");
      out.write("        color: #adafae;\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list .tit h3 {\r\n");
      out.write("        font-size: 25px;\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list .tit p {\r\n");
      out.write("        margin-top: 25px;\r\n");
      out.write("        font-size: 20px;\r\n");
      out.write("      }\r\n");
      out.write("      .movies .list button {\r\n");
      out.write("        width: 100px;\r\n");
      out.write("        height: 50px;\r\n");
      out.write("        border: none;\r\n");
      out.write("        border-radius: 7px;\r\n");
      out.write("        margin: 30px 0;\r\n");
      out.write("        background-color: rgba(0, 0, 0, .5);\r\n");
      out.write("        color: #adafae;\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("      }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body> \r\n");
      out.write("   <div class=\"content\">\r\n");
      out.write("        <nav class=\"section\">\r\n");
      out.write("            <div class=\"logo\">\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/\">\r\n");
      out.write("                    <span>GMOVIE</span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <ul class=\"tab_list\">\r\n");
      out.write("                <li><a href=\"#\">인기영화</a></li>\r\n");
      out.write("                <li><a href=\"#\">현재 상영작</a></li>\r\n");
      out.write("                <li><a href=\"#\">상영 예정작</a></li>\r\n");
      out.write("                <li><a href=\"#\">찜한 영화</a></li>\r\n");
      out.write("                <li><a href=\"#\">최근본영화</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div class=\"movies\">\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>1</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/topgun.jpg\" alt=\"\">\r\n");
      out.write("                 </a>\r\n");
      out.write("                <div class=\"tit\">\r\n");
      out.write("                    <h3>탑건:매버릭</h3>\r\n");
      out.write("                    <p>평점:9.6/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-06-22</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div> \r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>2</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/Cbbh2AGtwN1cPDcXIb2TkcF2lgwWBUtl_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                <div class=\"tit\">\r\n");
      out.write("                    <h3>한산:용의출현</h3>\r\n");
      out.write("                    <p>평점:8.5/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-07-27</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>3</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/8rQ7apqkUoMo3JE2D5XY3DgAcd4PovW1_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                <div class=\"tit\">\r\n");
      out.write("                    <h3>명탐정 코난:할로윈의 신부</h3>\r\n");
      out.write("                    <p>평점:9.0/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-07-13</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>4</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/djm7aYuL9bQGZRsxyUH75wATz9ub9ouk_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>극장판 주술회전 0</h3>\r\n");
      out.write("                    <p>평점:8.9/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-02-17</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>5</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/antH4SXCfejWo6FdMXRTUVp4ssxSINaj_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>[2022 시네도슨트] 브리티쉬 뮤지엄&내셔널 갤러리</h3>\r\n");
      out.write("                    <p>평점:9.3/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-07-13</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>6</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/fpItHJAg7IOzxtez042463Gk0rPRkIiQ_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>[2022 클래식페스티벌] 브레겐츠 페스티벌-나비부인</h3>\r\n");
      out.write("                    <p>평점:0/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-07-31</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>7</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/O3mxQblVEa4nbd8uq46Ovc8YGj6gik2g_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>로스트 도터</h3>\r\n");
      out.write("                    <p>평점:7.7/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-07-14</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>8</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/oZfETtpEvKGpdY2JQo2Z6wFL0S4cpKy5_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>범죄도시2</h3>\r\n");
      out.write("                    <p>평점:9/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-05-18</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>9</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/k9yRSehUQSb98QZKnz7MJ5riaOJ8NTHE_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>외계+인 1부</h3>\r\n");
      out.write("                    <p>평점:6.8/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-07-20</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>10</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/J4AfSbvwKUciwVWrxyln4Z7K1hMMfZv7_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>프리! 더 파이널 스트로크 후편</h3>\r\n");
      out.write("                    <p>평점:9/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-06-30</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"list\">\r\n");
      out.write("                <strong>11</strong>\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/movie/details.do\">\r\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path1 }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/movieImgs/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_420.jpg\" alt=\"\">\r\n");
      out.write("                </a>\r\n");
      out.write("                    <div class=\"tit\">\r\n");
      out.write("                    <h3>토르:러브 앤 썬더</h3>\r\n");
      out.write("                    <p>평점:9/10</p>\r\n");
      out.write("                    <p>개봉일자:2022-06-30</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">찜하기</button></a>\r\n");
      out.write("                <a href=\"#\"><button type=\"button\">예매하기</button></a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("       \r\n");
      out.write("   </div>\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f0_reused = false;
    try {
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /WEB-INF/views/movie/movies.jsp(5,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("path1");
      // /WEB-INF/views/movie/movies.jsp(5,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/movie/movies.jsp(5,0) '${pageContext.request.contextPath }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      _jspx_th_c_005fset_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
    }
    return false;
  }
}
