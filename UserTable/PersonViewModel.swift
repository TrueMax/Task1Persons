//
//  PersonViewModel.swift
//  UserTable
//
//  Created by Maxim on 24.05.16.
//  Copyright © 2016 Maxim. All rights reserved.
//

import Foundation

let initialNames = ["Peter", "Michael", "Valentina", "Maria", "Big Mazzy", "Gianluca", "Max", "Little Pony", "Victor", "Master", "Crocodile", "User Incognito", "Luigi", "Nicolas", "Ivan"]
let initialCountries = ["Gabon", "Russia", "USA", "Venezuela", "Togo", "Morocco", "Egypt", "Saudi Arabia", "Vanuatu", "Sweden", "Australia", "New Zealand", "China"]

    let randomCountries = ["Togo", "Morocco", "Spain", "Argentina", "Brazil", "Costa Rica", "Egypt"]
    let randomNames = ["Togogo Togogo", "Hussein Ali al Hosseini", "Pedro Hernandez", "Gianluca Battistini", "Luis Alvares", "Miguel Camino", "Mohammad Habib"]

var persons: [Person] = {
        var inner_persons: [Person] = [Person]()
        for _ in 0..<15 {
            let person = Person(personID: NSUUID(), personName: initialNames[Int(arc4random_uniform(UInt32(initialNames.count)))], personCountry: initialCountries[Int(arc4random_uniform(UInt32(initialCountries.count)))])
                inner_persons.append(person)
        }
    return inner_persons
}()

func changePersons(persons: [Person], index: Int) -> [Person] {
    
    var newPersons = persons
    
    let calcIndexName = Int(arc4random_uniform(UInt32(randomNames.count)))
    let calcIndexCountry = Int(arc4random_uniform(UInt32(randomCountries.count)))
    let randomlyChoosenName = randomNames[calcIndexName]
    let randomlyChoosenCountry = randomCountries[calcIndexCountry]
    let newPerson = Person(personID: NSUUID(), personName: randomlyChoosenName, personCountry: randomlyChoosenCountry)
    
    newPersons.insert(newPerson, atIndex: index)
    return newPersons
    
}


