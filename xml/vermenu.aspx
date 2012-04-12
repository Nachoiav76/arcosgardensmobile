<%@ Page Language="VB" ContentType="text/html" ResponseEncoding="UTF-8" %>
<!--#include virtual ="/inc/funciones.aspx" -->
<%

Dim idc=8
if isNumeric(request("idc")) then
	idc=request("idc")
end if

Dim idioma= contar("SELECT idioma from mapa WHERE Id=" & idc)

if idc=8 then
	idc=0
end if



Dim men as dataset= consulta("SELECT Id, nombre from mapa WHERE idpadre=" & idc & " AND movil=1  AND visible=1 AND menu<4 AND idioma=" & idioma & " AND NOT Id=8 AND NOT Id=9 ORDER by menu,pos")
listarXMLsincdata(men)

%>