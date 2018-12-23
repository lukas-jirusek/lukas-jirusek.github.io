/*
STRUCTURE:
theme= [null] | white | black
*/
function setColor(){
	if (localStorage.getItem('theme') == null || undefined) {
		localStorage.setItem('theme', 'white');
	}
	else{
		if(localStorage.getItem('theme') == 'white'){				/*White theme*/ 
			document.body.style.backgroundColor = "white";
			document.body.style.color = "black";
			document.getElementById("changeColorButton").style.backgroundColor = "black";
			document.getElementById("changeColorButton").style.color = "white";
		}
		else{
			if(localStorage.getItem('theme') == 'black'){			/*Black theme*/
				document.body.style.backgroundColor = "black";
				document.body.style.color = "white";
				document.getElementById("changeColorButton").style.backgroundColor = "white";
				document.getElementById("changeColorButton").style.color = "black";
			}
			else{
				alert("this should have had never happened");
			}
		}
	}
}
function switchColor(){
	document.getElementById("changeColorButton").backgroundColor = "red";
	document.getElementById("changeColorButton").color = "blue";
	if(localStorage.getItem('theme') == 'white'){
		localStorage.setItem('theme', 'black');
		setColor();
	}
	else{
		if(localStorage.getItem('theme') == 'black'){
			localStorage.setItem('theme', 'white');
			setColor();
		}
		else{
			alert("this should have had never happened as well");
		}
	}
}
window.onload = setColor();