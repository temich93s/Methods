//
//  main.swift
//  Methods
//
//  Created by 2lup on 03.10.2021.
//

import Foundation

print("Hello, World!")

//MARK: Методы экземпляра
print("\n//Методы экземпляра")

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
print(counter.count)
// начальное значение counter равно 0

counter.increment()
print(counter.count)
// теперь значение counter равно 1

counter.increment(by: 5)
print(counter.count)
// теперь значение counter равно 6

counter.reset()
print(counter.count)
// теперь значение counter равно 0


//MARK: Свойство self
print("\n//Свойство self")

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("Эта точка находится справа от линии, где x == 1.0")
}
// Выведет "Эта точка находится справа от линии, где x == 1.0"


//MARK: Изменение типов значений методами экземпляра
print("\n//Изменение типов значений методами экземпляра")

struct Point1 {
   var x = 0.0, y = 0.0
   mutating func moveBy(x deltaX: Double, y deltaY: Double) {
      x += deltaX
      y += deltaY
   }
}
var somePoint1 = Point1(x: 1.0, y: 1.0)
somePoint1.moveBy(x: 2.0, y: 3.0)
print("Сейчас эта точка на (\(somePoint1.x), \(somePoint1.y))")
// Выведет "Сейчас эта точка на (3.0, 4.0)"
