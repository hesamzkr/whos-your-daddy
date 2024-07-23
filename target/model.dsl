whosYourDaddy = softwareSystem "Whos your daddy?" {
    !docs internet-banking-system/docs/src
}

facebook = softwareSystem "Facebook" {
    
}

whosYourDaddy -> facebook "integration"

thirdPartyApplications = softwareSystem "Third Party Applications" {

}

thirdPartyApplications -> whosYourDaddy "integration"

// model.dsl
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

    // Relationships between containers
    webApp -> api "Sends requests to" 
    api -> db "Reads from and writes to"
}

facebook = softwareSystem "Facebook" {
    
}

whosYourDaddy -> facebook "integration"

thirdPartyApplications = softwareSystem "Third Party Applications" {

}

thirdPartyApplications -> whosYourDaddy "integration"
