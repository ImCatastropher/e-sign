<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-Control"
	Content="no-cache,no-store,must-revalidate" />
<meta http-equiv="Pragma" Content="no-cache" />
<meta http-equiv="Expires" Content="0" />
<title>Login</title>
<link>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/0.8.1/cropper.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/cropper/2.3.4/cropper.min.css">

<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<style>
.fa {
	background-color: #008CBA;
	font-size: 20px;
	color: white;
}

.fas {
	background-color: #008CBA;
	font-size: 20px;
	color: white;
}

.button {
	border: none;
	color: #242222;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button1 {
	background-color: #4CAF50;
} /* Green */
.button2 {
	background-color: #008CBA;
} /* Blue */
.save {
	background-color: #4CAF50;
}
i.fa {
      font-size: 50px;
      margin-bottom: 1rem;
      transition: all .2s ease-in-out;
    }
    .uploader {
  display: block;
  clear: both;
  margin: 0 auto;
  width: 100%;
  max-width: 600px;
}


  label {
    float: left;
    clear: both;
    width: 100%;
    padding: 2rem 1.5rem;
    text-align: center;
    background: #fff;
    border-radius: 7px;
    border: 3px solid #eee;
    transition: all .2s ease;
    user-select: none;
} 
.inputfile {
	width: 0.1px;
	height: 1px;
	opacity: 0;
	overflow: hidden;
	position: absolute;
	z-index: -1;
	margin: 4px 2px;
}

.inputfile+label {
	font-size: 1.25em;
	font-weight: 700;
	color: back;
	background-color: white;
	display: inline-block;
}

.inputfile:focus+label, .inputfile+label:hover {
	background-color: #87ffaa;
}

.inputfile+label {
	cursor: pointer; /* "hand" cursor */
}

.file-custom {
	cursor: pointer
}

.inputfile:focus+label {
	outline: 1px dotted #000;
	outline: -webkit-focus-ring-color auto 5px;
	
}
.page {
	margin: 1em auto;
	max-width: 768px;
	display: flex;
	align-items: flex-start;
	flex-wrap: wrap;
	height: 100%;
}

.box {
	padding: 0.5em;
	width: 100%;
	margin: 0.5em;
}

.box-2 {
	padding: 0.5em;
	width: calc(100%/ 2 - 1em);
}

.options label, .options input {
	width: 10em;
	padding: 0.5em 1em;
}

.btn {
	background: white;
	color: black;
	border: 1px solid black;
	padding: 0.5em 1em;
	text-decoration: none;
	margin: 0.8em 0.3em;
	display: inline-block;
	cursor: pointer;
	align:center;
}

.hide {
	display: none;
}
.wait {cursor:wait;}

img {
	max-width: 100%;
}
.buttonload {
  background-color: #4CAF50; /* Green background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 12px 24px; /* Some padding */
  font-size: 16px; /* Set a font-size */
}

/* Add a right margin to each icon */
.fa {
  margin-left: -12px;
  margin-right: 8px;
}
</style>
</head>
<body style="background-color: #E0FFFF;" id="body">
	<header> <nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: #008CBA; height:70px;">
	<ul class="navbar-nav">

		<li><a href="login.jsp" class="fa fa-home" class="nav-link">
				Home </a></li>


	</ul>
	<ul class="navbar-nav">
		<li style="padding-left: 7px;"><a href="fetchDetails"
			class="fas fa-user" class="nav-link"> Account </a></li>
	</ul>
	<ul class="navbar-nav">
		<li style="padding-left: 7px;"><a href="drawsign.jsp"
			class="fas fa-marker" class="nav-link"> Draw Sign </a></li>
	</ul>

	<ul class="navbar-nav navbar-collapse justify-content-end">
		<li style="padding-left: 7px;"><a href="logout"
			class="fas fa-power-off" class="nav-link"> Logout</a></li>
	</ul>
	</nav> </header>



	<div id="captioncont" style="text-align: center;"> 
		<caption>
			<br> <br> 
			<h4 style="font-family:sans-serif;font-size:30px;align:"center";>Welcome ${loginDetails.firstname}.</h4>
			<h3>${success}</h3>
			<h3>${error }</h3>
		</caption>
		<br>
		<br>
		<!-- <p style="padding-left: 16px; padding-right: 16px; font-size: 22px">
			Please chose a picture and click on submit to save the picture</p> -->
	</div>
	<!-- action="insertImage" -->
	<div class="up" style="align:center;">
	<form modelAttribute="imageDetails"
		onsubmit='saveCropImage(); return false;'
		enctype="multipart/form-data" method="POST" id="loginForm" class="uploader">
