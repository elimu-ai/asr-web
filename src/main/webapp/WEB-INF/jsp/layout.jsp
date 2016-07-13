<c:choose>
    <c:when test="${fn:contains(pageContext.request.requestURI, '/jsp/transcription/')}">
        <%@ include file="/WEB-INF/jsp/transcription/layout.jsp" %>
    </c:when>
    <c:otherwise>
        <!DOCTYPE html>
        <html lang="${locale.language}">
            <head>
                <title><content:gettitle /> | asr.literacyapp.org</title>

                <meta charset="UTF-8" />

                <meta name="viewport" content="width=device-width, initial-scale=1.0" />

                <%-- CSS --%>
                <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
                <link rel="stylesheet" href="<spring:url value='/css/styles.css?version=' /><content:getversion />" />
            </head>

            <body>
                <a href="https://github.com/literacyapp-org/asr-web">
                    <img style="position: absolute; top: 0; right: 0; border: 0;" 
                         src="https://camo.githubusercontent.com/e7bbb0521b397edbd5fe43e7f760759336b5e05f/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677265656e5f3030373230302e706e67" 
                         alt="Fork me on GitHub" 
                         data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png">
                </a>
                
                <nav class="green darken-1" role="navigation">
                    <div class="nav-wrapper container">
                        <content:gettitle />
                    </div>
                </nav>

                <c:if test="${hasBanner}">
                    <div class="section no-pad-bot" id="index-banner">
                        <div class="container">
                            <content:getbanner />
                        </div>
                    </div>
                </c:if>

                <div id="${cssId}" class="container <c:if test="${cssClass != null}">${cssClass}</c:if>">
                    <div class="section row">
                        <div class="col s12">
                            <content:getsection />
                        </div>
                    </div>
                </div>

                <footer class="page-footer grey lighten-3">
                    <div class="container">
                        <div class="row">
                            <div class="col s12">
                                This project is maintained by the community at <a href="http://literacyapp.org">LiteracyApp.org</a>
                            </div>
                        </div>
                    </div>
                <div class="footer-copyright grey lighten-2">
                    <div class="container">
                        <div class="row">
                            <div class="col s6">
                                <a href="http://www.apache.org/licenses/LICENSE-2.0">
                                    Apache License, 2.0
                                </a>
                            </div>
                            <div class="col s6 black-text" style="text-align: right;">
                                <fmt:message key="switch.language" />: 
                                <c:choose>
                                    <c:when test="${applicationScope.configProperties['env'] == 'DEV'}">
                                        <a href="<spring:url value='/?lang=en' />">
                                            English
                                        </a> | 
                                        <a href="<spring:url value='/?lang=sw' />">
                                            Kiswahili
                                        </a>
                                    </c:when>
                                    <c:when test="${applicationScope.configProperties['env'] == 'TEST'}">
                                        <a href="http://test.asr.literacyapp.org?lang=en">
                                            English
                                        </a> | 
                                        <a href="http://test.asr.literacyapp.org?lang=sw">
                                            Kiswahili
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="http://asr.literacyapp.org?lang=en">
                                            English
                                        </a> | 
                                        <a href="http://asr.literacyapp.org?lang=sw">
                                            Kiswahili
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
              </footer>

                <%-- JavaScripts --%>
                <script src="<spring:url value='/js/jquery-2.1.4.min.js' />"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
                <script src="<spring:url value='/js/init.js' />"></script>
                <%@ include file="/WEB-INF/jsp/error/javascript-error.jsp" %>
                <%@ include file="/WEB-INF/jsp/google-analytics.jsp" %>
            </body>
        </html>
    </c:otherwise>
</c:choose>
