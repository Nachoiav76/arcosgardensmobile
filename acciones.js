// JavaScript Document
var idc=8;
var listapag= new Array();
var listapagcreadas= new Array();
var npag=1;
var npagcreadas=1;
listapag[0]=8;
var inicio=1;

 $('div[data-role=page]').live('pagecreate',function(){	
	
	if (inicio==1){
		menu_inicia();
		cont_inicia();
		var idpn=2;
		inicio=0;
	}
 });
 
 
function create_page(page_id, nom) {
	
	idc=page_id;
	var encontrado=0;
	for (var n=0; n<npagcreadas; n++){
		if (listapagcreadas[n]==idc){
			encontrado=1;
		}
	}
	if (encontrado==0){
		listapagcreadas[npagcreadas]=idc;
		npagcreadas++;
		//append the new page onto the end of the body
		$('#page_body').append('<div data-role="page" id="p' + page_id + '"><div data-role="header"><h1>' + nom + '</h1></div><div  data-role="content"><div id="contenido' + page_id + '" style="position:relative; padding:0px; margin-bottom:30px;"></div><div ><ul id="menu' + page_id + '" data-role="listview" style="position:relative;"></ul></div></div><div data-role="footer"><h4>Arcos Gardens</h4></div></div>');
		menu_inicia();
		cont_inicia();
		var idpn=2;
		$.mobile.initializePage();
	}
    $.mobile.changePage("#p" + page_id, "pop", false, true);
	
}



function menu_inicia(){
	
 	  $.ajax({                                        
		  url: "http://www.arcosgardens.com/movil/xml/vermenu.aspx?idc=" + idc,                                          
		  cache: false,                      
		  processData: false,                    
		  success: menu_correcto,
		  error: menu_error                  
	  });
	
 }
 function menu_error(data){
 	$("contenido" + idc ).html("<div align='center'>No se pueden cargar datos<br>Asegúrese que está activado Internet para el dispositivo.</div>");
 }
 
function menu_correcto(data){
	   $(data).find('el').each(function(){
 			var ida=($(this).find('Id').text());
			var nombre=($(this).find('nombre').text());
		
			var menuc='<li role="option" tabindex="0" data-theme="c" class="ui-btn ui-btn-up-c ui-btn-icon-right ui-li"><div class="ui-btn-inner"><div class="ui-btn-text"><a href="javascript: create_page(' + ida + ',\'' + nombre + '\');" class="ui-link-inherit">' + nombre + '</a></div><span class="ui-icon ui-icon-arrow-r"></span></div></li>';
	
			$('#menu' + idc).append(menuc);
		});
		//$("#contenido" + idc ).html("correcto");
		
}


function cont_inicia(){
 	  $.ajax({                                        
		  url: "http://www.arcosgardens.com/movil/xml/contenido.aspx?idc=" + idc,                                          
		  cache: false,                      
		  processData: false,                    
		  success: cont_correcto,
		  error: cont_error                  
	  });
	
 }
 function cont_error(data){
 	$("#contenido" + idc ).html("<div align='center'>No se pueden cargar datos<br>Asegúrese que está activado Internet para el dispositivo.</div>");
 }

function cont_correcto(data){
		$("#contenido" + idc ).html(data);
		
} 