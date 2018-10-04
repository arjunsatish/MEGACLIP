function func(temp){
	if(temp == "option1"){
		alert("Tell us what we could do better.");
		document.getElementById("feedback_text").style.display="block";
	}
	if(temp == "option2"){
		alert("Tell us what we could do better.");
		document.getElementById("feedback_text").style.display="block";
	}
	if(temp == "option3"){
		alert("Tell us what we could do better.");
		document.getElementById("feedback_text").style.display="block";
	}
	if(temp == "option4"){
		alert("Tell us what we could do better.");
		document.getElementById("feedback_text").style.display="block";
	}
	if(temp == "option5"){
		alert("THANKS FOR SUCH A BRILLIANT REVIEW!");
		document.getElementById("feedback_text").style.display="none";
	}
}

function validate(temp){
	if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(temp)){
		document.getElementById("errmsg").style.display="none";
		return true;
	}
	else{
		document.getElementById("errmsg").style.display="inline-block";
		return false;
	}
}

function validateform(){
	if(!validate(document.getElementById("email").value)){
		alert("Please enter correct email");
		location.reload(); // reloads the page.
		return false;
	}
	else{
		return true;
	}
}