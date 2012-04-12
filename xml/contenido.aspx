<%@ Page Language="VB" ContentType="text/html" ResponseEncoding="UTF-8" %>
<!--#include virtual ="/inc/funciones.aspx" -->
<%

Dim idc=31
if isNumeric(request("idc")) then
	idc=request("idc")
end if

Dim app= contar("SELECT app from mapa WHERE Id=" & idc)
Dim appdef=0
Dim cont=""


' SLIDE FS
if app=2 then
	appdef=1
	
	Dim sl_ds as dataset= consulta( "SELECT * from app_slide WHERE sec=" & idc & " ORDER By pos")
	Dim sl as datarow
	Dim nimg= sl_ds.tables(0).rows.count
	
	For each sl in sl_ds.tables(0).rows
		%>
        <img src="http://www.arcosgardens.com/material/slide/med_<%=sl("img")%>" width="450" height="200" />
        <h3><%=sl("titulo")%></h3>
        <%=sl("texto")%><br /><br />
<hr />
        <%
	Next
	
	
end if
' FIN SLIDE FS


' SLIDE
if app=20 then
	appdef=1
	
	Dim sl_ds as dataset= consulta( "SELECT * from app_slide WHERE sec=" & idc & " ORDER By pos")
	Dim sl as datarow
	Dim nimg= sl_ds.tables(0).rows.count
	
	For each sl in sl_ds.tables(0).rows
		%>
        <img src="http://www.arcosgardens.com/material/slide/med_<%=sl("img")%>" width="450" height="200" />
        <hr />
        <%
	Next %>
    <br />
<%= contar("SELECT contenido from mapa WHERE Id=" & idc ) %>
    <%
	
	
end if
' FIN SLIDE


' SLIDE FS
if app=1 then
	appdef=1
	%>
<%= contar("SELECT contenido from mapa WHERE Id=" & idc ) %>
<%
	
	
end if
' FIN SLIDE FS

' CONTACTO
if app=3 then
	appdef=1
	%>
<h2>Contáctenos</h2>


<strong>Información General</strong><br />

Tel. (+34) 956 704 131<br />

Fax. (+34) 956 717 932<br />

Email: <a href="mailto:recepcion@arcosgardens.com">recepcion@arcosgardens.com</a><br />

Dirección: Carretera de Algar Km 3,5 11630<br />

Arcos de la Frontera Cádiz Spain<br />
<br />

<strong>Golf</strong><br />

Tel: (+34) 956 704 201<br />

Email: <a href="mailto:golf@arcosgardens.com">golf@arcosgardens.com</a><br />

<strong>Socios del Club de golf</strong><br />

Email: <a href="mailto:socios@arcosgardens.com">socios@arcosgardens.com</a><br /><br />


<strong>Información sobre Propiedades</strong><br />

Tel: (+34) 956 701 694<br />

Fax: (+34) 956 704 674<br />

Email: <a href="mailto:info@arcosgardens.com">info@arcosgardens.com</a><br />
<br />

<strong>Información Alojamiento</strong><br />

Tel: (+34) 956 704 131<br />

Fax: (+34) 956 717 932<br />

Email: <a href="mailto:recepcion@arcosgardens.com">recepcion@arcosgardens.com</a><br />
<br />

<strong>Información servicio Conserje</strong><br />

Tel (+34) 600 442 035<br />

Email: <a href="mailto:conserje@arcosgardens.com">conserje@arcosgardens.com</a>
<%
	
	
end if
' FIN CONTACTO





' CONTACTO
if app=11 then
	appdef=1
	%>
<div style="position:relative;" align="center">



Carretera de Algar Km 3. <br />

11630 Arcos de la Frontera<br />

<strong>Cádiz</strong>. Spain<br/>

Tel: +34 956 701 694<br/>

GPS: 36.724954  - 5.762587



</div>





<div style="position:relative;">


  <strong>Cómo llegar <br />
&nbsp; &nbsp; &nbsp; </strong><a href="http://maps.google.es/maps?saddr=Sevilla,+Aeropuerto+Nacional+de+San+Pablo&amp;daddr=Carretera+de+Algar+Km+3.,+11630+Arcos+de+la+Frontera,+Cádiz.+Spain&amp;hl=es&amp;ie=UTF8&amp;sll=40.396764,-3.713379&amp;sspn=12.209211,18.522949&amp;geocode=FRQEOwIdxOOl_ymFZ-Hto2gSDTEDHnan077PCg;FZ7JMAIdklOn_ynl9lYJYaENDTFhJK5v_WMEEw&amp;mra=ls&amp;t=m&amp;z=10" target="_blank">Sevilla - SVQ <span style="font-size:10px">(60min.)</span></a>
<br />
  &nbsp; &nbsp; &nbsp; <a href="http://maps.google.es/maps?saddr=Aeropuerto+de+Jerez,+Jerez&daddr=Carretera+de+Algar+Km+3.,+11630+Arcos+de+la+Frontera,+C%C3%A1diz.+Spain&hl=es&ie=UTF8&sll=36.714508,-5.971707&sspn=0.401814,0.578842&geocode=FWK9MAIdInCj_yFrqqFYIqf8XQ%3BFZ7JMAIdklOn_ynl9lYJYaENDTFhJK5v_WMEEw&oq=Jerez,+aerop&mra=ls&t=m&z=12" target="_blank">Jerez - XRY <span style="font-size:10px">(20min.)</span></a>
<br />
  &nbsp; &nbsp; &nbsp; <a href="http://maps.google.es/maps?saddr=Aeropuerto+de+Gibraltar,+Winston+Churchill+Avenue,+Gibraltar&daddr=Carretera+de+Algar+Km+3.,+11630+Arcos+de+la+Frontera,+C%C3%A1diz.+Spain&hl=es&ie=UTF8&sll=36.734395,-5.95162&sspn=0.200855,0.289421&geocode=FTipJwIdy2Wu_yHn8x-0rqVlOQ%3BFZ7JMAIdklOn_ynl9lYJYaENDTFhJK5v_WMEEw&oq=Aeropuerto+de+Gibral&mra=ls&t=m&z=10" target="_blank">Gibraltar  - GIB <span style="font-size:10px">(75min.)</span></a>
<br />
  &nbsp; &nbsp; &nbsp; <a href="http://maps.google.es/maps?saddr=Malaga,+aeropuerto&daddr=Carretera+de+Algar+Km+3.,+11630+Arcos+de+la+Frontera,+C%C3%A1diz.+Spain&hl=es&ie=UTF8&ll=36.463263,-5.204773&spn=1.612477,2.315369&sll=36.641978,-5.152588&sspn=1.608753,2.315369&geocode=FS6dLwIdS3G7_yHnlKRvwyIvZA%3BFZ7JMAIdklOn_ynl9lYJYaENDTFhJK5v_WMEEw&mra=ls&t=m&z=9" target="_blank">Málaga - AGP <span style="font-size:10px">(160min.)</span></a>

    </div>
<% end if 







if appdef=0 then
	Dim urlc= contar("SELECT urlc from mapa WHERE Id=" & idc)
	cont="<div align='center'>El contenido de esta sección sólo <br>es visualizable a través de la web<br><br><a href='http://www.arcosgardens.com" & urlc & "'>Pulsa aquí para acceder</div>"
end if

Response.Write(cont)


%>