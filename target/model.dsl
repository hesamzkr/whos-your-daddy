whosYourDaddy = softwareSystem "Whos your daddy?" {
    !docs internet-banking-system/docs/src

    // Define containers within "Whos your daddy?"
    webApp = container "Web Application" {
        description "The front-end application that users interact with."
        technology "Angular"
    }

    api = container "API" {
        description "Handles requests from the web application and other clients."
        technology "Spring Boot"
    }

    db = container "Database" {
        description "Stores user data, transactions, and other information."
        technology "MySQL"
    }
    
    pg = container "Permission and User Data Store" {
        description "Stores user data and permissions."
        technology "PostgreSQL"
    }

    dashboard = container "Dashboard" {
        description "Dashboard for external API users."
        technology "React"
    }

    // Relationships between containers
    webApp -> api "Sends requests to"
    api -> db "Reads from and writes to"
    api -> pg "Reads from and writes to"
    dashboard -> api "Sends requests to"
}

facebook = softwareSystem "Facebook" {
    
}

facebook -> whosYourDaddy "integration"

thirdPartyApplications = softwareSystem "Third Party Applications" {

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

