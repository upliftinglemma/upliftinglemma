<cfset local.contentHooks = getRCValue("contentHooks")>

<cfsavecontent variable="local.contentHooks.jumbotron">
    <a class="logo logo-large" href="/">Uplifting Lemma</a>
    <p>An assortment of all sorts of projects that <em>sort of</em> work&hellip;</p>
</cfsavecontent>

<div class="row">
    <div class="col-sm-2">
        <cfoutput>
            #view("common:layout/sidebar", {
                items = [
                    {
                        action = "home:main.about",
                        label = "About"
                    },
                    {
                        action = "fate:main.default",
                        label = "Fate"
                    },
                    {
                        action = "resume:main.default",
                        label = "R&eacute;sum&eacute;"
                    }
                ]
            })#
        </cfoutput>
    </div>
    <div class="col-sm-10">
        <p class="lead">Welcome to Uplifting Lemma!</p>

        <p>Augue at felis tincidunt sollicitudin. Fusce arcu. Duis a tortor.
        Duis et odio et leo sollicitudin consequat. Aliquam lobortis. Phasellus
        condimentum. Ut porttitor bibendum libero. Integer euismod lacinia
        velit. Donec velit justo, sodales varius, cursus sed, mattis a,
        arcu.</p>

        <p>Maecenas accumsan, sem iaculis egestas gravida, odio nunc aliquet
        dui, eget cursus diam purus vel augue. Donec eros nisi, imperdiet quis,
        volutpat ac, sollicitudin sed, arcu. Aenean vel mauris. Mauris
        tincidunt. Nullam euismod odio at velit. Praesent elit purus, porttitor
        id, facilisis in, consequat ut, libero. Morbi imperdiet, magna quis
        ullamcorper malesuada, mi massa pharetra lectus, a pellentesque urna
        urna id turpis. Nam.</p>
    </div>
</div>

