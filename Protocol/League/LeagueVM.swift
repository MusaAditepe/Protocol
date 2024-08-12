//
//  LeagueVM.swift
//  Protocol
//
//  Created by Musa Adıtepe on 12.08.2024.
//

import Foundation

class LeagueVM{
    var listItems = [League]()
    
    func configureList(){
        listItems = [
            League(name: "Premier", logo: "7"),
            League(name: "Laliga", logo: "12"),
            League(name: "Serie A", logo: "9"),
            League(name: "Bundesliga", logo: "8"),
        
        
        ]
    }
}


