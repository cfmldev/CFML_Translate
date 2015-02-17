<cfset service = CreateObject("component", "Translator")>
<cfset service.init("<Google Translator API key>")>

<cfset result = service.translate("My name is Paul", "en", "fr")>

<cfdump var="#result#">
<br>