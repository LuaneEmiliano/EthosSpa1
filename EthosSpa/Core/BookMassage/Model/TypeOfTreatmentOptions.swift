//
//  TypeOfPressureViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import Foundation

enum TypeOfTreatmentOptions: String, CaseIterable {
  case ethosRelaxingMassage
  case ethosManualLymphaticDrainage
  case ethosSculptMassage
  case ethosSportsAndStretchingMassage
  case ethosCuppingMassage
  case ethosFullDetox
  case ethosPreNatalMassage
  case ethosSculptMassageAddOn
  
  var title: String {
    switch self {
    case .ethosRelaxingMassage: return "Ethos Relaxing Massage"
    case .ethosManualLymphaticDrainage: return "Ethos Manual Lymphatic Drainage"
    case .ethosSculptMassage: return "Ethos Sculpt Massage"
    case .ethosSportsAndStretchingMassage: return "Ethos Sports and Stretching Massage"
    case .ethosCuppingMassage: return "Ethos Cupping Massage"
    case .ethosFullDetox: return  "Ethos Full Detox"
    case .ethosPreNatalMassage: return "Ethos Pre Natal Massage"
    case .ethosSculptMassageAddOn: return "Ethos Sculpt Massage Add on"
    }
  }
}

