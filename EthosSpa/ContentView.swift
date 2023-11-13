//
//  ContentView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    Group {
      if viewModel.userSession == nil {
        LoginView()
      } else {
        TabBarView()
      }
    }
  }
}

#Preview {
  ContentView()
}
