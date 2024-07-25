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
