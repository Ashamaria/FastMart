<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Size Guide 1</title>
  

</head>
<body>
<!-- partial:index.partial.html -->
<style><!--
/*
 CSS for the main interaction
*/
    .tabset>input[type="radio"] {
        position: absolute;
        left: -200vw;
    }
    
    .tabset .tab-panel {
        display: none;
    }
    
    .tabset>input:first-child:checked~.tab-panels>.tab-panel:first-child,
    .tabset>input:nth-child(3):checked~.tab-panels>.tab-panel:nth-child(2),
    .tabset>input:nth-child(5):checked~.tab-panels>.tab-panel:nth-child(3),
    .tabset>input:nth-child(7):checked~.tab-panels>.tab-panel:nth-child(4),
    .tabset>input:nth-child(9):checked~.tab-panels>.tab-panel:nth-child(5),
    .tabset>input:nth-child(11):checked~.tab-panels>.tab-panel:nth-child(6) {
        display: block;
    }
    
    /*
 Styling
*/
    
    .tabset>label {
        position: relative;
        display: inline-block;
        padding: 15px 15px 25px;
        border: 1px solid transparent;
        border-bottom: 0;
        cursor: pointer;
        font-weight: 500;
    }
    
    .tabset>label::after {
        content: "";
        position: absolute;
        left: 15px;
        bottom: 10px;
        width: 22px;
        height: 4px;
        background: #8d8d8d;
    }
    
    .tabset>label:hover,
    .tabset>input:focus+label {
        color: #222222;
    }
    
    .tabset>label:hover::after,
    .tabset>input:focus+label::after,
    .tabset>input:checked+label::after {
        background: #222222;
    }
    
    .tabset>input:checked+label {
        border-color: #ccc;
        border-bottom: 1px solid #fff;
        margin-bottom: -1px;
    }
    
    .tab-panel {
        padding: 30px 0;
        border-top: 1px solid #ccc;
    }
    
    /*
 Demo purposes only
*/
    *,
    *:before,
    *:after {
        box-sizing: border-box;
    }
    
    .tabset {
        max-width: 65em;
    }
    
    
    .first-column {
        width: 50%;
        padding: 20px;
        float: left;
    }
    
    .second-column {
        width: 50%;
        padding: 20px;
        float: right;
    }
    
    @media only screen and (max-width: 800px) {
        
        .first-column {
            width: 100%;
            padding-bottom: 10px;
            float: none;
        }
        
        .second-column {
            width: 100%;
            padding-bottom: 10px;
            float: none;
        }
        
    }
    
    
    .hr {
        border: 0;
        height: 1px;
        margin: 50px;
        background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
        background-image: -moz-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
        background-image: -ms-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
        background-image: -o-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
    }
