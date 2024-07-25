whosYourDaddy = softwaresystem "Whos your daddy" {
    !docs internet-banking-system/docs/src

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
    api -> graphDB "Reads from and writes to"
    api -> db "Reads from and writes to"
    dashboard -> api "Sends requests to"
}

facebook = softwaresystem "Facebook" {
    
}

facebook -> whosYourDaddy "integration"

thirdPartyApplications = softwaresystem "Third Party Applications" {

}

thirdPartyApplications -> whosYourDaddy "integration"

user = person "User" {
    description "A user of the Whos your daddy? system."
}

company = person "Company" {
    description "A company using the external API."
}

user -> facebook "Uses to authenticate"
company -> thirdPartyApplications "Uses the dashboard"

