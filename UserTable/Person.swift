//
//  Person.swift
//  UserTable
//
//  Created by Maxim on 24.05.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import Foundation

class Person: NSObject {
    var personID: NSUUID
    var personName: String
    var personCountry: String
    
    init(personID: NSUUID, personName: String, personCountry: String) {
        
        self.personID = personID
        self.personCountry = personCountry
        self.personName = personName
        
    }
}


