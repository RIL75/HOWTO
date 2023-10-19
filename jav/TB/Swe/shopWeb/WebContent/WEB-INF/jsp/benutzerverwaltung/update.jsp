<%@ include file="/WEB-INF/jsp/layout/layout.jspf" %>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="shop" %>

<tiles:insert beanName="shop.layout" flush="true">
	<tiles:put name="browserTitle" type="string">
		<fmt:message key="header.title.constant"/>
		<c:choose>
			<c:when test="${Administrator eq true}">
				<fmt:message key="benutzerverw.update.admin.header.title"/>
			</c:when>
			<c:otherwise>
				<fmt:message key="benutzerverw.update.header.title"/>
			</c:otherwise>
		</c:choose>
	</tiles:put>

	<tiles:put name="content" type="string">
		<c:choose>
			<c:when test="${Administrator eq true}">
				<h2><fmt:message key="benutzerverw.update.admin.heading"/></h2>
			</c:when>
			<c:otherwise>
				<h2><fmt:message key="benutzerverw.update.heading"/></h2>
			</c:otherwise>
		</c:choose>
		<div id="form">
		<html:form action="/UpdateBenutzer">
			<table>
				<tr>
					<td><label for="benutzername"><fmt:message key="benutzerverw.update.username"/></label></td>
					<td>
						<html:text property="benutzername" disabled="true" size="20" styleId="benutzername" styleClass="css"/>
						<html:errors property="benutzername"/>
					</td>
				</tr>
				<tr>
					<td><label for="passwort"><fmt:message key="benutzerverw.update.password"/></label></td>
					<td>
						<html:password property="passwort" size="20" styleId="passwort" styleClass="css"/>
						<html:errors property="passwort"/>
					</td>
				</tr>
				<tr>
					<td><label for="passwort2"><fmt:message key="benutzerverw.update.passwordrepeat"/></label></td>
					<td><html:password property="passwort2" size="20" styleId="passwort2" styleClass="css"/></td>
				</tr>
				<c:if test="${Administrator eq true}">
				<tr>
					<td><label for="gesperrt"><fmt:message key="benutzerverw.update.locked"/></label></td>
					<td><html:multibox property="gesperrt" value="true" styleId="gesperrt"/></td>
				</tr>
				</c:if>
				<tr>
					<td><label for="anrede"><fmt:message key="benutzerverw.update.title"/></label></td>
					<td><shop:anrede /></td>
				</tr>
				<tr>
					<td><label for="vorname"><fmt:message key="benutzerverw.update.firstname"/></label></td>
					<td>
						<html:text property="vorname" size="20" styleId="vorname" styleClass="css"/>
						<html:errors property="vorname"/>
					</td>
				</tr>
				<tr>
					<td><label for="nachname"><fmt:message key="benutzerverw.update.surname"/></label></td>
					<td>
						<html:text property="nachname" size="20" styleId="nachname" styleClass="css"/>
						<html:errors property="nachname"/>
					</td>
				</tr>
				<tr>
					<td><label for="strasse"><fmt:message key="benutzerverw.update.street"/></label></td>
					<td>
						<html:text property="strasse" size="50" styleId="strasse" styleClass="css"/>
						<html:errors property="strasse"/>
					</td>
				</tr>
				<tr>
					<td><label for="plz"><fmt:message key="benutzerverw.update.postcode"/></label></td>
					<td>
						<html:text property="plz" size="6" styleId="plz" styleClass="css"/>
						<html:errors property="plz"/>
					</td>
				</tr>
				<tr>
					<td><label for="ort"><fmt:message key="benutzerverw.update.city"/></label></td>
					<td>
						<html:text property="ort" size="50" styleId="ort" styleClass="css"/>
						<html:errors property="ort"/>
					</td>
				</tr>
				<tr>
					<td><label for="email"><fmt:message key="benutzerverw.update.email"/></label></td>
					<td>
						<html:text property="email" size="50" styleId="email" styleClass="css"/>
						<html:errors property="email"/>
					</td>
				</tr>
				<tr>
					<td><label for="geburtsdatum"><fmt:message key="benutzerverw.update.dateofbirth"/></label></td>
					<td>
						<html:text property="geburtsdatum" styleId="geburtsdatum" styleClass="css"/>
						<html:errors property="geburtsdatum"/>
					</td>
				</tr>
				<tr>
					<td><label for="regdatum"><fmt:message key="benutzerverw.update.regtimestamp"/></label></td>
					<td><html:text property="regdatum" disabled="true" styleId="regdatum" styleClass="css"/></td>
				</tr>
				<tr>
					<td><label for="newsletter"><fmt:message key="benutzerverw.update.newsletter"/></label></td>
					<td><html:multibox property="newsletter" value="true" styleId="newsletter"/></td>
				</tr>
				<c:if test="${Administrator eq true}">
				<tr>
					<td><label for="benutzergruppen"><fmt:message key="benutzerverw.update.userroles"/></label></td>
					<td><shop:benutzergruppencombo /></td>
				</tr>
				</c:if>
			</table>
			<html:submit styleClass="css"><fmt:message key="benutzerverw.update.submit"/></html:submit>
		</html:form>
		</div>

	</tiles:put>
</tiles:insert>