//
//  CountryModel.swift
//  Protocol
//
//  Created by Musa Adıtepe on 12.08.2024.
//

import Foundation

struct Country: ListItemProtocol{
    let name : String
    let flag : String
    var iconName: String {
        flag
    }
    var titleText: String{
        name
    }
}
struct League: ListItemProtocol{
    let name : String
    let logo : String
    var iconName: String {
        logo
    }
    var titleText: String{
        name
    }
}
struct Club{
    let clubname : String
    let clubLogo : String
}

