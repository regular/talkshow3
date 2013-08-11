module.exports =
    
    # the name of the feature 
    name: "bind-jade"
    version: "0.0.1" # the feature's version"
    license: "MIT"
    description: "exports a jade'd template file"
    keywords: []
    #documentation: ["Readme.md","History.md"]
    library: true
    htdocs:
        page:
            html: []
            images: []

        widget:
            html: []
            images: []

    
    ###
    # Client-side stuff ends up in component.json
    # and will be processed by component-build
    ###
    client:
        dependencies:
            production:
                remote:
                    "karlbohlmark/jade-runtime": "*"

                local: []

            development:
                remote:
                    "visionmedia/mocha": "*"
                    "chaijs/chai": "*"

        scripts: ["client.coffee"]
        main: "client.coffee"
        styles: []
        templates: []
        
        ###
        # A single test.html file is created from the specified template.
        # It contains script tags for
        # all files mentioned under 'scripts'
        # This generated HTML file is then loaded into a headless browser
        # (phantomjs) and the tests are executed with mocha.
        ###
        tests:
            browser:
                template: ""
                preequisits:
                    "visionmedia/mocha": [
                        "mocha.js"
                        "mocha.css"
                    ]
                    "chaijs/chai": ["chai.js"]

                scripts: []

            mocha: []

    server:
        mountPoint: ""
        tests:
            integration: []
            unit: []

    database:
        designDocuments: []