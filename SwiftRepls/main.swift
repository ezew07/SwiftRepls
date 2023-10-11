//
//  main.swift
//  SwiftRepls
//
//  Created by Eze, William (IRG) on 11/10/2023.
//

import Foundation

print("Hello, Dr Eze!")

let dict = [
  "in": ["mm": 25.4,"cm": 2.54, "m": 0.0254, "km": 0.0000245],
  "ft": ["mm": 304.8,"cm": 30.48, "m": 0.3048, "km": 0.0003048],
  "yd": ["mm": 914.4,"cm": 91.44, "m": 0.9144, "km": 0.0009144],
  "mi": ["mm": 1609000,"cm": 160934, "m": 1609.34, "km": 1.60934],
  "mm": ["in": 0.0393701,"ft": 0.00328084, "yd": 0.00109361, "mi": 62370000],
  "cm": ["in": 0.393701,"ft": 0.0328084, "yd": 0.0109361, "mi": 0.0000062137],
  "m": ["in": 39.3701,"ft": 3.280841666667, "yd": 1.09361388, "mi": 0.0006213715],
  "km": ["in": 39370.1,"ft": 3280.841666667, "yd": 1093.613888, "mi": 0.621371],
  "mg": ["oz": 0.000035274, "lb": 0.0000022046, "stone":0.00000015747],
  "g": ["oz": 0.035274, "lb": 0.0022046249999752, "stone": 0.0001574732],
  "kg": ["oz": 35.274, "lb": 2.204625, "stone": 0.15747321],
  "t": ["oz": 35274, "lb": 2204.625, "stone": 157.47321],
  "oz": ["mg": 28349.5, "g": 28.3495, "kg": 0.0283495, "t": 0.00002835],
  "lb": ["mg": 453592, "g": 453.591, "kg": 0.453591, "t": 0.0004535],
  "stone": ["mg": 6350000, "g": 6350.29, "kg": 6.350, "t": 0.00635],
]

let value = getDouble(prompt:"Enter your value")
let unit1 = getStr(prompt:"Enter the units of the value")
let unit2 = getStr(prompt:"Enter the units of the desired value")

if let dict1 = dict[unit1] {
  if let dict2 = dict1[unit2] {
    print(value * dict[unit1]![unit2]!)
  }
  else {
    print("Second unit is incorrect")
  }
}
else {
  print("Invalid first unit.")
}
