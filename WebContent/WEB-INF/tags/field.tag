<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="name" description="" required="true"
	type="java.lang.String"%>
	
<div class="control-group">
	<label class="control-label" for="input${name}">${name}</label>
	<div class="controls">
		<input type="text" id="input${name}" name="${name}" placeholder="${name}">
	</div>
</div>
