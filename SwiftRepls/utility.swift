//
//  utility.swift
//  SwiftRepls
//
//  Created by Eze, William (IRG) on 11/10/2023.
//

import Foundation

func getInt(prompt: String) -> Int {
  print(prompt)
  if let input = readLine(){
    if let integer = Int(input){
      return integer
    }
  }
  return -1
}
 
func getStr(prompt: String) -> String {
  print(prompt)
  if let input = readLine(){
    return input
  }
  return "-1"
}
 
func getDouble(prompt: String) -> Double{
  print(prompt)
  if let input = readLine(){
    if let double = Double(input){
      return double
    }
  }
  return -1.0
}

func round(_ number: Double, places decimalPlaces: Int) -> Double {
    let multiplier = pow(10.0, Double(decimalPlaces))
    return round(number * multiplier) / multiplier
}
