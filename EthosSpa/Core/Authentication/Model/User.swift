//
//  User.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/14/23.
//

import Foundation

struct User: Identifiable, Codable {
  let id: String
  let fullName: String
  let email: String
  let isOwner: Bool
  
  var initials: String {
    let formatter = PersonNameComponentsFormatter()
    if let components = formatter.personNameComponents(from: fullName) {
      formatter.style = .abbreviated
      return formatter.string(from: components)
    }
    return ""
  }
}
