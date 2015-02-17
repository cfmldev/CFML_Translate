<cfcomponent>
	<cffunction name="init" access="public" returntype="Translator">
		<cfargument name="appKey" type="string">

		<cfset variables.baseURL = "https://www.googleapis.com/language/translate/v2?key=" & appKey>
		<cfreturn this>
	</cffunction>

	<cffunction name="translate" access="public">
		<cfargument name="text" type="string">
		<cfargument name="source" type="string">
		<cfargument name="target" type="string">

		<cfset var finalURL = variables.baseURL & "&q=" & text & "&source=" & source & "&target=" & target>

		<cfhttp method="get" url="#finalURL#" result="result">
		</cfhttp>

		<cfreturn #deserializeJSON(result.fileContent).data.translations[2].translatedText#>
	</cffunction>
</cfcomponent>