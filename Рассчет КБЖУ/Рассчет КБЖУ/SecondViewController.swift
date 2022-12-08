//
//  SecondViewController.swift
//  Рассчет КБЖУ
//
//  Created by Анна  Пашкеева on 30.11.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var proteinsLabel: UILabel!
    @IBOutlet weak var fatLabel: UILabel!
    @IBOutlet weak var carbsLabel: UILabel!
    
    
    var caloriesValue: String?
    var proteinsValue: String?
    var fatValue: String?
    var carbsValue: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caloriesLabel.text = caloriesValue
        proteinsLabel.text = proteinsValue
        fatLabel.text = fatValue
        carbsLabel.text = carbsValue

    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
