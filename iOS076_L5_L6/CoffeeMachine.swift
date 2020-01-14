//
//  CoffeeMachine.swift
//  iOS076_L5_L6
//
//  Created by Alexandr on 14.01.2020.
//  Copyright © 2020 Alexandr. All rights reserved.
//

import Foundation

class CoffeeMachine {
    private let maxCoffee = 10
    private let maxWater = 15
    private let maxMilk = 5
    
    private var coffee: Int
    private var water: Int
    private var milk: Int
    
    init() {
        coffee = maxCoffee
        water = maxWater
        milk = maxMilk
    }
    
    var capacity: (Int, Int, Int) {
        get {
            (coffee, water, milk)
        }
    }
    
    // (0,"") - OK
    // (1, "Error")
    func makeCoffee(_ coffeeType: CoffeeType) -> (Bool, String) {
        switch coffeeType {
        case .cappuccino:
            return makeCappuchino()
        case .americano:
            return makeAmericano()
        case .latte:
            return makeLatte()
        }
    }
    
    private func makeCappuchino() -> (Bool, String) {
        if coffee < 1 {
            return (false, "no coffee")
        }
        if water < 1 {
            return (false, "no water")
        }
        
        coffee -= 1
        water -= 1
        
        return (true, "capuchino OK")
    }
    
    private func makeAmericano() -> (Bool, String) {
        if coffee < 1 {
            return (false, "no coffee")
        }
        if water < 1 {
            return (false, "no water")
        }
        if milk < 1 {
            return (false, "no milk")
        }
        
        coffee -= 1
        water -= 1
        milk -= 1
        
        return (true, "americano OK")
    }
    
    private func makeLatte() -> (Bool, String) {
        if coffee < 1 {
            return (false, "no coffee")
        }
        if water < 2 {
            return (false, "no water")
        }
        if milk < 2 {
            return (false, "no milk")
        }
        
        coffee -= 1
        water -= 1
        milk -= 1
        
        return (true, "latte OK")
    }
    
    func addCoffee(coffee: Int) -> (Bool, String) {
        if self.coffee + coffee > maxCoffee {
            return (false, "too much coffee")
        }
            
        self.coffee += coffee
        return (true, "coffee was added")
    }
    
    func addWater(water: Int) -> (Bool, String) {
        if self.water + water > maxWater {
            return (false, "too much coffee")
        }
        
        self.water += water
        return (true, "water was added")
    }
    
    func addMilk(water: Int) -> (Bool, String) {
        if self.milk + milk > maxMilk {
            return (false, "too much milk")
        }
        
        self.milk += milk
        return (true, "milk was added")
    }
}
