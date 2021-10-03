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
