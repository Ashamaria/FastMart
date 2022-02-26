<%-- 
    Document   : Gadget
    Created on : 18 Sep, 2021, 9:25:20 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gadget</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/GadgetUploadAction.jsp">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Category:</td>
                    <td>
                        <select size="1" name="category" required="" onchange="appear(this.value)">
                            <option value="">---Select---</option>
                            <option value="Laptop">Laptop</option>
                            <option value="Mobile">Mobile</option>
                            <option value="Headset">Headset</option>
                            <option value="Camera">Camera</option>
                            <option value="Television">Television</option>
                            <option value="Pendrive">Pendrive</option>
                            <option value="iPad">iPad</option>
                            <option value="Bluetooth Speaker">Bluetooth Speaker</option>
                            <option value="Scanner">Scanner</option>
                            <option value="Printer">Printer</option>


                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Brand</td>
                    <td><select size="1" name="sel_brand" required="">
                            <option value="">---Select---</option>
                            <%
                                String sel = "select * from tbl_gadgetbrand";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getString("gdbrnd_id")%>"><%=rs.getString("gdbrnd_nme")%></option>

                            <%
                                }

                            %>
                        </select></td>
                </tr>
                <tr id="gadget-ram" style="display: none">
                    <td>RAM</td>
                    <td><input type="text" name="txt_ram" id="txt_ram"  ></td>
                </tr>
                <tr id="gadget-mmem" style="display: none">
                    <td>Storage</td>
                    <td>
                        <select size="1" name="gadgetmemory" >
                            <option value="">---Select---</option>                              
                            <option value="HDD">HDD</option>
                            <option value="SSD">SSD</option>                             

                        </select>
                    </td>
                </tr>
                <tr id="gadget-ssd" style="display: none">
                    <td>Capacity</td>
                    <td>
                        <select size="1" name="gadgetssd" >
                            <option value="">---Select---</option>
                            <option value="128GB">128GB</option>
                            <option value="256GB">256GB</option>
                            <option value="512GB">512GB</option>
                            <option value="1TB">1TB</option>
                            <option value="2TB">2TB</option>

                        </select>
                    </td>
                </tr>
                <tr id="gadget-fcam" style="display: none">
                    <td>Front Cam</td>
                    <td>
                        <select size="1" name="gadgetfrontcam">
                            <option value="">---Select---</option>
                            <option value="3.9MP">3.9MP</option>
                            <option value="4MP">4MP</option>
                            <option value="4.5MP">4.5MP</option>
                            <option value="5MP">5MP</option>
                            <option value="5.5MP">5.5MP</option>
                            <option value="6MP">6MP</option>
                            <option value="6.5MP">6.5MP</option>
                            <option value="7MP">7MP</option>
                            <option value="7.5MP">7.5MP</option>
                            <option value="8MP">8MP</option>
                            <option value="8.5MP">8.5MP</option>
                             <option value="9MP">9MP</option>
                            <option value="9.5MP">9.5MP</option>
                            <option value="10MP">10MP</option>
                            <option value="10.5MP">10.5MP</option>
                            <option value="11MP">11MP</option>
                            <option value="11.5MP">11.5MP</option>
                            <option value="12MP">12MP</option>
                            <option value="12.5MP">12.5MP</option>
                            <option value="15MP">15MP</option>
                            <option value="15.5MP">15.5MP</option>
                            <option value="30MP">30MP</option>

                        </select>
                    </td>
                </tr>
                <tr id="gadget-mcam" style="display: none">
                    <td>Main Cam</td>
                    <td>
                        <select size="1" name="gadgetmaincam">
                            <option value="">---Select---</option>
                            <option value="3.9MP">3.9MP</option>
                            <option value="4MP">4MP</option>
                            <option value="4.5MP">4.5MP</option>
                            <option value="5MP">5MP</option>
                            <option value="5.5MP">5.5MP</option>
                            <option value="6MP">6MP</option>
                            <option value="6.5MP">6.5MP</option>
                            <option value="7MP">7MP</option>
                            <option value="7.5MP">7.5MP</option>
                            <option value="8MP">8MP</option>
                            <option value="8.5MP">8.5MP</option>
                            <option value="9MP">9MP</option>
                            <option value="9.5MP">9.5MP</option>
                            <option value="10MP">10MP</option>
                            <option value="10.5MP">10.5MP</option>
                            <option value="11MP">11MP</option>
                            <option value="11.5MP">11.5MP</option>
                            <option value="12MP">12MP</option>
                            <option value="12.5MP">12.5MP</option>
                            <option value="15MP">15MP</option>
                            <option value="15.5MP">15.5MP</option>
                            <option value="30MP">30MP</option>
                            <option value="1280*720PX">1280*720PX</option>
                            <option value="1920*1080PX">1920*1080PX</option>
                            <option value="3840*2160PX">3840*2160PX</option>


                        </select>
                    </td>
                </tr>

                <tr>
                    <td>OtherFeatures</td>
                    <td><input type="file" name="txt_otherfeatures" required=""></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" name="txt_price" id="txt_price" required=""></td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="txt_image" required=""></td>
                </tr>
                <tr>
                    <td>Return</td>
                    <td><input type="number" name="txt_return" id="txt_return" required=""> (in Days)</td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                </tr>
            </table>
        </form>
        <script>
            function appear(category)
            {
                if (category == "Laptop")
                {
                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = '';
                    document.getElementById("gadget-mmem").style.display = '';
                    document.getElementById("gadget-ram").style.display = '';
                }
                else if (category == "Mobile")

                {
                    document.getElementById("gadget-fcam").style.display = '';
                    document.getElementById("gadget-mcam").style.display = '';
                    document.getElementById("gadget-ssd").style.display = '';
                    document.getElementById("gadget-mmem").style.display = '';
                    document.getElementById("gadget-ram").style.display = '';
                }
                else if (category == "Headset")
                {
                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = 'none';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }
                else if (category == "Camera")
                {

                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = '';
                    document.getElementById("gadget-ssd").style.display = 'none';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }
                else if (category == "Television")
                {

                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = 'none';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }
                else if (category == "Pendrive")
                {


                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = '';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }
                else if (category == "iPad")
                {
                    document.getElementById("gadget-fcam").style.display = '';
                    document.getElementById("gadget-mcam").style.display = '';
                    document.getElementById("gadget-ssd").style.display = '';
                    document.getElementById("gadget-mmem").style.display = '';
                    document.getElementById("gadget-ram").style.display = '';

                }
                else if (category == "Bluetooth Speaker")
                {
                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = 'none';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }
                else if (category == "Scanner")
                {
                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = 'none';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }
                else if (category == "Printer")
                {
                    document.getElementById("gadget-fcam").style.display = 'none';
                    document.getElementById("gadget-mcam").style.display = 'none';
                    document.getElementById("gadget-ssd").style.display = 'none';
                    document.getElementById("gadget-mmem").style.display = 'none';
                    document.getElementById("gadget-ram").style.display = 'none';

                }

            }
        </script>
    </body>
</html>
