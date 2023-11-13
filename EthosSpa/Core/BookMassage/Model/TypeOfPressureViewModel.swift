//
//  TypeOfPressureViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import Foundation

enum TypeOfPressureViewModel: String, CaseIterable {
  case soft
  case moderate
  case strong
  
  var title: String {
    switch self {
    case .soft: return "Soft"
    case .moderate: return "Moderate"
    case .strong: return "Strong"
    }
  }
}
