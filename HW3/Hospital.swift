//
//  Hospital.swift
//  HW3
//
//  Created by Jarae on 30/12/22.
//

import Foundation
class Hospital{
    var patients = [Patient]()
    
    private func search(_ name: String, _ lastName: String){
        for item in patients {
            if item.name == name && item.lastName == lastName{
                print("\(item.name) - \(item.lastName) - \(item.diagnostic)")
            }
        }
    }
    func searchD(_ name: String, _ lastName: String){
        for item in patients {
            if item.name == name && item.lastName == lastName{
                print("\(name) - \(item.diagnostic)")
            }
        }
    }
    func addPatient(_ element: Patient){
        var flag = true
        for item in patients{
            if item.name == element.name && item.lastName == element.lastName && item.diagnostic == element.diagnostic{
                flag = false
                print("patient already exist")
            }
        }
        if flag == true{
            patients.append(element)
        }
    }
    func removePatient(_ element: Patient){
        var flag = true
        for (index, item) in patients.enumerated(){
            if item.name == element.name && item.lastName == element.lastName && item.diagnostic == element.diagnostic{
                flag = false
                patients.remove(at: index)
            }
        }
        if flag == true{
            print("patient doesnt exist")
        }
    }
}

