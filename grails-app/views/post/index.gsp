<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-post" class="content scaffold-list" role="main">
            <h1>Listado de Post</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            
            <div class="container bs-docs-container">
               <g:each in="${postList}">
                  <div class="row">
                    <div class = "bs-docs-section">
                      <div class="bs-callout bs-callout-info" id="callout-xref-input-group">
                        <h4 id="input-groups">${it.title}<a class="anchorjs-link" href="#input-groups">
                          <span class="anchorjs-icon"></span></a>
                        </h4>
                        <div id="datos del post">
                           <h5>
                             <span>${it.published_date}</span>
                             <span>${it.category.name}</span>
                           </h5>
                        </div>

                        <p>
                          ${it.body}
                          <g:link class="create" action="edit" id="${it.id}">Ver post</g:link>
                        </p>

                      </div>
                    </div>
                  </div>
                  <hr>
              </g:each>
            </div>               

            <div class="pagination">
                <g:paginate total="${postCount ?: 0}" />
            </div>
        </div>

    </body>
</html>


