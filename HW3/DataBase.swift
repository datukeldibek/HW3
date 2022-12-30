//
//  DataBase.swift
//  HW3
//
//  Created by Jarae on 30/12/22.
//

import Foundation
class DataBase{
    private var students = [Student]()
    private var teachers = [Teacher]()
    
    func addStudent(_ element: Student){
        var flag = true
        for item in students{
            if item.name == element.name && item.lastName == element.lastName && item.age == element.age && item.gpa == element.gpa{
                flag = false
            }
        }
        if flag == true{
            students.append(element)
        }else{
            print("\(element.name) уже существует")
        }
    }
    func removeStudent(_ name: String){
        for (index, item) in students.enumerated(){
            if item.name == name{
                students.remove(at: index)
            }
        }
    }
    func infoS(_ parametr: String){
        for item in students {
            if item.lastName == parametr{
                print(item)
            }
        }
    }
    func showStudentsInfo(){
        for (index, item) in students.enumerated(){
            print("#\(index + 1) \(item.lastName) \(item.name) - \(item.age) - \(item.gpa)")
        }
    }
    
    //-----------------------------------------------------------------------------------------------------------------
    
    func addTeacher(_ element: Teacher){
        var flag = true
        for item in teachers{
            if item.name == element.name && item.lastName == element.lastName && item.subject == element.subject && item.experience == element.experience{
                flag = false
            }
        }
        if flag == true{
            //teachers.insert(element, at: 0)
            teachers.append(element)
        }else{
            print("\(element.name) уже существует")
        }
    }
    func removeTeacher(_ exp: Int){
        for (index, item) in teachers.enumerated(){
            if item.experience < exp{
                teachers.remove(at: index)
            }
        }
    }
    func infoT(_ parametr: String){
        for item in teachers {
            if item.lastName == parametr{
                print(item)
            }
        }
    }
    func showSTeachersInfo(){
        for (index, item) in teachers.enumerated(){
            print("#\(index + 1) \(item.name) \(item.lastName) - \(item.subject) - \(item.experience)")
        }
    }
    
}
