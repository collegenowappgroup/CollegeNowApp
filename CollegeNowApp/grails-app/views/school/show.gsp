
<%@ page import="collegenowapp.School" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'school.label', default: 'School')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-school" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-school" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list school">
			
				<g:if test="${schoolInstance?.USD}">
				<li class="fieldcontain">
					<span id="USD-label" class="property-label"><g:message code="school.USD.label" default="USD" /></span>
					
						<span class="property-value" aria-labelledby="USD-label"><g:fieldValue bean="${schoolInstance}" field="USD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="school.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${schoolInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schoolInstance?.schoolID}">
				<li class="fieldcontain">
					<span id="schoolID-label" class="property-label"><g:message code="school.schoolID.label" default="School ID" /></span>
					
						<span class="property-value" aria-labelledby="schoolID-label"><g:fieldValue bean="${schoolInstance}" field="schoolID"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:schoolInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${schoolInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
