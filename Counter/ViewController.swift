//
//  ViewController.swift
//  Counter
//
//  Created by Admin on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickCounter: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    private var valueCounter = 0
    
    // Наполняем view данными, округляем кнопку, создаем границы, готовим текст лейбла
    override func viewDidLoad() {
        super.viewDidLoad()
        plusButton.layer.cornerRadius = plusButton.frame.size.height / 2
        plusButton.layer.borderWidth = 1
        plusButton.layer.borderColor = UIColor.black.cgColor
        clickCounter.layer.borderWidth = 2
        clickCounter.layer.borderColor = UIColor.black.cgColor
        clickCounter.text = "Значение счетчика: \n \(valueCounter)"
        resetButton.layer.cornerRadius = 5
    }
    
    @IBAction func addValueToCounter(_ sender: Any) {
        valueCounter += 1
        clickCounter.text = "Значение счетчика: \n \(valueCounter)"
    }
    
    @IBAction func counterChangeNotification(_ sender: Any) {
        print("Значение изменено на \(valueCounter + 1)")
    }
    
    @IBAction func resetValueCounter(_ sender: Any) {
        valueCounter = 0
        clickCounter.text = "Значение счетчика: \n \(valueCounter)"
    }
}

