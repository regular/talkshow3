{
    name: "board"
    version: "0.0.1"
    license: "MIT"

    #keywords: []

    library: true

    description: "A Board is a grid of Fields"

    htdocs:
        page:
            html: ["views/demo.jade"]

    ###
    ##  Client-side stuff ends up in component.json
    ## and will be processed by component-build
    ###

    client:

        dependencies:
            production:
                remote:
                    "component/dom": "*"
                    "component/events": "*"
                    "visionmedia/debug": "*"
                    "jkroso/dom-event": "*"
                    "discore/closest": "*"
                    "yields/sortable": "*"

                local: [
                    "../../bind-jade" # ARGH!
                ]

            development:
                remote:
                    "visionmedia/mocha": "*"
                    "chaijs/chai": "*"

        scripts: ["client.coffee"]

        main: "client.coffee"

        styles: ["styles/board.styl"]

        templates: ["views/board.jade"]

        tests:
            # A single test.html file is created from the specified template.
            # It contains script tags for
            # all files mentioned under 'scripts'
            # This generated HTML file is then loaded into a headless browser
            # (phantomjs) and the tests are executed with mocha.

            browser:
                template: "test/test.jade"
                preequisits:
                    "visionmedia/mocha": ["mocha.js", "mocha.css"]
                    "chaijs/chai": ["chai.js"]
                scripts: [
                    "test/board-browser.coffee"
                ]



    server: {}
}






