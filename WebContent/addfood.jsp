<%@taglib tagdir="/WEB-INF/tags" prefix="b"%>
<jsp:useBean id="food" class="com.eggs.domain.Food" scope="application"/>
<jsp:setProperty name="food" property="*"/>

<h2>Food</h2>
<div>
  <form class="form-horizontal">
    <b:field name="id"/>
    <b:field name="name"/>
    <b:field name="price"/>
    <b:submit caption="Submit"/>
  </form>
</div>