
<%@ page import="collegenowapp.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teacher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacher">
			
				<g:if test="${teacherInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="teacher.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${teacherInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.discipline}">
				<li class="fieldcontain">
					<span id="discipline-label" class="property-label"><g:message code="teacher.discipline.label" default="Discipline" /></span>
					
						<span class="property-value" aria-labelledby="discipline-label"><g:fieldValue bean="${teacherInstance}" field="discipline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="teacher.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${teacherInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="teacher.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${teacherInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.lastMeeting}">
				<li class="fieldcontain">
					<span id="lastMeeting-label" class="property-label"><g:message code="teacher.lastMeeting.label" default="Last Meeting" /></span>
					
						<span class="property-value" aria-labelledby="lastMeeting-label"><g:formatDate date="${teacherInstance?.lastMeeting}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="teacher.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${teacherInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.nextMeeting}">
				<li class="fieldcontain">
					<span id="nextMeeting-label" class="property-label"><g:message code="teacher.nextMeeting.label" default="Next Meeting" /></span>
					
						<span class="property-value" aria-labelledby="nextMeeting-label"><g:formatDate date="${teacherInstance?.nextMeeting}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="teacher.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${teacherInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.schools}">
				<li class="fieldcontain">
					<span id="schools-label" class="property-label"><g:message code="teacher.schools.label" default="Schools" /></span>
					
						<g:each in="${teacherInstance.schools}" var="s">
						<span class="property-value" aria-labelledby="schools-label"><g:link controller="school" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.socialSecurityNumber}">
				<li class="fieldcontain">
					<span id="socialSecurityNumber-label" class="property-label"><g:message code="teacher.socialSecurityNumber.label" default="Social Security Number" /></span>
					
						<span class="property-value" aria-labelledby="socialSecurityNumber-label"><g:fieldValue bean="${teacherInstance}" field="socialSecurityNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherInstance?.teacherID}">
				<li class="fieldcontain">
					<span id="teacherID-label" class="property-label"><g:message code="teacher.teacherID.label" default="Teacher ID" /></span>
					
						<span class="property-value" aria-labelledby="teacherID-label"><g:fieldValue bean="${teacherInstance}" field="teacherID"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:teacherInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${teacherInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