<label for="file-upload" id="file-drag" style="background-color:#ebe7d5">
<i class="fa fa-upload" style="background-color: #ebe7d5;font-size: 35px;color: #0f0f0f;" aria-hidden="true"></i>


      <div style="padding-left: 10px; padding-right: 16px; font-size:25px; font-family:verdana">Please choose a picture and submit</div>
     
		<input type="hidden" value="${loginDetails.email}"
			class="form-control" name="email" id="email" minlength="5" readonly>
			
			<strong><b>Preferred Name:</b></strong>
				<input path="prefername" value="${prefername}" type="text" name="prefername" id="prefername" required>
			
			
		<main class="page"> <!-- input file
        <div class="box" style="background-color: #4CAF50;"> --> <input
			class="button" type="file" name="image" id="file-input"
			accept="image/*" data-type='image' required> <!-- </div> -->
		<!-- leftbox -->
		<div class="box-2" style="vertical-align: bottom">
			<div class="result"></div>
		</div>
		<br>
		<!--rightbox-->
		<div class="box-2 img-result hide">
			<!-- result of crop onClick="saveCropImage" -->
			<img class="cropped" src="" alt="" name="cropped" id="cropped">
		</div>
		<!-- input file -->
		<div class="box" style="text-align: center">
			<div class="options hide">
				<label> Width</label> <input type="number" class="img-w" value="1000"
					min="600" max="1200" />
			</div>
			<!-- save btn -->
			<button class="button save hide">Save</button>
			<input class="button button2 hide" type="submit" value="Submit"
				 id="submit">		
		</div>
		</main>


		<!-- <input type="file" name="file1" id="file1" class="inputfile" />
      <label for="file1"><strong>Choose a file</strong></label>  -->
		</pre>
	</form>
</div>

	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>

</body>
<script>



    // vars
    let result = document.querySelector('.result'),
        img_result = document.querySelector('.img-result'),
        img_w = document.querySelector('.img-w'),
        img_h = document.querySelector('.img-h'),
        options = document.querySelector('.options'),
        save = document.querySelector('.save'),
        cropped = document.querySelector('.cropped'),
       
        upload = document.querySelector('#file-input'),
        submit = document.querySelector('.button2'),
        load = document.querySelector('#load'),
        cropper = '';

   // alert.("rey howle");
    // on change show image with crop options

    upload.addEventListener('change', (e) => {
    	
        if (e.target.files.length) {
            // start file reader
            //alert("here");
            const reader = new FileReader();
            reader.onload = (e)=> {
                if(e.target.result){
                    // create new image
                    let img = document.createElement('img');
                    img.id = 'image';
                    img.src = e.target.result
                    // clean result before
                    result.innerHTML = '';
                    // append new image
                    result.appendChild(img);
                    // show save btn and options
                    save.classList.remove('hide');
                    //options.classList.remove('hide');
                    // init cropper
                    cropper = new Cropper(img);
                }
            };
            reader.readAsDataURL(e.target.files[0]);
        }
    });

    // save on click
    save.addEventListener('click',(e)=>{
        e.preventDefault();
        // get result to data uri
        let imgSrc = cropper.getCroppedCanvas({
            width: img_w.value // input value
        }).toDataURL();
        // remove hide class of img
        cropped.classList.remove('hide');
        submit.classList.remove('hide');
        img_result.classList.remove('hide');
        // show image cropped
        cropped.src = imgSrc;
        
    });
    
    
    function saveCropImage(){

    	//alert("inside");
    	//document.getElementById("file-drag").classList.add('wait');
    	//alert("after");
    	// cursor_wait();
    	// $(document.body).css({'cursor' : 'wait'});
    	//document.body.style.cursor = 'wait';
    	var canvasServer = document.getElementById("cropped");
    	var email = document.getElementById("email").value;
    	var prefname =  document.getElementById("prefername").value;
        //var context = canvasServer.getContext("2d");  
        let imgSrc = cropper.getCroppedCanvas({
            width: img_w.value // input value
        }).toDataURL();
        formdata = imgSrc.replace(/^data:image\/(png|jpg);base64,/,"");
        var ajax = new XMLHttpRequest();
            	  ajax.open("POST","insertImage",false); 
            	  ajax.onreadystatechange=function()
    	          {
            		  //alert("here");
            		  //remove_cursor_wait();
            		  // $(document.body).css({'cursor' : 'default'});
            		 // $('body').removeClass('waiting');
    	    		  //alert("Signature is uploaded");
    	    	      if (ajax.readyState==4)
    	    	        {
    	    	    	 // sub.classList.remove('wait');
    	    	            //alert("State: "+ajax.readyState+" and Status: "+ajax.status);
    	    	            var successUrl = "login.jsp"; // might be a good idea to return this URL in the successful AJAX call
    	    	            window.location.href = successUrl;
    	    	        }
    	    	      }
            	  
        //ajax.setRequestHeader("Content-Type", "application/upload");
        ajax.send(formdata+"-"+email+"-"+prefname);
        //$('body').addClass('waiting');
         save.classList.add('hide');
        //options.classList.add('hide');
        cropped.classList.add('hide');
        img_result.classList.add('hide');
        //       
        result.classList.add('hide');
        //alert("Signature is uploaded"); 
       }

</script>
</html>