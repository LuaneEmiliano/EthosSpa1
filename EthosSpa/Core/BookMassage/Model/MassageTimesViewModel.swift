//
//  MassageTimesViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import Foundation

enum MassageTimesViewModel: String, CaseIterable {
  case sevenAm
  case eightAm
  case nineAm
  case tenAm
  case elevenAm
  case noon
  case onePm
  case twoPm
  case threePm
  case fourPm
  case fivePm
  case sixPm
  case sevenPm
  case eightPm
  
  var title: String {
    switch self {
    case .sevenAm: return         "7:00am - 8:00am"
    case .eightAm: return         "8:00am - 9:00am"
    case .nineAm: return          "9:00am - 10:00am"
    case .tenAm: return           "10:00am - 11:00am"
    case .elevenAm: return        "11:00am - 12:00pm"
    case .noon: return            "12:00pm - 1:00pm"
    case .onePm: return           "1:00pm - 2:00pm"
    case .twoPm: return           "2:00pm - 3:00pm"
    case .threePm: return         "3:00pm - 4:00pm"
    case .fourPm: return          "4:00pm - 5:00pm"
    case .fivePm: return          "5:00pm - 6:00pm"
    case .sixPm: return           "6:00pm - 7:00pm"
    case .sevenPm: return         "7:00pm - 8:00pm"
    case .eightPm: return         "8:00pm - 9:00pm"
      
    }
  }
}
