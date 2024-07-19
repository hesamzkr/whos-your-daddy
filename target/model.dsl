whosYourDaddy = softwareSystem "Whos your daddy?" {
    !docs internet-banking-system/docs/src
}

facebook = softwareSystem "Facebook" {
    
}

whosYourDaddy -> facebook "integration"

thirdPartyApplications = softwareSystem "Third Party Applications" {

}

thirdPartyApplications -> whosYourDaddy "integration"