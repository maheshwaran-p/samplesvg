<h1>How to Use </h1>
<ol>
  <li>Download any svg and goto svg2flutter tool (https://svg2widget.web.app/) to convert your svg as flutter code</li>
   <li>Then Choose svg from your system , after this action tool will provide you flutter code for your choosen svg .</li>
  <li>Come back here with tool  provided code . Then you can use the tool provided code like this example/sample project flow. </li>

</ol> 
<h2>Simple trick to use png as flutter code </h2>
<ol>
  <li> use this site to download png images (png images free to download) ------> https://www.flaticon.com/search?word=gun</li>
  <li> use this site to convert png to svg -----> https://convertio.co/png-svg/</li>
  <li>use this site to convert svg to flutter ----> https://svg2widget.web.app</li>
 <p> caution while using this trick some times (https://svg2widget.web.app) tool will provide the code with
 transparent color  but no worries  you can change the color .
check the tool provided code  and change the color as you want . (Paint()..color = Colors.black) <------ edit this line in tool provided code to change the svg color) .</p>
</ol> 
<h1>Performance Metrics</h1>
<div>
<p style="background-color:green">Normal SVG Rendering renders the svg in 4 FPS , But svg2path Rendering renders a svg in 15 FPS. Here I just compared with single svg . List of svg can create the huge difference . <br> For an instance , while using the svg in list view builder users can perceive the frame drop issue . 

</div>
<div>
<img width="48%" alt="normal-svg-rendering" src="https://user-images.githubusercontent.com/62535697/194137979-65e0c89b-61c2-439e-b8d8-70b62bdb6b01.png">


<img width="48%" alt="svg2path-rendering" src="https://user-images.githubusercontent.com/62535697/194138537-ae2407f1-5f23-43ad-91ee-088bb52048d8.png">

</div>


<h2>Result: </h2>

<h3>3.75x times faster than normal svg rendering method   </h3>

 <a href="https://www.buymeacoffee.com/mpmahesh">
<img  width="35%" height="3%" alt="svg2path-rendering" src="https://user-images.githubusercontent.com/62535697/194220498-98eb404d-1c6c-438a-b739-8eba695161b0.png">


</a>
<h3>Normal Svg Rendering performance on mobile Raster max  rendering 0.3 fps and Ui max 13.8 fps</h3>

![photo_6192503643333309053_y](https://user-images.githubusercontent.com/62535697/194146289-b1e31275-3f79-4c42-bdf4-cc4f43bd0dea.png)



<h3> Svg2Path  Rendering performance on mobile Raster max  rendering 8.3 fps and Ui max 24.8 fps</h3>


![photo_6192503643333309054_y](https://user-images.githubusercontent.com/62535697/194142698-216f5c19-43e3-41f4-8f38-6fb2acb56b3c.jpg)






# samplesvg

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
