<%@ page import="collegenowapp.School" %>



<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'USD', 'error')} required">
	<label for="USD">
		<g:message code="school.USD.label" default="USD" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="USD" required="" value="${schoolInstance?.USD}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="school.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${schoolInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'schoolID', 'error')} required">
	<label for="schoolID">
		<g:message code="school.schoolID.label" default="School ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="schoolID" type="number" value="${schoolInstance.schoolID}" required=""/>

</div>