--></style>
<div class="first-column">
<h2>Sizing &amp; Fit Guide</h2>
<p>Please be aware that most of our clothing is Juniors' sizing, which runs smaller than regular US / European Women sizing. Refer to the measurements chart for each individual product to determine the best size for you. Product specific size chart and information can be found in product description or in product picture gallery.</p>
<p>Our team does it's best to include accurate size details and measurement of each item in the product descriptions. If you have questions regarding sizing or any other information on a specific item, please email us at hello@kalles.com for specific details.</p>
</div>
<div class="second-column">
<h3>Find the best size</h3>
<p>When comparing your measurements to those listed on the site, make sure to check if the fabric is stretchy or not. If it is, it can stretch an inch or more.</p>
<ul>
<li><strong> Bust:</strong> Wrap the measuring tape loosely around the fullest part of your bust to ensure a comfortable fit.</li>
<li><strong>Waist:</strong> Measure the narrowest part of your natural waist, holding the measuring tape loose enough to fit comfortably.</li>
<li><strong>Hips:</strong> Drape the measuring tape around the widest part of your hips, resting the tape comfortably against your body.</li>
<li><strong>Length:</strong> For tops and dresses, measure from the top of your shoulder to the hem. For strapless dresses, measure from the highest part of the neckline to the hem. For pants and skirts, measure from the top of the waist to the hem.</li>
<li><strong>Sleeve:</strong> With your arm outstretched, measure from the base of your neck to the end of the sleeve hem to determine where the sleeve length will fall on you.</li>
</ul>
</div>
<div class="clearfix"></div>
<hr class="hr" />
<h3 id="size-chart">kalles Size Chart</h3>
<br />
<div class="tabset"><!-- Tab 1 --> <input type="radio" name="tabset" id="tab1" aria-controls="dresses" checked="checked" /> <label for="tab1">Dresses</label> <!-- Tab 2 --> <input type="radio" name="tabset" id="tab2" aria-controls="tops" /> <label for="tab2">Tops</label> <!-- Tab 3 --> <input type="radio" name="tabset" id="tab3" aria-controls="bottoms" /> <label for="tab3">Bottoms</label> <!-- Tab 4 --> <input type="radio" name="tabset" id="tab4" aria-controls="denim" /> <label for="tab4">Denim</label> <!-- Tab 5 --> <input type="radio" name="tabset" id="tab5" aria-controls="swimwear" /> <label for="tab5">Swimwear</label> <!-- Tab 6 --> <input type="radio" name="tabset" id="tab6" aria-controls="shoes" /> <label for="tab6">Shoes</label>
<div class="tab-panels">
<section id="dresses" class="tab-panel">
<h2>Dresses Size Chart</h2>
<div class="accordion" id="section1">Dress Size Chart (Inch)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="5" style="text-align: center;"><strong>DRESSES</strong><br />SIZE IN INCHES</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">BUST</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">31"-32"</td>
<td style="text-align: center;">24"-25"</td>
<td style="text-align: center;">34"-35"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2-4</td>
<td style="text-align: center;" bgcolor="#fafafa">33"-34"</td>
<td style="text-align: center;" bgcolor="#fafafa">26"-27"</td>
<td style="text-align: center;" bgcolor="#fafafa">36"-37"</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">6-8</td>
<td style="text-align: center;">35"-36"</td>
<td style="text-align: center;">28"-29"</td>
<td style="text-align: center;">38"-39"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">10-12</td>
<td style="text-align: center;" bgcolor="#fafafa">37"-39"</td>
<td style="text-align: center;" bgcolor="#fafafa">30"-32"</td>
<td style="text-align: center;" bgcolor="#fafafa">40"-42"</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">14</td>
<td style="text-align: center;">40"-42"</td>
<td style="text-align: center;">33"-35"</td>
<td style="text-align: center;">43"-45"</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="accordion" id="section2">Dress Size Chart (cm)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="5" style="text-align: center;"><strong>DRESSES</strong><br />SIZE IN CM</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">BUST</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">78.7-81.2</td>
<td style="text-align: center;">60.9-63.5</td>
<td style="text-align: center;">86.3-88.9</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2-4</td>
<td style="text-align: center;" bgcolor="#fafafa">83.8-86.3</td>
<td style="text-align: center;" bgcolor="#fafafa">66-68.5</td>
<td style="text-align: center;" bgcolor="#fafafa">91.4-93.9</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">6-8</td>
<td style="text-align: center;">88.9-91.4</td>
<td style="text-align: center;">71.1-73.6</td>
<td style="text-align: center;">96.5-99</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">10-12</td>
<td style="text-align: center;" bgcolor="#fafafa">93.9-99</td>
<td style="text-align: center;" bgcolor="#fafafa">76.2-81.2</td>
<td style="text-align: center;" bgcolor="#fafafa">101.6-106.6</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">14</td>
<td style="text-align: center;">101.6-106.6</td>
<td style="text-align: center;">81.2-88.9</td>
<td style="text-align: center;">109.2-114.3</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</section>
<section id="tops" class="tab-panel">
<h2>Tops Size Chart</h2>
<div class="accordion" id="section1">Tops Size Chart (Inch)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="4" style="text-align: center;"><strong>TOPS</strong><br />SIZE IN INCHES</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">BUST</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">31"-32"</td>
<td style="text-align: center;">24"-25"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2-4</td>
<td style="text-align: center;" bgcolor="#fafafa">33"-34"</td>
<td style="text-align: center;" bgcolor="#fafafa">26"-27"</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">6-8</td>
<td style="text-align: center;">35"-36"</td>
<td style="text-align: center;">28"-29"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">10-12</td>
<td style="text-align: center;" bgcolor="#fafafa">37"-39"</td>
<td style="text-align: center;" bgcolor="#fafafa">30"-32"</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">14</td>
<td style="text-align: center;">40"-42"</td>
<td style="text-align: center;">33"-35"</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="accordion" id="section2">Tops Size Chart (cm)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="4" style="text-align: center;"><strong>TOPS</strong><br />SIZE IN CM</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">BUST</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">78.7-81.2</td>
<td style="text-align: center;">60.9-63.5</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2-4</td>
<td style="text-align: center;" bgcolor="#fafafa">83.8-86.3</td>
<td style="text-align: center;" bgcolor="#fafafa">66-68.5</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">6-8</td>
<td style="text-align: center;">88.9-91.4</td>
<td style="text-align: center;">71.1-73.6</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">10-12</td>
<td style="text-align: center;" bgcolor="#fafafa">93.9-99</td>
<td style="text-align: center;" bgcolor="#fafafa">76.2-81.2</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">14</td>
<td style="text-align: center;">101.6-106.6</td>
<td style="text-align: center;">83.8-88.9</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</section>
<section id="bottoms" class="tab-panel">
<h2>Bottoms Size Chart</h2>
<div class="accordion" id="section1">Bottoms Size Chart (Inch)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="4" style="text-align: center;"><strong>BOTTOMS</strong><br />SIZE IN INCHES</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">24"-25"</td>
<td style="text-align: center;">34"-35"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2-4</td>
<td style="text-align: center;" bgcolor="#fafafa">26"-27"</td>
<td style="text-align: center;" bgcolor="#fafafa">36"-37"</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">6-8</td>
<td style="text-align: center;">28"-29"</td>
<td style="text-align: center;">38"-39"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">10-12</td>
<td style="text-align: center;" bgcolor="#fafafa">30"-32"</td>
<td style="text-align: center;" bgcolor="#fafafa">40"-42"</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">14</td>
<td style="text-align: center;">33"-35"</td>
<td style="text-align: center;">43"-45"</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="accordion" id="section2">Bottoms Size Chart (cm)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="4" style="text-align: center;"><strong>BOTTOMS</strong><br />SIZE IN CM</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">60.9-63.5</td>
<td style="text-align: center;">86.3-88.9</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2-4</td>
<td style="text-align: center;" bgcolor="#fafafa">66-68.5</td>
<td style="text-align: center;" bgcolor="#fafafa">91.4-93.9</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">6-8</td>
<td style="text-align: center;">71.1-73.6</td>
<td style="text-align: center;">96.4-93.9</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">10-12</td>
<td style="text-align: center;" bgcolor="#fafafa">76.2-81.2</td>
<td style="text-align: center;" bgcolor="#fafafa">101.6-106.6</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">14</td>
<td style="text-align: center;">83.8-88.9</td>
<td style="text-align: center;">109.2-114.3</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</section>
<section id="denim" class="tab-panel">
<h2>Denim Size Chart</h2>
<div class="accordion" id="section1">Denim Size Chart (Inch)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="5" style="text-align: center;"><b>DENIM</b><br />SIZE IN INCHES</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">WAIST SIZE</td>
<td style="text-align: center;" bgcolor="#eee">JUNIOR SIZING</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">LOW WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">24</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">24"-25"</td>
<td style="text-align: center;">26"-27"</td>
<td style="text-align: center;">32"-33"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">25</td>
<td style="text-align: center;" bgcolor="#fafafa">1</td>
<td style="text-align: center;" bgcolor="#fafafa">25"-26"</td>
<td style="text-align: center;" bgcolor="#fafafa">28"-29"</td>
<td style="text-align: center;" bgcolor="#fafafa">33"-34"</td>
</tr>
<tr>
<td style="text-align: center;">26</td>
<td style="text-align: center;">3</td>
<td style="text-align: center;">26"-27"</td>
<td style="text-align: center;">30"-31"</td>
<td style="text-align: center;">34"-35"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">27</td>
<td style="text-align: center;" bgcolor="#fafafa">5</td>
<td style="text-align: center;" bgcolor="#fafafa">27"-28"</td>
<td style="text-align: center;" bgcolor="#fafafa">31"-32"</td>
<td style="text-align: center;" bgcolor="#fafafa">35"-36"</td>
</tr>
<tr>
<td style="text-align: center;">28</td>
<td style="text-align: center;">7</td>
<td style="text-align: center;">28"-29"</td>
<td style="text-align: center;">32"-33"</td>
<td style="text-align: center;">36"-37"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">29</td>
<td style="text-align: center;" bgcolor="#fafafa">9</td>
<td style="text-align: center;" bgcolor="#fafafa">29"-30"</td>
<td style="text-align: center;" bgcolor="#fafafa">33"-34"</td>
<td style="text-align: center;" bgcolor="#fafafa">37"-38"</td>
</tr>
<tr>
<td style="text-align: center;">30</td>
<td style="text-align: center;">11</td>
<td style="text-align: center;">30"-31"</td>
<td style="text-align: center;">34"-35"</td>
<td style="text-align: center;">38"-39"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">31</td>
<td style="text-align: center;" bgcolor="#fafafa">13</td>
<td style="text-align: center;" bgcolor="#fafafa">31"-3"</td>
<td style="text-align: center;" bgcolor="#fafafa">35"-36"</td>
<td style="text-align: center;" bgcolor="#fafafa">39"-40"</td>
</tr>
<tr>
<td style="text-align: center;">32</td>
<td style="text-align: center;">15</td>
<td style="text-align: center;">32"-33"</td>
<td style="text-align: center;">36"-37"</td>
<td style="text-align: center;">40"-41"</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="accordion" id="section2">Denim Size Chart (cm)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="5" style="text-align: center;"><strong>DENIM</strong><br />SIZE IN CM</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">WAIST SIZE</td>
<td style="text-align: center;" bgcolor="#eee">JUNIOR SIZING</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">LOW WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">24</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">60.9-63.5</td>
<td style="text-align: center;">66-68.5</td>
<td style="text-align: center;">81.2-83.8</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">25</td>
<td style="text-align: center;" bgcolor="#fafafa">1</td>
<td style="text-align: center;" bgcolor="#fafafa">63.5-66</td>
<td style="text-align: center;" bgcolor="#fafafa">71.1-73.6</td>
<td style="text-align: center;" bgcolor="#fafafa">83.8-86.3</td>
</tr>
<tr>
<td style="text-align: center;">26</td>
<td style="text-align: center;">3</td>
<td style="text-align: center;">66-68.5</td>
<td style="text-align: center;">76.2-78.7</td>
<td style="text-align: center;">86.3-88.9</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">27</td>
<td style="text-align: center;" bgcolor="#fafafa">5</td>
<td style="text-align: center;" bgcolor="#fafafa">68.5-71.1</td>
<td style="text-align: center;" bgcolor="#fafafa">78.7-81.2</td>
<td style="text-align: center;" bgcolor="#fafafa">88.9-91.4</td>
</tr>
<tr>
<td style="text-align: center;">28</td>
<td style="text-align: center;">7</td>
<td style="text-align: center;">71.1-73.6</td>
<td style="text-align: center;">81.2-83.8</td>
<td style="text-align: center;">91.4-93.9</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">29</td>
<td style="text-align: center;" bgcolor="#fafafa">9</td>
<td style="text-align: center;" bgcolor="#fafafa">73.6-76.2</td>
<td style="text-align: center;" bgcolor="#fafafa">83.8-86.3</td>
<td style="text-align: center;" bgcolor="#fafafa">93.9-96.5</td>
</tr>
<tr>
<td style="text-align: center;">30</td>
<td style="text-align: center;">11</td>
<td style="text-align: center;">76.2-78.7</td>
<td style="text-align: center;">86.3-88.9</td>
<td style="text-align: center;">96.5-99</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">31</td>
<td style="text-align: center;" bgcolor="#fafafa">13</td>
<td style="text-align: center;" bgcolor="#fafafa">78.7-81.2</td>
<td style="text-align: center;" bgcolor="#fafafa">88.9-91.4</td>
<td style="text-align: center;" bgcolor="#fafafa">99-101.6</td>
</tr>
<tr>
<td style="text-align: center;">32</td>
<td style="text-align: center;">15</td>
<td style="text-align: center;">81.2-83.8</td>
<td style="text-align: center;">91.4-93.9</td>
<td style="text-align: center;">101.6-104.1</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</section>
<section id="swimwear" class="tab-panel">
<h2>Swimwear Size Chart</h2>
<div class="accordion" id="section1">Swimwear Size Chart (Inch)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="5" style="text-align: center;"><strong>SWIMWEAR</strong><br />SIZE IN INCHES</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">BUST</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">31"-32"</td>
<td style="text-align: center;">24"-25"</td>
<td style="text-align: center;">33"-34"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2</td>
<td style="text-align: center;" bgcolor="#fafafa">33"-34"</td>
<td style="text-align: center;" bgcolor="#fafafa">26"-27"</td>
<td style="text-align: center;" bgcolor="#fafafa">35"-37"</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">4</td>
<td style="text-align: center;">35"-36"</td>
<td style="text-align: center;">28"-29"</td>
<td style="text-align: center;">37"-38"</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">6</td>
<td style="text-align: center;" bgcolor="#fafafa">37"-39"</td>
<td style="text-align: center;" bgcolor="#fafafa">30"-32"</td>
<td style="text-align: center;" bgcolor="#fafafa">39"-41"</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">8</td>
<td style="text-align: center;">40"-42"</td>
<td style="text-align: center;">33"-35"</td>
<td style="text-align: center;">42"-44"</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="accordion" id="section2">Swimwear Size Chart (cm)<span></span></div>
<div class="container">
<div class="content">
<div class="table-responsive">
<table class="sizeguide_table" width="100%">
<tbody>
<tr>
<td colspan="5" style="text-align: center;"><strong>SWIMWEAR</strong><br />SIZE IN CM</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#eee">SIZE</td>
<td style="text-align: center;" bgcolor="#eee">US / CAN</td>
<td style="text-align: center;" bgcolor="#eee">BUST</td>
<td style="text-align: center;" bgcolor="#eee">WAIST</td>
<td style="text-align: center;" bgcolor="#eee">HIPS</td>
</tr>
<tr>
<td style="text-align: center;">XS</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">78.7-81.2</td>
<td style="text-align: center;">60.9-63.5</td>
<td style="text-align: center;">83.8-86.3</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">S</td>
<td style="text-align: center;" bgcolor="#fafafa">2</td>
<td style="text-align: center;" bgcolor="#fafafa">83.8-86.3</td>
<td style="text-align: center;" bgcolor="#fafafa">66-68.5</td>
<td style="text-align: center;" bgcolor="#fafafa">88.9-93.9</td>
</tr>
<tr>
<td style="text-align: center;">M</td>
<td style="text-align: center;">4</td>
<td style="text-align: center;">88.9-91.4</td>
<td style="text-align: center;">71.1-73.6</td>
<td style="text-align: center;">93.9-96.5</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">L</td>
<td style="text-align: center;" bgcolor="#fafafa">6</td>
<td style="text-align: center;" bgcolor="#fafafa">93.9-99</td>
<td style="text-align: center;" bgcolor="#fafafa">76.2-81.2</td>
<td style="text-align: center;" bgcolor="#fafafa">99-104.1</td>
</tr>
<tr>
<td style="text-align: center;">XL</td>
<td style="text-align: center;">8</td>
<td style="text-align: center;">101.6-106.6</td>
<td style="text-align: center;">81.2-88.9</td>
<td style="text-align: center;">106.6-111.7</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</section>
<section id="shoes" class="tab-panel">
<h2>Shoes Size Chart</h2>
<div class="table-responsive">
<table class="sizeguide_table" width="100%" style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td bgcolor="#eee" style="text-align: center;">US</td>
<td bgcolor="#eee" style="text-align: center;">EURO</td>
<td bgcolor="#eee" style="text-align: center;">UK</td>
<td bgcolor="#eee" style="text-align: center;">AUS</td>
<td bgcolor="#eee" style="text-align: center;">JAPAN</td>
<td bgcolor="#eee" style="text-align: center;">CHINA</td>
</tr>
<tr>
<td style="text-align: center;">5</td>
<td style="text-align: center;">35-36</td>
<td style="text-align: center;">3</td>
<td style="text-align: center;">3.5</td>
<td style="text-align: center;">21.5</td>
<td style="text-align: center;">35</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">5.5</td>
<td style="text-align: center;" bgcolor="#fafafa">36</td>
<td style="text-align: center;" bgcolor="#fafafa">3.5</td>
<td style="text-align: center;" bgcolor="#fafafa">4</td>
<td style="text-align: center;" bgcolor="#fafafa">22</td>
<td style="text-align: center;" bgcolor="#fafafa">35.5</td>
</tr>
<tr>
<td style="text-align: center;">6</td>
<td style="text-align: center;">36-37</td>
<td style="text-align: center;">4</td>
<td style="text-align: center;">4.5</td>
<td style="text-align: center;">22.5</td>
<td style="text-align: center;">36</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">6.5</td>
<td style="text-align: center;" bgcolor="#fafafa">37</td>
<td style="text-align: center;" bgcolor="#fafafa">4.5</td>
<td style="text-align: center;" bgcolor="#fafafa">5</td>
<td style="text-align: center;" bgcolor="#fafafa">23</td>
<td style="text-align: center;" bgcolor="#fafafa">36.5</td>
</tr>
<tr>
<td style="text-align: center;">7</td>
<td style="text-align: center;">37-38</td>
<td style="text-align: center;">5</td>
<td style="text-align: center;">5.5</td>
<td style="text-align: center;">23.5</td>
<td style="text-align: center;">37</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">7.5</td>
<td style="text-align: center;" bgcolor="#fafafa">38</td>
<td style="text-align: center;" bgcolor="#fafafa">5.5</td>
<td style="text-align: center;" bgcolor="#fafafa">6</td>
<td style="text-align: center;" bgcolor="#fafafa">24</td>
<td style="text-align: center;" bgcolor="#fafafa">37.5</td>
</tr>
<tr>
<td style="text-align: center;">8</td>
<td style="text-align: center;">38-39</td>
<td style="text-align: center;">6</td>
<td style="text-align: center;">6.5</td>
<td style="text-align: center;">24.5</td>
<td style="text-align: center;">38</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">8.5</td>
<td style="text-align: center;" bgcolor="#fafafa">39</td>
<td style="text-align: center;" bgcolor="#fafafa">6.5</td>
<td style="text-align: center;" bgcolor="#fafafa">7</td>
<td style="text-align: center;" bgcolor="#fafafa">25</td>
<td style="text-align: center;" bgcolor="#fafafa">38.5</td>
</tr>
<tr>
<td style="text-align: center;">9</td>
<td style="text-align: center;">39-40</td>
<td style="text-align: center;">7</td>
<td style="text-align: center;">7.5</td>
<td style="text-align: center;">25.5</td>
<td style="text-align: center;">39</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">9.5</td>
<td style="text-align: center;" bgcolor="#fafafa">40</td>
<td style="text-align: center;" bgcolor="#fafafa">7.5</td>
<td style="text-align: center;" bgcolor="#fafafa">8</td>
<td style="text-align: center;" bgcolor="#fafafa">26</td>
<td style="text-align: center;" bgcolor="#fafafa">39.5</td>
</tr>
<tr>
<td style="text-align: center;">10</td>
<td style="text-align: center;">40-41</td>
<td style="text-align: center;">8</td>
<td style="text-align: center;">8.5</td>
<td style="text-align: center;">26.5</td>
<td style="text-align: center;">40</td>
</tr>
<tr>
<td style="text-align: center;" bgcolor="#fafafa">11</td>
<td style="text-align: center;" bgcolor="#fafafa">41-42</td>
<td style="text-align: center;" bgcolor="#fafafa">9</td>
<td style="text-align: center;" bgcolor="#fafafa">9.5</td>
<td style="text-align: center;" bgcolor="#fafafa">27.5</td>
<td style="text-align: center;" bgcolor="#fafafa">41</td>
</tr>
</tbody>
</table>
</div>
</section>
<p><strong>Attention:</strong> This guide provides general sizing information only, and fit can vary depending on style and brand. For more specific sizing information on the product, please refer to product description.</p>
</div>
</div>
<p>NOTE:</p>
<ul>
<li>All kalles models are wearing size small in tops and dresses, and size 1, 3, or 5 in jeans depending on their body type.</li>
<li>Most kalles jeans &amp; dresses have some stretch, please refer to product description for fabric details.</li>
<li>Most kalles bottoms have an inseam of 31-34? depending on the cut and style. Sizing may vary depending on cut and style.</li>
</ul>
<br />
<h4 style="text-align: center;">STILL NEED HELP? CONTACT US ON</h4>
<h4 style="text-align: center;">+1 (646) 389-7242</h4>
<!-- partial -->
  
</body>
</html>
