<option value="">---Select---</option>
<%
    String cat = request.getParameter("cat");
    if (cat.equals("Cooker")) {
%>
<option value="1L">1L</option>
<option value="2L">2L</option>
<option value="3L">3L</option>
<option value="4L">4L</option>
<option value="5L">5L</option>
<%
    }
    else if (cat.equals("Spoon")) {
%>
<option value="1 Tablespoon">1 Tablespoon</option>
<option value="2 Tablespoon">2 Tablespoon</option>
<option value="1/8 Teaspoon">1/2 Teaspoon</option>
<option value="1/4 Teaspoon">1/4 Teaspoon</option>
<option value="1/2 Teaspoon">1/2 Teaspoon</option>
<option value="1 Teaspoon">1 Teaspoon</option>
<option value="2 Teaspoon">2 Teaspoon</option>
<%
    }
    else if (cat.equals("Knife")) {
%>
<option value="6 inches">6 inches</option>
<option value="8 inches">8 inches</option>
<option value="10 inches">10 inches</option>
<option value="12 inches">12 inches</option>
<option value="14 inches">14 inches</option>
<%
    }else if (cat.equals("Whisk")) {
%>
<option value="8 inches">8 inches</option>
<option value="10 inches">10 inches</option>
<option value="12 inches">12 inches</option>
<%
    }
else if (cat.equals("Frying Pan")) {
%>
<option value="16 cm">16 cm</option>
<option value="20 cm">20 cm</option>
<option value="24 cm">24 cm</option>
<option value="28 cm">28 cm</option>
<option value="32 cm">32 cm</option>
<%
    }
else if (cat.equals("Sieve")) {
%>
<option value="37.5 mm">37.5 mm</option>
<option value="25.0 mm">25.0 mm</option>
<option value="19.0 mm">19.0 mm</option>
<option value="12.5 mm">12.5 mm</option>
<option value="9.5 mm">9.5 mm</option>
<option value="4.75 mm">4.75 mm</option>
<option value="2.36 mm">2.36 mm</option>
<option value="1.18 mm">1.18 mm</option>
<option value="0.600 mm">0.600 mm</option>
<option value="0.300 mm">0.300 mm</option>
<option value="0.150 mm">0.150 mm</option>
<option value="0.075 mm">0.075 mm</option>
<%
    }
else if (cat.equals("Plate")) {
%>
<option value="4 mm">4 mm</option>
<option value="5 mm">5 mm</option>
<option value="6 mm">6 mm</option>
<option value="8 mm">8 mm</option>
<option value="10 mm">10 mm</option>
<option value="12 mm">12 mm</option>
<option value="16 mm">16 mm</option>
<option value="20 mm">20 mm</option>
<option value="25 mm">25 mm</option>
<%
    }
else if (cat.equals("Kettle")) {
%>
<option value="1.3 L">1.3 L</option>
<option value="1.4 L">1.4 L</option>
<option value="1.5 L">1.5 L</option>
<option value="1.6 L">1.6 L</option>
<option value="1.7 L">1.7 L</option>
<%
    }
else if (cat.equals("Glass")) {
%>
<option value="8.1 oz">8.1 oz</option>
<option value="9.3 oz">9.3 oz</option>
<option value="11.1 oz">11.1 oz</option>
<option value="5.1 oz">5.1 oz</option>
<option value="9.5 oz">9.5 oz</option>
<option value="1.4 oz">1.4 oz</option>
<%
    }
else if (cat.equals("Cup")) {
%>
<option value="237 ml">237 ml</option>
<option value="177 ml">177 ml</option>
<option value="158 ml">158 ml</option>
<option value="118 ml">118 ml</option>
<option value="79 ml">79 ml</option>
<option value="59 ml">59 ml</option>
<option value="40 ml">40 ml</option>
<option value="30 ml">30 ml</option>
<option value="15 ml">15 ml</option>
<%
    }
else if (cat.equals("Saucepan")) {
%>
<option value="1 quart">1 quart</option>
<option value="2 quart">2 quart</option>
<option value="3 quart">3 quart</option>
<option value="4 quart">3 quart</option>
<%
    }
else if (cat.equals("Vessel")) {
%>
<option value="5 quart medium">5 quart medium</option>
<option value="6 quart medium">6 quart medium</option>
<option value="12 quart deep">12 quart deep</option>
<option value="17 quart deep">17 quart deep</option>
<option value="19 quart deep">19 quart deep</option>
<option value="23 quart deep">23 quart deep</option>
<option value="33 quart deep">33 quart deep</option>
<option value="47 quart deep">47 quart deep</option>
<option value="66 quart deep">66 quart deep</option>
<%
    }
else if (cat.equals("Container")) {
%>
<option value="350 ml">350 ml</option>
<option value="370 ml">370 ml</option>
<option value="500 ml">500 ml</option>
<option value="640 ml">640 ml</option>
<option value="800 ml">800 ml</option>
<option value="1050 ml">1050 ml</option>
<option value="1200 ml">1200 ml</option>
<option value="1520 ml">1520 ml</option>
<%
    }
%>
