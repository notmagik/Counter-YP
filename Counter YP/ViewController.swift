//
//  ViewController.swift
//  Counter YP
//
//  Created by Магомед on 22.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    var count: Int = 0
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButton.backgroundColor = .blue
        changeButton.tintColor = .white
        
        plusButton.setTitle("+", for: .normal)
        plusButton.backgroundColor = .red
        
        minusButton.setTitle("-", for: .normal)
        minusButton.backgroundColor = .blue
        resetButton.backgroundColor = .green
        
        
        // Do any additional setup after loading the view.
    }


    @IBAction func changeCounterButton(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счетчика: \(count)"
    }
    
    
    @IBAction func plusButtonPressed(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счетчика: \(count)"
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Значение счетчика: \(count)"
        }
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        count = 0
        counterLabel.text = "Значение счетчика: \(count)"
        
    }
}

