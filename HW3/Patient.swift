//
//  Patient.swift
//  HW3
//
//  Created by Jarae on 30/12/22.
//

import Foundation
class Patient{
    var name: String
    var lastName: String
    var diagnostic: String
    
    init(name: String, lastName: String, diagnostic: String) {
        self.name = name;
        self.lastName = lastName
        self.diagnostic = diagnostic
    }
}
