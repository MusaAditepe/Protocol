//
//  CountryVM.swift
//  Protocol
//
//  Created by Musa Adıtepe on 12.08.2024.
//

import Foundation

class CountryVM{
    var listItems = [Country]()
    
    func configureList(){
        listItems = [
            Country(name: "England", flag: "10"),
            Country(name: "Spain", flag: "2"),
            Country(name: "Italy", flag: "1"),
            Country(name: "Germany", flag: "3"),
        
        
        ]
    }
}
