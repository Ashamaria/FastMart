<option value="">---Select---</option>
<%
    String size = request.getParameter("cat ");
    if (size.equals("Cooker")) {
%>

<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1L" id="size" type="checkbox" class="form-check-input product_check">1L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="2L" id="size" type="checkbox" class="form-check-input product_check">2L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="3L" id="size" type="checkbox" class="form-check-input product_check">3L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="4L" id="size" type="checkbox" class="form-check-input product_check">4L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="5L" id="size" type="checkbox" class="form-check-input product_check">5L
        </label>
    </div>
</li>
<option value="1L">1L</option>
<option value="2L">2L</option>
<option value="3L">3L</option>
<option value="4L">4L</option>
<option value="5L">5L</option>
<%
} else if (size.equals("Spoon")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1 Tablespoon" id="size" type="checkbox" class="form-check-input product_check">1 Tablespoon
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="2 Tablespoon" id="size" type="checkbox" class="form-check-input product_check">2 Tablespoon
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1/8 Teaspoon" id="size" type="checkbox" class="form-check-input product_check">1/8 Teaspoon
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1/4 Teaspoon" id="size" type="checkbox" class="form-check-input product_check">1/4 Teaspoon
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1/2 Teaspoon" id="size" type="checkbox" class="form-check-input product_check">1/2 Teaspoon
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1 Teaspoon" id="size" type="checkbox" class="form-check-input product_check">1 Teaspoon
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="2 Teaspoon" id="size" type="checkbox" class="form-check-input product_check">2 Teaspoon
        </label>
    </div>
</li>
<option value="1 Tablespoon">1 Tablespoon</option>
<option value="2 Tablespoon">2 Tablespoon</option>
<option value="1/8 Teaspoon">1/2 Teaspoon</option>
<option value="1/4 Teaspoon">1/4 Teaspoon</option>
<option value="1/2 Teaspoon">1/2 Teaspoon</option>
<option value="1 Teaspoon">1 Teaspoon</option>
<option value="2 Teaspoon">2 Teaspoon</option>
<%
} else if (size.equals("Knife")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="6 inches" id="size" type="checkbox" class="form-check-input product_check">6 inches
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="8 inches" id="size" type="checkbox" class="form-check-input product_check">8 inches
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="10 inches" id="size" type="checkbox" class="form-check-input product_check">10 inches
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="12 inches" id="size" type="checkbox" class="form-check-input product_check">12 inches
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="14 inches" id="size" type="checkbox" class="form-check-input product_check">14 inches
        </label>
    </div>
</li>

<option value="6 inches">6 inches</option>
<option value="8 inches">8 inches</option>
<option value="10 inches">10 inches</option>
<option value="12 inches">12 inches</option>
<option value="14 inches">14 inches</option>
<%
    
} else if (size.equals("Whisk")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="8 inches" id="size" type="checkbox" class="form-check-input product_check">8 inches
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="10 inches" id="size" type="checkbox" class="form-check-input product_check">10 inches
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="12 inches" id="size" type="checkbox" class="form-check-input product_check">12 inches
        </label>
    </div>
</li>
<option value="8 inches">8 inches</option>
<option value="10 inches">10 inches</option>
<option value="12 inches">12 inches</option>
<%
    
} else if (size.equals("Frying Pan")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="16 cm" id="size" type="checkbox" class="form-check-input product_check">16 cm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="20 cm" id="size" type="checkbox" class="form-check-input product_check">20 cm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="24 cm" id="size" type="checkbox" class="form-check-input product_check">24 cm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="28 cm" id="size" type="checkbox" class="form-check-input product_check">28 cm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="32 cm" id="size" type="checkbox" class="form-check-input product_check">32 cm
        </label>
    </div>
</li>
<option value="16 cm">16 cm</option>
<option value="20 cm">20 cm</option>
<option value="24 cm">24 cm</option>
<option value="28 cm">28 cm</option>
<option value="32 cm">32 cm</option>
<%
    
} else if (size.equals("Sieve")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="37.5 mm" id="size" type="checkbox" class="form-check-input product_check">37.5 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="25.0 mm" id="size" type="checkbox" class="form-check-input product_check">25.0 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="19.0 mm" id="size" type="checkbox" class="form-check-input product_check">19.0 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="12.5 mm" id="size" type="checkbox" class="form-check-input product_check">12.5 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="9.5 mm" id="size" type="checkbox" class="form-check-input product_check">9.5 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="4.75 mm" id="size" type="checkbox" class="form-check-input product_check">4.75 mm
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="2.36 mm" id="size" type="checkbox" class="form-check-input product_check">2.36 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.18 mm" id="size" type="checkbox" class="form-check-input product_check">1.18 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="0.600 mm" id="size" type="checkbox" class="form-check-input product_check">0.600 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="0.300 mm" id="size" type="checkbox" class="form-check-input product_check">0.300 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="0.150 mm" id="size" type="checkbox" class="form-check-input product_check">0.150 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="0.075 mm" id="size" type="checkbox" class="form-check-input product_check">0.075 mm
    </div>
</li>
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
    
} else if (size.equals("Plate")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="4 mm" id="size" type="checkbox" class="form-check-input product_check">4 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="5 mm" id="size" type="checkbox" class="form-check-input product_check">5 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="6 mm" id="size" type="checkbox" class="form-check-input product_check">6 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="8 mm" id="size" type="checkbox" class="form-check-input product_check">8 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="10 mm" id="size" type="checkbox" class="form-check-input product_check">10 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="12 mm" id="size" type="checkbox" class="form-check-input product_check">12 mm
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="16 mm" id="size" type="checkbox" class="form-check-input product_check">16 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="20 mm" id="size" type="checkbox" class="form-check-input product_check">20 mm
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="25 mm" id="size" type="checkbox" class="form-check-input product_check">25 mm
        </label>
    </div>
</li>

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
} else if (size.equals("Kettle")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.3 L" id="size" type="checkbox" class="form-check-input product_check">1.3 L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.4 L" id="size" type="checkbox" class="form-check-input product_check">1.4 L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.5 L" id="size" type="checkbox" class="form-check-input product_check">1.5 L
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.6 L" id="size" type="checkbox" class="form-check-input product_check">1.6 L
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.7 L" id="size" type="checkbox" class="form-check-input product_check">1.7 L
        </label>
    </div>
</li>


<option value="1.3 L">1.3 L</option>
<option value="1.4 L">1.4 L</option>
<option value="1.5 L">1.5 L</option>
<option value="1.6 L">1.6 L</option>
<option value="1.7 L">1.7 L</option>
<%
} else if (size.equals("Glass")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="8.1 oz" id="size" type="checkbox" class="form-check-input product_check">8.1 oz
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="9.3 oz" id="size" type="checkbox" class="form-check-input product_check">9.3 oz
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="11.1 oz" id="size" type="checkbox" class="form-check-input product_check">11.1 oz
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="5.1 oz" id="size" type="checkbox" class="form-check-input product_check">5.1 oz
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="9.5 oz" id="size" type="checkbox" class="form-check-input product_check">9.5 oz
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1.4 oz" id="size" type="checkbox" class="form-check-input product_check">1.4 oz
        </label>
    </div>
</li>
<option value="8.1 oz">8.1 oz</option>
<option value="9.3 oz">9.3 oz</option>
<option value="11.1 oz">11.1 oz</option>
<option value="5.1 oz">5.1 oz</option>
<option value="9.5 oz">9.5 oz</option>
<option value="1.4 oz">1.4 oz</option>
<%
} else if (size.equals("Cup")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="237 ml" id="size" type="checkbox" class="form-check-input product_check">237 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="177 ml" id="size" type="checkbox" class="form-check-input product_check">177 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="158 ml" id="size" type="checkbox" class="form-check-input product_check">158 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="118 ml" id="size" type="checkbox" class="form-check-input product_check">118 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="79 ml" id="size" type="checkbox" class="form-check-input product_check">79 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="59 ml" id="size" type="checkbox" class="form-check-input product_check">59 ml
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="40 ml" id="size" type="checkbox" class="form-check-input product_check">40 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="30 ml" id="size" type="checkbox" class="form-check-input product_check">30 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="15 ml" id="size" type="checkbox" class="form-check-input product_check">15 ml
        </label>
    </div>
</li>

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
} else if (size.equals("Saucepan")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1 quart" id="size" type="checkbox" class="form-check-input product_check">1 quart
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="2 quart" id="size" type="checkbox" class="form-check-input product_check">2 quart
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="3 quart" id="size" type="checkbox" class="form-check-input product_check">3 quart
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="4 quart" id="size" type="checkbox" class="form-check-input product_check">4 quart
        </label>
    </div>
</li>
<option value="1 quart">1 quart</option>
<option value="2 quart">2 quart</option>
<option value="3 quart">3 quart</option>
<option value="4 quart">4 quart</option>
<%
    }
