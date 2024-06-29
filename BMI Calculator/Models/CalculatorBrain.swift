//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emir Safa Yavuz on 29.06.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        if let bmiValue = bmi?.value {
            return String(format: "%.1f", bmiValue)
        } else {
            return "0.0"
        }
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
