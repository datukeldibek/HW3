//
//  main.swift
//  HW3
//
//  Created by Jarae on 30/12/22.
//

import Foundation
//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)
//
//Должны быть методы для удаления, добавления и считывания учеников/учителей.(возвращеное модели по параметрам)
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл
//
//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, функцию для отобржения заболевания пациента по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами

//#1
var stud1 = Student(name: "Lisa", lastName: "M", age: 18, gpa: 3.7)
var stud2 = Student(name: "Jennie", lastName: "K", age: 15, gpa: 3.4)

var teach1 = Teacher(name: "Irina", lastName: "V-na", subject: "russian", experience: 10)
var teach2 = Teacher(name: "Mirlan", lastName: "...-vich", subject: "ios", experience: 5)

var database = DataBase()
database.addStudent(stud1)
database.addStudent(stud2)
database.showStudentsInfo()
database.removeStudent("Lisa")
print("Students array after removing some of them")
database.showStudentsInfo()

print("")
database.addTeacher(teach1)
database.addTeacher(teach2)
database.showSTeachersInfo()
database.removeTeacher(7)
print("Teachers array after removing")
database.showSTeachersInfo()

//result:
//#1 M Lisa - 18 - 3.7
//#2 K Jennie - 15 - 3.4
//Students array after removing some of them
//#1 K Jennie - 15 - 3.4
//
//#1 Irina V-na - russian - 10
//#2 Mirlan ...-vich - ios - 5
//Teachers array after removing
//#1 Irina V-na - russian - 10

print("\n")
//#2
var patient1 = Patient(name: "Jack", lastName: "Cooper", diagnostic: "headache")
var patient2 = Patient(name: "Josh", lastName: "Cooper", diagnostic: "cancer")
var patient3 = Patient(name: "Noah", lastName: "Cooper", diagnostic: "headache")

var hospital = Hospital()
hospital.addPatient(patient1)
hospital.addPatient(patient2)
hospital.addPatient(patient3)
hospital.addPatient(patient3)

//hospital.search("Noah", "Cooper")  // не работает, потому что функция private
hospital.searchD("Josh", "Cooper")

hospital.removePatient(patient1)
hospital.removePatient(patient1)

//result:
//patient already exist
//Josh - cancer
//patient doesnt exist
