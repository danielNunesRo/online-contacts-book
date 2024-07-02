<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <h5><g:message code="contact.details"/></h5>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-3">
                <div class="card" style="width: 18rem;">
                    <g:if test="${contact.image}">
                        <img src="${resource(dir: 'contact-image', file: '/${contact.id}-${contact.image}')}" class="card-img-top" alt="${contact.name}"/>
                    </g:if>
                    <g:else>
                        <g:img dir="images" file="grails.svg" class="card-img-top" alt="Grails Logo"/>
                    </g:else>
                    <div class="card-body">
                        <p class="card-text">
                            <strong><g:message code="contact.name"/>:</strong> ${contact.name}
                            <g:if test="${contact.contactGroup}">
                                <br/><strong><g:message code="contact.group"/>:</strong>
                                <g:each in="${contact.contactGroup}" var="group">
                                    ${group.name},
                                </g:each>
                            </g:if>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="row">
                    <g:if test="${contact.contactDetails}">
                        <g:each in="${contact.contactDetails}" var="details">
                            <div class="col-6">
                                <div class="card" style="margin-bottom: 10px;">
                                    <div class="card-body">
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"><strong><g:message code="contact.type"/>:</strong> ${details.type}</li>
                                            <li class="list-group-item"><strong><g:message code="contact.mobile"/>:</strong> ${details.mobile}</li>
                                            <li class="list-group-item"><strong><g:message code="contact.phone"/>:</strong> ${details.phone}</li>
                                            <li class="list-group-item"><strong><g:message code="contact.email"/>:</strong> ${details.email}</li>
                                            <li class="list-group-item"><strong><g:message code="contact.website"/>:</strong> ${details.website}</li>
                                            <li class="list-group-item"><strong><g:message code="contact.address"/>:</strong> ${details.address}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </g:each>
                    </g:if>
                </div>
            </div>
        </div>

        <div class="form-action-panel" style="margin-top: 8px;">
            <g:link controller="contact" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>
