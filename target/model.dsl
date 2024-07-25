user = person "User" {
    description "A user of the system."
}

company = person "Company" {
    description "A company using the external API."
}

whosYourDaddy = softwaresystem "Whos your daddy" {
    !docs internet-banking-system/docs/src
    !adrs internet-banking-system/adrs

    webApp = container "Web Application" {
        description "The front-end application that users interact with."
        technology "React"
    }

    api = container "API" {
        description "Handles requests from the web application and other third party applications."
        technology "Spring Boot"
    }

    db = container "Relational Database" {
        description "Stores user data, transactions, permissions, etc."
        technology "PostgreSQL"
    }

    dashboard = container "Dashboard" {
        description "Dashboard for external API users."
        technology "React"
    }

    graphDB = container "Graph Database" {
        description "Graph database for storing the genealogical graph."
        technology "AWS Neptune"
    } 

    // Relationships between containers
    webApp -> api "Sends requests to"
    api -> webApp "Sends responses to"
    api -> graphDB "Reads from and writes to"
    api -> db "Reads from and writes to"
    dashboard -> api "Sends requests to"
}

facebook = softwaresystem "Facebook" {
}

thirdPartyApplications = softwaresystem "Third Party Applications" {
}


whosYourDaddy.api -> facebook "Authenticates with"

thirdPartyApplications -> whosYourDaddy.api "Integrates with"

user -> whosYourDaddy.webApp "Uses"

company -> thirdPartyApplications
company -> whosYourDaddy.dashboard "Uses the dashboard"
