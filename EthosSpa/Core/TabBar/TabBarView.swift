//
//  TabBarView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct TabBarView: View {
  @State private var selectedIndex = 0
  
  var body: some View {
    TabView(selection: $selectedIndex) {
      TreatmentTypesView()
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }.tag(0)
      
      BookingRectangleComponentView()
        .tabItem {
          Image(systemName: "doc.badge.plus")
          Text("Massage")
        }.tag(1)
      
      SettingsView()
        .tabItem {
          Image(systemName: "person")
          Text("Profile")
        }.tag(2)
    }
    .onAppear() {
      UITabBar.appearance().barTintColor = UIColor.viewColors
    }
  }
}

#Preview {
  TabBarView()
}
