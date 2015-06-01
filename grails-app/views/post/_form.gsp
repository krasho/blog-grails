            <g:form action="save">
                <fieldset class="form">                    
                    <div class="fieldcontain required">
                        <label for="title">
                            Title
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="title" value="${post?.title}"></g:textField>    
                    </div>

                    <div class="fieldcontain required">
                        <label for="body">
                            Body
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="body" value="${post?.body}"></g:textField>    
                    </div>


                    <div class="fieldcontain required">
                        <label for="category.id">
                            Category
                            <span class="required-indicator">*</span>
                        </label>
                        <g:select name="category.id" from="${listOfCategories}"
                        optionValue="name"
                        optionKey="id"/>
                    </div>
 
                    <div class="fieldcontain required">
                        <label for="published_date">
                            Published date                            
                        </label>
                        <g:datePicker name="published_date" value="${post.published_date}" precision="day" />
                    </div>


                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>