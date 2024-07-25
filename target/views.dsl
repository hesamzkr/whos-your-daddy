systemlandscape "SystemLandscape" {
    include *
    autoLayout
}

systemcontext whosYourDaddy "SystemContext" {
    include *
    autoLayout
    description "The system context diagram for the Internet Banking System."
}

systemcontext facebook "SystemContextFacebook" {
    include *
    autoLayout
    description "The system context diagram for Facebook."
}

systemcontext thirdPartyApplications "SystemContextThirdPartyApplications" {
    include *
    autoLayout
    description "The system context diagram for Third Party Applications."
}

container whosYourDaddy "Containers" {
    include *
    autoLayout
    description "The container diagram for the Internet Banking System."
}


dynamic whosYourDaddy "Authenticate" {
    user -> whosYourDaddy.webApp "Authenticate using a web browser"
    whosYourDaddy.webApp -> whosYourDaddy.api "Authenticate"
    whosYourDaddy.api -> facebook "OAuth"
    whosYourDaddy.api -> whosYourDaddy.webApp "Authenticated"
    autoLayout
}

dynamic whosYourDaddy "UserWebAppData" {
    user -> whosYourDaddy.webApp "Look for genealogical data using a web browser"
    whosYourDaddy.webApp -> whosYourDaddy.api "Request data"
    whosYourDaddy.api -> whosYourDaddy.graphDB "Look for data"
    whosYourDaddy.graphDB -> whosYourDaddy.api "Data"
    whosYourDaddy.api -> whosYourDaddy.webApp "Responds with Data"
    autoLayout
}

dynamic whosYourDaddy "ThirdPartyAppData" {
    thirdPartyApplications -> whosYourDaddy.api "Request data"
    whosYourDaddy.api -> whosYourDaddy.graphDB "Look for data"
    whosYourDaddy.graphDB -> whosYourDaddy.api "Data"
    whosYourDaddy.api -> thirdPartyApplications "Responds with Data"
    autoLayout
}