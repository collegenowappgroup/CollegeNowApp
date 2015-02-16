
<%@ page import="collegenowapp.Teacher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teacher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'teacher.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="discipline" title="${message(code: 'teacher.discipline.label', default: 'Discipline')}" />
					
						<g:sortableColumn property="emailAddress" title="${message(code: 'teacher.emailAddress.label', default: 'Email Address')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'teacher.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastMeeting" title="${message(code: 'teacher.lastMeeting.label', default: 'Last Meeting')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'teacher.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teacherInstanceList}" status="i" var="teacherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teacherInstance.id}">${fieldValue(bean: teacherInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: teacherInstance, field: "discipline")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "emailAddress")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "firstName")}</td>
					
						<td><g:formatDate date="${teacherInstance.lastMeeting}" /></td>
					
						<td>${fieldValue(bean: teacherInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teacherInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
