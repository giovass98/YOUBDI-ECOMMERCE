

function controlloUsername()
{
	var lettere=/^[a-z0-9A-Z]+$/;
	var username=document.registrazione.username.value;
	if(username.length<5 || username.length>10 || !username.match(lettere))
	{
		document.registrazione.username.style.borderColor="red";
		return false;
	}
	else{
		document.registrazione.username.style.borderColor="green";
		return true;
	}
}

function controlloNome()
{
	var lettere=/^[a-zA-Z]+$/;
	var nome=document.registrazione.nome.value;
	if(nome.length==0 || !nome.match(lettere))
	{
		document.registrazione.nome.style.borderColor="red";
		return false;
	}
	else{
		document.registrazione.nome.style.borderColor="green";
		return true;
	}
}

function controlloCognome()
{
	var lettere=/^[a-zA-Z]+$/;
	var cognome=document.registrazione.cognome.value;
	if(cognome.length==0 || !cognome.match(lettere))
	{
		document.registrazione.cognome.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.cognome.style.borderColor="green";
		return true;
	}
}

function controlloCodice()
{
	var lettere3=/^[A-Z]{6}\d{2}[A-Z]\d{2}[A-Z]\d{3}[A-Z]$/i
	var codice=document.registrazione.codice.value;
	if(!codice.match(lettere3))
	{
		document.registrazione.codice.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.codice.style.borderColor="green";
		return true;
	}
}

function controlloPassword()
{
	var lettere4=/^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])[0-9A-Za-z]{8,16}$/ //8-16 caratteri(1 cifra,1 lettera mi e ma)
	var password=document.registrazione.password.value;
	if(!password.match(lettere4))
	{
		document.registrazione.password.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.password.style.borderColor="green";
		return true;
	}
}

function controlloEmail()
{
	var lettere5=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-]{2,})+\.)+([a-zA-Z0-9]{2,})+$/;
	var email=document.registrazione.email.value;
	if(!email.match(lettere5))
	{
		document.registrazione.email.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.email.style.borderColor="green";
		return true;
	}
}

function controlloTelefono()
{
	var lettere6=/^[0-9]{10}$/;
	var telefono=document.registrazione.telefono.value;
	if(!telefono.match(lettere6))
	{
		document.registrazione.telefono.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.telefono.style.borderColor="green";
		return true;
	}
}

function controlloNazione()
{
	var lettere=/^[a-zA-Z]+$/;
	var nazionalita=document.registrazione.nazionalita.value;
	if(!nazionalita.match(lettere))
	{
		document.registrazione.nazionalita.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.nazionalita.style.borderColor="green";
		return true;
	}
}

function controlloProvincia()
{
	var lettere=/^[a-zA-Z]+$/;
	var provincia=document.registrazione.provincia.value;
	if(!provincia.match(lettere))
	{
		document.registrazione.provincia.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.provincia.style.borderColor="green";
		return true;
	}
}

function controlloIndirizzo()
{
	var lettere=/^[a-zA-Z]+[ ]+[a-zA-Z]+$/;
	var indirizzo=document.registrazione.indirizzo.value;
	if(!indirizzo.match(lettere))
	{
		document.registrazione.indirizzo.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.indirizzo.style.borderColor="green";
		return true;
	}
}

function controlloNumero()
{
	var lettere6=/^[0-9]{1,4}$/;
	var n_civico=document.registrazione.n_civico.value;
	if(!n_civico.match(lettere6))
	{
		document.registrazione.n_civico.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.n_civico.style.borderColor="green";
		return true;
	}
}

function controlloCap()
{
	var lettere6=/^[0-9]{1,5}$/;
	var cap=document.registrazione.cap.value;
	if(!cap.match(lettere6))
	{
		document.registrazione.cap.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.cap.style.borderColor="green";
		return true;
	}
}

function controlloAnno()
{
	var anno=document.registrazione.anno.value;
	if(anno<1900 || anno>2018)
	{
		document.registrazione.anno.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.anno.style.borderColor="green";
		return true;
	}
}

function controlloMese()
{
	var mese=document.registrazione.mese.value;
	if(mese<1 || mese>12)
	{
		document.registrazione.mese.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.mese.style.borderColor="green";
		return true;
	}
}

function controlloGiorno()
{
	var giorno=document.registrazione.giorno.value;
	if(giorno<1 || giorno>31)
	{
		document.registrazione.giorno.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.giorno.style.borderColor="green";
		return true;
	}
}

function controlloLuogo()
{
	var lettere=/^[a-zA-Z]+$/;
	var luogo_nascita=document.registrazione.luogo_nascita.value;
	if(!luogo_nascita.match(lettere))
	{
		document.registrazione.luogo_nascita.style.borderColor="red";
		return false;
	}
	else
	{
		document.registrazione.luogo_nascita.style.borderColor="green";
		return true;
	}
}

function validazione()
{
	if(!controlloUsername())
	{
		document.registrazione.username.focus();
		return false;
	}
	else if(!controlloNome())
	{
		document.registrazione.nome.focus();
		return false;
	}
	else if(!controlloCognome())
	{
		document.registrazione.cognome.focus();
		return false;
	}
	else if(!controlloCodice())
	{
		document.registrazione.codice.focus();
		return false;
	}
	else if(!controlloPassword())
	{
		document.registrazione.password.focus();
		return false;
	}
	else if(!controlloEmail())
	{
		document.registrazione.email.focus();
		return false;
	}
	else if(!controlloTelefono())
	{
		document.registrazione.telefono.focus();
		return false;
	}
	else if(!controlloNazione())
	{
		document.registrazione.nazionalita.focus();
		return false;
	}
	else if(!controlloProvincia())
	{
		document.registrazione.provincia.focus();
		return false;
	}
	else if(!controlloIndirizzo())
	{
		document.registrazione.indirizzo.focus();
		return false;
	}
	else if(!controlloNumero())
	{
		document.registrazione.n_civico.focus();
		return false;
	}
	else if(!controlloCap())
	{
		document.registrazione.cap.focus();
		return false;
	}
	else if(!controlloAnno())
	{
		document.registrazione.anno.focus();
		return false;
	}
	else if(!controlloMese())
	{
		document.registrazione.mese.focus();
		return false;
	}
	else if(!controlloGiorno())
	{
		document.registrazione.giorno.focus();
		return false;
	}
	else if(!controlloLuogo())
	{
		document.registrazione.luogo_nascita.focus();
		return false;
	}
	else
	{
		registrati();
	}
}



function registrati()
{
	$.post("Registrazione",
	{
		username : $("#uno").val(),
		nome : $("#due").val(),
		cognome : $("#tre").val(),
		codice : $("#quattro").val(),
		password : $("#cinque").val(),
		email : $("#sei").val(),
		telefono : $("#sette").val(),
		nazionalita : $("#otto").val(),
		provincia : $("#nove").val(),
		indirizzo : $("#dieci").val(),
		n_civico : $("#undici").val(),
		cap : $("#dodici").val(),
		anno : $("#tredici").val(),
		mese : $("#quattordici").val(),
		giorno : $("#quindici").val(),
		luogo_nascita : $("#sedici").val()
	},
	function(responseText)
	{
		if(responseText=="1")
		{
			$("#form").hide();
			$("#scritta").replaceWith("<h1>Registrazione effettuata</h1>");
		}
		else
		{
			alert("Username esistente");
		}
    });
}
