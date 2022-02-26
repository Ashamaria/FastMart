<%-- 
    Document   : GrocerySubCategory
    Created on : May 5, 2021, 2:10:22 PM
    Author     : Pro-TECH
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GrocerySubCategory</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>

    <%        String id = "", name = "", dis = "";

        if (request.getParameter("edit") != null) {

            id = request.getParameter("edit");
            name = request.getParameter("name");
            dis = request.getParameter("id");

        }

        if (request.getParameter("btn_save") != null) {

            if (request.getParameter("hid").equals("")) {
                String insQry = "insert into tbl_grocerysubcategory(grcryctgry_id,grcrysubctgry_nme)values('" + request.getParameter("sel_cat") + "','" + request.getParameter("txt_scat") + "')";
                con.executeCommand(insQry);
                response.sendRedirect("GrocerySubCategory.jsp");
            } else {
                String upQry = "update tbl_grocerysubcategory set grcryctgry_id='" + request.getParameter("sel_cat") + "',grcrysubctgry_nme='" + request.getParameter("txt_scat") + "' where grcrysubctgry_id='" + request.getParameter("hid") + "'";
                con.executeCommand(upQry);
                response.sendRedirect("GrocerySubCategory.jsp");
            }
        }

        if (request.getParameter("del") != null) {
            String delQry = "delete from tbl_grocerysubcategory where grcrysubctgry_id='" + request.getParameter("del") + "'";
            con.executeCommand(delQry);
            response.sendRedirect("GrocerySubCategory.jsp");
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
                                                    <h3 class="mb-0" >Table Grocery Sub Category</h3>
                                                </div>
                                            </div>
                                            <form>
                                                <div class="form-group">
                                                    <label for="sel_cat">Select Grocery Category</label>
                                                    <select required="" class="form-control" name="sel_cat" id="sel_cat">
                                                        <option value="" >Select</option>
                                                        <%                                                            String disQry = "select * from tbl_grocerycategory";
                                                            ResultSet rs1 = con.selectCommand(disQry);
                                                            while (rs1.next()) {
                                                        %>
                                                        <option value="<%=rs1.getString("grcryctgry_id")%>" <%if (dis.equals(rs1.getString("grcryctgry_id"))) {
                                                                out.println("selected");
                                                            }%>><%=rs1.getString("grcryctgry_nme")%></option>
                                                        <%
                                                            }

                                                        %>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_scat">Grocery Sub Category Name</label>
                                                    <input required="" type="text" class="form-control" value="<%=name%>" id="txt_scat" name="txt_scat">
                                                    <input type="hidden" name="hid" value="<%=id%>">
                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" name="btn_save" style="width:100px; border-radius: 10px 5px " value="Save">
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
                                                <td align="center" scope="col">Grocery Category</td>
                                                <td align="center" scope="col">GrocerySubCategory</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int i = 0;
                                                String selQry = "select * from tbl_grocerysubcategory p inner join tbl_grocerycategory d on d.grcryctgry_id=p.grcryctgry_id";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {

                                                    i++;

                                            %>
                                            <tr>    
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("grcryctgry_nme")%></td>
                                                <td align="center"><%=rs.getString("grcrysubctgry_nme")%></td>
                                                <td align="center"> 
                                                    <a href="GrocerySubCategory.jsp?del=<%=rs.getString("grcrysubctgry_id")%>" class="status_btn">Delete</a> &nbsp;&nbsp;&nbsp;&nbsp; 
                                                    <a class="status_btn" href="GrocerySubCategory.jsp?edit=<%=rs.getString("grcrysubctgry_id")%>&name=<%=rs.getString("grcrysubctgry_nme")%>&id=<%=rs.getString("grcryctgry_id")%>">Edit</a>
                                                </td> 
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
