//
//  EthosSpaApp.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI
import Firebase

@main
struct EthosSpaApp: App {
  @StateObject var viewModel = AuthViewModel()
  
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      NavigationView {
      ContentView()
        //SettingsView()
        }
      .environmentObject(viewModel)
    }
  }
}
