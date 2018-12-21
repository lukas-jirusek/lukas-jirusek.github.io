/*
STRUCTURE:
isSet= 'not set' | 1
theme= white | black
*/

if (localStorage.getItem('isSet') == null || undefined) {
	localStorage.setItem('isSet', 1);
	localStorage.setItem('theme', 'white');
}

// nastaveni barev podle aktualniho nastaveni
function switchColor(){
	localStorage.setItem('pes', 'jezevcik');
	if(document.body.style.backgroundColor != "red"){document.body.style.backgroundColor = "red"}
	else{
		document.body.style.backgroundColor = "blue"
	}
}