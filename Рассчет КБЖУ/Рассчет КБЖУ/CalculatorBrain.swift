//
//  CalculatorBrain.swift
//  Рассчет КБЖУ
//
//  Created by Анна  Пашкеева on 30.11.2022.
//

import UIKit

struct CalculatorBrain {
    
    func targetWeightValue(userTargetWeight: Float) -> String {
        let targetWeight = Int(userTargetWeight)
        return "\(targetWeight) кг"
    }
    
    func currentWeightValue(userCurrentWeight: Float) -> String {
        let currentWeight = Int(userCurrentWeight)
        return "\(currentWeight) кг"
    }
    
    func calculateCarbs(userTargetWeight: Float) -> String {
        let carbsValue = Int(userTargetWeight) * 2
        return "\(Int(carbsValue)) грамм"
    }
    
    func calculateProteins(userTargetWeight: Float) -> String {
        let proteinsValue = Int(userTargetWeight) * 2
        return "\(Int(proteinsValue)) грамм"
    }
    
    func calculateFat(userCurrentWeight: Float) -> String {
        let fatValue = Double(Int(userCurrentWeight)) * 0.75
        return "\(Int(fatValue)) грамм"
    }
    
    func calculateCalories(userTargetWeight: Float, userCurrentWeight: Float) -> String {
        let totalCaloriesValue = 2 * (userTargetWeight * 2 * 4) + (userCurrentWeight * 0.75 * 9)
        return String(Int(totalCaloriesValue))
    }
    
    
}
