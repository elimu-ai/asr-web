<content:title>
    <fmt:message key="automated.speech.recognition.for.children" />
</content:title>

<content:banner>
    <div class="section row">
        <div class="col m6 s12">
            <h4>Purpose</h4>
            This open source project aims to train automated speech recognition (ASR) systems to work with children.
        </div>
        <div class="col m6 s12">
            <h4>Target users</h4>
            Children aged 7-10 with little or no access to school and who speak one of the following languages as their native tounge:
            <fmt:message key="language.en" />/<fmt:message key="language.sw" />.
        </div>
    </div>
            
    <div id="main-illustration" class="section row">

    </div>
</content:banner>

<content:section cssId="mainPage">
    <div class="section">
        <div class="row">
            <h3 class="center">How does it work?</h3>
        </div>
        
        <div class="row">
            <div class="col s12">
                <div class="icon-block">
                    <h2 class="center"><i class="material-icons medium">file_upload</i></h2>
                    <h5 class="center">1. <fmt:message key="upload.audio.recordings" /></h5>
                    <p class="light center"><fmt:message key="upload.audio.recordings.description" /></p>
                </div>
            </div>

            <div class="col s12">
                <div class="icon-block">
                    <h2 class="center"><i class="material-icons medium">text_fields</i></h2>
                    <h5 class="center">2. <fmt:message key="transcribe.audio.recordings" /></h5>
                    <p class="light center"><fmt:message key="transcribe.audio.recordings.description" /></p>
                </div>
            </div>

            <div class="col s12">
                <div class="icon-block">
                    <h2 class="center"><i class="material-icons medium">settings</i></h2>
                    <h5 class="center">3. <fmt:message key="train.the.asr.engine" /></h5>
                    <p class="light center"><fmt:message key="train.the.asr.engine.description" /></p>
                </div>
            </div>
        </div>
    </div>

    <div class="divider"></div>
    
    <div class="section">
        <div class="row">
            <h3 class="center"><fmt:message key="how.can.i.help" /></h3>
        </div>

        <div class="col s12 center">
            We need help with:
            <ul>
                <li>• Uploading audio recordings</li>
                <li>• Transcribing audio recordings</li>
                <li>• Approving audio transcriptions</li>
            </ul>
        </div>
        
        <div class="row center">
            <a href="<spring:url value='/sign-on' />" id="sign-on-button" class="btn-large waves-effect waves-light"><fmt:message key="start.now" /></a>
        </div>
    </div>
</content:section>
