<%-- 
    Document   : Place
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
        <title>Place</title>
        <%@include file="SessionValidator.jsp" %>
        <%@include file="Head.jsp" %>
    </head>

    <%        String id = "", name = "", dis = "",pin ="";

        if (request.getParameter("edit") != null) {

            id = request.getParameter("edit");
            name = request.getParameter("name");
            dis = request.getParameter("id");
            pin = request.getParameter("pin");

        }

        if (request.getParameter("btn_save") != null) {

            if (request.getParameter("hid").equals("")) {
                String insQry = "insert into tbl_place(dist_id,plc_nme,plc_pin)values('" + request.getParameter("sel_district") + "','" + request.getParameter("txt_place") + "','" + request.getParameter("txt_pin") + "')";
                con.executeCommand(insQry);
                response.sendRedirect("Place.jsp");
            } else {
                String upQry = "update tbl_place set plc_pin='" + request.getParameter("txt_pin") + "',dist_id='" + request.getParameter("sel_district") + "',plc_nme='" + request.getParameter("txt_place") + "' where plc_id='" + request.getParameter("hid") + "'";
                con.executeCommand(upQry);
                response.sendRedirect("Place.jsp");
            }
        }

        if (request.getParameter("del") != null) {
            String delQry = "delete from tbl_place where plc_id='" + request.getParameter("del") + "'";
            con.executeCommand(delQry);
            response.sendRedirect("Place.jsp");
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
                                                    <h3 class="mb-0" >Table Place</h3>
                                                </div>
                                            </div>
                                            <form>
                                                <div class="form-group">
                                                    <label for="sel_district">Select District</label>
                                                    <select required="" class="form-control" name="sel_district" id="sel_district">
                                                        <option value="" >Select</option>
                                                        <%                                                            String disQry = "select * from tbl_district";
                                                            ResultSet rs1 = con.selectCommand(disQry);
                                                            while (rs1.next()) {
                                                        %>
                                                        <option value="<%=rs1.getString("dist_id")%>" <%if (dis.equals(rs1.getString("dist_id"))) {
                                                                out.println("selected");
                                                            }%>><%=rs1.getString("dist_nme")%></option>
                                                        <%
                                                            }

                                                        %>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_place">Place Name</label>
                                                    <input required="" type="text" class="form-control" value="<%=name%>" id="txt_place" name="txt_place">
                                                    <input type="hidden" name="hid" value="<%=id%>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="txt_place">Place Pin Code</label>
                                                    <input required="" type="number" class="form-control" value="<%=pin%>" id="txt_place" name="txt_pin">
                                                   
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
                                                <td align="center" scope="col">District</td>
                                                <td align="center" scope="col">Place</td>
                                                <td align="center" scope="col">Pin Code</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int i = 0;
                                                String selQry = "select * from tbl_place p inner join tbl_district d on d.dist_id=p.dist_id";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {

                                                    i++;

                                            %>
                                            <tr>    
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("dist_nme")%></td>
                                                <td align="center"><%=rs.getString("plc_nme")%></td>
                                                <td align="center"><%=rs.getString("plc_pin")%></td>
                                                <td align="center"> 
                                                    <a href="Place.jsp?del=<%=rs.getString("plc_id")%>" class="status_btn">Delete</a> &nbsp;&nbsp;&nbsp;&nbsp; 
                                                    <a class="status_btn" href="Place.jsp?edit=<%=rs.getString("plc_id")%>&name=<%=rs.getString("plc_nme")%>&pin=<%=rs.getString("plc_pin")%>&id=<%=rs.getString("dist_id")%>">Edit</a>
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
