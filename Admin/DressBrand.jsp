<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress Brand</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>

    <%        String id = "", name = "";

        if (request.getParameter("edit") != null) {

            id = request.getParameter("edit");
            name = request.getParameter("name");

        }

        if (request.getParameter("btn_save") != null) {

            if (request.getParameter("hid").equals("")) {
                String insQry = "insert into tbl_dressbrand(drsbrnd_nme)values('" + request.getParameter("txt_drsbrnd") + "')";
                con.executeCommand(insQry);
                response.sendRedirect("DressBrand.jsp");
            } else {
                String upQry = "update tbl_dressbrand set drsbrnd_nme='" + request.getParameter("txt_drsbrnd") + "' where drsbrnd_id='" + request.getParameter("hid") + "'";
                con.executeCommand(upQry);
                response.sendRedirect("DressBrand.jsp");
            }
        }

        if (request.getParameter("del") != null) {
            String delQry = "delete from tbl_dressbrand where drsbrnd_id='" + request.getParameter("del") + "'";
            con.executeCommand(delQry);
            response.sendRedirect("DressBrand.jsp");
        }


    %>
    <body>
        <section class="main_content dashboard_part">

            <!--/ menu  -->
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="QA_section">
                                <!--Form-->
                                <div class="white_box_tittle list_header">
                                    <div class="col-lg-12">
                                        <div class="white_box mb_30">
                                            <div class="box_header ">
                                                <div class="main-title">
                                                    <h3 class="mb-0" >Table Dress Brand</h3>
                                                </div>
                                            </div>
                                            <form>
                                                <div class="form-group">
                                                    <label for="txt_drsbrnd">Dress Brand Name</label>
                                                    <input required="" type="text" class="form-control" id="txt_drsbrnd" name="txt_drsbrnd" value="<%=name%>">
                                                    <input type="hidden" name="hid" value="<%=id%>">
                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" style="width:100px; border-radius: 10px 5px " name="btn_save" value="Save">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="QA_table mb_30">
                                    <!-- table-responsive -->
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Dress Brand</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                int i = 0;
                                                String selQry = "select * from tbl_dressbrand";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {

                                                    i++;

                                            %>
                                            <tr>
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("drsbrnd_nme")%></td>
                                                <td align="center"><a href="DressBrand.jsp?del=<%=rs.getString("drsbrnd_id")%>" class="status_btn">Delete</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="DressBrand.jsp?edit=<%=rs.getString("drsbrnd_id")%>&name=<%=rs.getString("drsbrnd_nme")%>" class="status_btn">Edit</a></td>
                                            </tr>
                                            <%                      }


                                            %>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </body>
    <%@include file="Foot.jsp" %>
</html>
