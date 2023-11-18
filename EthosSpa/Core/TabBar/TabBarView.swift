//
//  TabBarView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct TabBarView: View {
  @State private var selectedIndex = 0
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    TabView(selection: $selectedIndex) {
      if !(viewModel.currentUser?.isOwner ?? false) {
      TreatmentTypesView()
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }.tag(0)
      }
      
      BookingMassageHistoryView()
        .tabItem {
          Image(systemName: "doc.badge.plus")
          Text("Massage")
        }.tag(1)
      
      if viewModel.currentUser?.isOwner ?? false {
        ApptScheduleView()
          .tabItem {
            Image(systemName: "calendar")
            Text("Scheduling")
          }.tag(2)
      }
      
      SettingsView()
        .tabItem {
          Image(systemName: "person")
          Text("Profile")
        }.tag(3)
    }
    .accentColor(Color.orangeButtons)
    .onAppear() {
      UITabBar.appearance().barTintColor = UIColor.viewColors
    }
  }
}

#Preview {
  TabBarView()
}
