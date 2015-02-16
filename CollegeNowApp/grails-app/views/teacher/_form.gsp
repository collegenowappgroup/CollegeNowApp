<%@ page import="collegenowapp.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="teacher.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${teacherInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'discipline', 'error')} required">
	<label for="discipline">
		<g:message code="teacher.discipline.label" default="Discipline" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="discipline" required="" value="${teacherInstance?.discipline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'emailAddress', 'error')} required">
	<label for="emailAddress">
		<g:message code="teacher.emailAddress.label" default="Email Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailAddress" required="" value="${teacherInstance?.emailAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="teacher.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${teacherInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'lastMeeting', 'error')} required">
	<label for="lastMeeting">
		<g:message code="teacher.lastMeeting.label" default="Last Meeting" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastMeeting" precision="day"  value="${teacherInstance?.lastMeeting}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="teacher.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${teacherInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'nextMeeting', 'error')} required">
	<label for="nextMeeting">
		<g:message code="teacher.nextMeeting.label" default="Next Meeting" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nextMeeting" precision="day"  value="${teacherInstance?.nextMeeting}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="teacher.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${teacherInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'schools', 'error')} ">
	<label for="schools">
		<g:message code="teacher.schools.label" default="Schools" />
		
	</label>
	<g:select name="schools" from="${collegenowapp.School.list()}" multiple="multiple" optionKey="id" size="5" value="${teacherInstance?.schools*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'socialSecurityNumber', 'error')} required">
	<label for="socialSecurityNumber">
		<g:message code="teacher.socialSecurityNumber.label" default="Social Security Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="socialSecurityNumber" required="" value="${teacherInstance?.socialSecurityNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'teacherID', 'error')} required">
	<label for="teacherID">
		<g:message code="teacher.teacherID.label" default="Teacher ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="teacherID" type="number" value="${teacherInstance.teacherID}" required=""/>

</div>

