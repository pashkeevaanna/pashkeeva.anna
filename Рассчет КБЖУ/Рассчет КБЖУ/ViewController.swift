//
//  ViewController.swift
//  Рассчет КБЖУ
//
//  Created by Анна  Пашкеева on 29.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var targetWeightLabel: UILabel!
    @IBOutlet weak var currentWeightLabel: UILabel!
    @IBOutlet weak var targetWeightSlider: UISlider!
    @IBOutlet weak var currentWeightSlider: UISlider!
    
    @IBAction func targetWeightSliderChanged(_ sender: UISlider) {
        targetWeightLabel.text = calculatorBrain.targetWeightValue(userTargetWeight: sender.value)
    }
    
    @IBAction func currentWeightSliderChanged(_ sender: UISlider) {
        currentWeightLabel.text = calculatorBrain.currentWeightValue(userCurrentWeight: sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
//        let targetWeight = targetWeightSlider.value
//        let currentWeight = currentWeightSlider.value
        
//        calculatorBrain.calculateCalories(userTargetWeight: targetWeight)
//        calculatorBrain.calculateProteins(userTargetWeight: targetWeight)
//        calculatorBrain.calculateFat(userTargetWeight: targetWeight)
//        calculatorBrain.calculateCarbs(userTargetWeight: targetWeight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.caloriesValue = calculatorBrain.calculateCalories(userTargetWeight: targetWeightSlider.value, userCurrentWeight: currentWeightSlider.value)
            destinationVC.proteinsValue = calculatorBrain.calculateCarbs(userTargetWeight: targetWeightSlider.value)
            destinationVC.fatValue = calculatorBrain.calculateFat(userCurrentWeight:  currentWeightSlider.value)
            destinationVC.carbsValue = calculatorBrain.calculateCarbs(userTargetWeight: targetWeightSlider.value)
    }
    
  
    }

}

