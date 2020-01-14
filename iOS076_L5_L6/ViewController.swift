//
//  ViewController.swift
//  iOS076_L5_L6
//
//  Created by Alexandr on 14.01.2020.
//  Copyright © 2020 Alexandr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var coffeeMachine: CoffeeMachine  = CoffeeMachine()
    
    @IBOutlet weak var labelStatus: UILabel!
    @IBOutlet weak var labelCapacity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        showCapacity()
    }

    @IBAction func cappuccinoButtonPressed(_ sender: UIButton) {
        let result = coffeeMachine.makeCoffee(.cappuccino)
        labelStatus.text = result.1
        showCapacity()
    }
    
    @IBAction func americanoButtonPressed(_ sender: UIButton) {
        let result = coffeeMachine.makeCoffee(.americano)
        labelStatus.text = result.1
        showCapacity()
    }
    
    @IBAction func latteButtonPressed(_ sender: Any) {
        let result = coffeeMachine.makeCoffee(.latte)
        labelStatus.text = result.1
        showCapacity()
    }
    
    @IBAction func addCoffeeButtonPressed(_ sender: UIButton) {
        let result = coffeeMachine.addCoffee(coffee: 5)
        labelStatus.text = result.1
        showCapacity()
    }
    
    @IBAction func addWaterButtonPressed(_ sender: UIButton) {
        let result = coffeeMachine.addWater(water: 5)
        labelStatus.text = result.1
        showCapacity()
    }
    
    @IBAction func addMilkButtonPressed(_ sender: UIButton) {
        let result = coffeeMachine.addMilk(water: 5)
        labelStatus.text = result.1
        showCapacity()
    }
    
    private func showCapacity() {
        labelCapacity.text = "coffee: \(coffeeMachine.capacity.0) water:\(coffeeMachine.capacity.1), milk\(coffeeMachine.capacity.2)"
    }
}

