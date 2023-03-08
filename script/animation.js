

var immagine =1;

function avanti(){
	immagine++
	if(immagine>5)
			immagine=1;
	document.getElementById("slider").src ="got/c"+immagine +".jpg"
}
function indietro(){
	immagine--;
	if(immagine<1)
			immagine=5;
	document.getElementById("slider").src ="got/c"+immagine +".jpg"
}

