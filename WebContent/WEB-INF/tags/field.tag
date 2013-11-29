<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="name" description="" required="true" type="java.lang.String"%>

<div class="control-group form-group">
	<label class="control-label col-sm-2" for="input${name}">${name}</label>
	<div class="controls col-md-5">
		<input type="text" class="form-control" id="input${name}" name="${name}" placeholder="${name}">
	</div>
</div>