//
//  main.swift
//  Lesson 4
//
//  Created by merim kasenova on 7/1/23.
//

import Foundation

print("Hello, World!")

// String
//Int
//Double
//Float
//Character
//Bool

var students: [String] = ["Aman", "Imran","Atai", "Alisa", "Adilet", "Abdulla"]

var ages = [18, 23, 25, 36, 85]

print(students[3])

print(ages[4])

students.append("Begimai")

students.insert("Aigerim", at: 0)

print(students)

students.remove(at: 3)

//students.removeAll() удаляет все элементы

print(students)

for item in students{
    print(item)
}
//print(students[0]) for один делает все, вместо нескольких действий
//print(students[1])
//print(students[2])
//print(students[3])
//print(students[4])

var isFound = false

for item in students{
    if item == "Adilet"{
        //print("Пользователь с таким именем найден!")
        isFound = true
        break
    }else {
        //print("Пользователь с таким именем не найден!")
        isFound = false
    }
}
if isFound == true{
    print("Пользователь с таким именем найден!")
}else{
    print("Пользователь с таким именем не найден!")
}

// составить программу, в которой вы можете вводить имя через readline имя и делать поиск имени, выводить сообщения "найден" или "нет"
// добавить к предложению отображение имени
// пример: Пользователь с именем "Aman" найден


print(isFound)

var name = readLine()!

var studentsName: [String] = ["Aman", "Imran","Atai", "Alisa", "Adilet", "Abdulla"]

if name == "Atai"{
    print("Пользователь с именем \(name) найден")
}else{
    print("Пользователь с таким именем не найден!")
}
print("Введите имя:")
var searchName = readLine()!
for item in students{
    if item == searchName{
        isFound = true
        break
    }else{
        isFound = false
    }
}
if isFound == true{
    print("Пользователь с именем \(searchName) найден")
}else {
    print("Пользователь с таким именем \(searchName) не найден!")
}

func searchName(name:String){
    print(name)
}
var name1 = readLine()

searchName(name:name1!)

for(index,item) in students.enumerated(){
    if searchName == item {  // searchName  можно заменить на определенное имя из списка
        students.remove(at: index)
    }
}
print(students)