else if (size.equals("Vessel")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="5 quart medium" id="size" type="checkbox" class="form-check-input product_check">5 quart medium
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="6 quart medium" id="size" type="checkbox" class="form-check-input product_check">6 quart medium
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="12 quart deep" id="size" type="checkbox" class="form-check-input product_check">12 quart deep
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="17 quart deep" id="size" type="checkbox" class="form-check-input product_check">17 quart deep
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="19 quart deep" id="size" type="checkbox" class="form-check-input product_check">19 quart deep
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="23 quart deep" id="size" type="checkbox" class="form-check-input product_check">23 quart deep
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="33 quart deep" id="size" type="checkbox" class="form-check-input product_check">33 quart deep
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="47 quart deep" id="size" type="checkbox" class="form-check-input product_check">47 quart deep
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="66 quart deep" id="size" type="checkbox" class="form-check-input product_check">66 quart deep
        </label>
    </div>
</li>
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
else if (size.equals("Container")) {
%>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="350 ml" id="size" type="checkbox" class="form-check-input product_check">350 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="370 ml" id="size" type="checkbox" class="form-check-input product_check">370 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="500 ml" id="size" type="checkbox" class="form-check-input product_check">500 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="640 ml" id="size" type="checkbox" class="form-check-input product_check">640 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="800 ml" id="size" type="checkbox" class="form-check-input product_check">800 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1050 ml" id="size" type="checkbox" class="form-check-input product_check">1050 ml
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1200 ml" id="size" type="checkbox" class="form-check-input product_check">1200 ml
        </label>
    </div>
</li>
<li class="list-group-item" >
    <div class="form-check">
        <label class="form-check-label">
            <input value="1520 ml" id="size" type="checkbox" class="form-check-input product_check">1520 ml
        </label>
    </div>
</li>


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
