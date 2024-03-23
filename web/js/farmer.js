/*document.getElementById('menu-icon').addEventListener('click', function() {
    var sidebarLinks = document.getElementById('sidebar-links');
    sidebarLinks.classList.toggle('active');
  });
  
  function showNavbarContent(content) {
    var contentDiv = document.getElementById('content');
    contentDiv.innerHTML = '<h2>' + content + ' Content</h2>';
  }*/
  
  const name=document.getElementById("names");
  const userName=document.getElementById("username");
  const pass1=document.getElementById("pass1");
    const pass2=document.getElementById("pass2");
    const file=document.getElementById("userImage");
    const form=document.getElementById("farmerform");

    form.addEventListener('submit',(e)=>{
if(name.value===''||name.value===null){
  setTimeout(function(){
    document.getElementById("errorname").innerHTML="Name Field is Required!!";

    document.getElementById("errorname").style.color='red';
  document.getElementById("names").style.border='2px solid red';
  
  },10)

e.preventDefault();

}else{
  document.getElementById("errorname").innerHTML="";

}


if(userName.value===''||userName.value===null){
setTimeout(function(){
  document.getElementById("erroruser").innerHTML="Username Field is Required!!";
  document.getElementById("erroruser").style.color='red';
  document.getElementById("username").style.border='2px solid red';
  
},10)
e.preventDefault();

}else{
  document.getElementById("erroruser").innerHTML="";

}

if(pass1.value===''||pass1.value===null){
  setTimeout(function(){
    document.getElementById("errorpass").innerHTML="Create your password!!";

    document.getElementById("errorpass").style.color='red';
  document.getElementById("pass1").style.border='2px solid red';
  
  },10)

e.preventDefault();

}else{
  document.getElementById("errorpass").innerHTML="";

}

if(pass2.value===''||pass2.value===null){
  setTimeout(function(){
    document.getElementById("errorpass2").innerHTML="Confirm your password!";

    document.getElementById("errorpass2").style.color='red';
  document.getElementById("pass2").style.border='2px solid red';
  
  },10)

e.preventDefault();

}else{
  document.getElementById("errorpass2").innerHTML="";

}

    });
  function validateName(){
    if(  name.value.length>4){
 
        document.getElementById("errorname").innerHTML="";
          document.getElementById("names").style.border='2px solid green';
    }
  }
  function validateUserName(){
    document.getElementById("erroruser").innerHTML="";
    document.getElementById("username").style.border='2px solid green';
  }
  function validatePass1(){
   if(pass1.value.length<5||pass1.value.length>15){
    document.getElementById("errorpass").innerHTML="Password  have 5 to 15 characters!!";
    document.getElementById("errorpass").style.color='red';
  document.getElementById("pass1").style.border='2px solid red';
   }
   else    if(pass1.value.length>=5||pass1.value.length<=15){
    document.getElementById("errorpass").innerHTML="";
    document.getElementById("pass1").style.border='2px solid green';  
  
   }

  }
  function validatePass2(){
    if(pass2.value.length<5||pass2.value.length>15){
      document.getElementById("errorpass2").innerHTML="Password  have 5 to 15 characters!!";
  
      document.getElementById("errorpass2").style.color='red';
    document.getElementById("pass2").style.border='2px solid red';
    
     }
    
     else if(pass1.value===pass2.value){
      document.getElementById("errorpass2").innerHTML="Password Matched!!";
      document.getElementById("errorpass2").style.color='green';
    document.getElementById("pass2").style.border='2px solid green';
     }else{
      document.getElementById("errorpass2").innerHTML="Password Not Matched!!";
      document.getElementById("errorpass2").style.color='red';
    document.getElementById("pass2").style.border='2px solid green';
     }
  }