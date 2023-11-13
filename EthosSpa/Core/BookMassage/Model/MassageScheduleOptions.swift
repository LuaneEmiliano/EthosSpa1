//
//  MassageScheduleViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import Foundation

enum MassageScheduleOptions: String, CaseIterable {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  
  var title: String {
    switch self {
    case .monday: return "M"
    case .tuesday: return "T"
    case .wednesday: return "W"
    case .thursday: return "TH"
    case .friday: return "F"
    case .saturday: return "S"
      
    }
  }
}
