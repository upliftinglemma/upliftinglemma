component extends="framework.one" output="false" accessors="true" {

    property layoutConfig;

    /* Set up session management. */
    this.sessionManagement = true;
    this.name = "UpliftingLemma";

    /* Set up FW/1. */
    variables.framework = {
        usingSubsystems = true,
        applicationKey = "UpliftingLemma",

        diEngine = "di1",
        diLocations = "controllers,model",

        environments = {
            dev = {
                reloadApplicationOnEveryRequest = true
            }
        }
    }

    /* Let's use environments to get configuration into the repository. Every
     * set-up that needs its own configuration should instead get its own
     * environment. For now, we can figure out the environment based on the
     * hostname (specifically the server name). */
    function getEnvironment() output="false" {
        return "dev";
    }

    /* Set up the layout struct so views can communicate with the layout. */
    function setupView(rc) output="false" {
        rc.layoutConfig = layoutConfig.newConfig();
    }

}

