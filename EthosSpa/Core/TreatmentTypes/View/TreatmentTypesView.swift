//
//  TreatmentTypesView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct TreatmentTypesView: View {
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    NavigationStack {
      VStack {
        VStack(alignment: .leading) {
          HStack{ Spacer() }
          Text("Hello \(viewModel.currentUser?.fullName ?? ""),")
            .padding(.bottom, 3)
            .font(.title2)
          Text("How are you today?")
        }
        .foregroundColor(Color.letterColor)
        .padding()
        
        ScrollView {
          NavigationLink {
            RelaxingMassageDescriptionView()
          } label: {
            RectangleComponent(text: "Ethos Relaxing Massage")
          }
          NavigationLink {
            LymphaticMassageDescription()
          } label: {
            RectangleComponent(text: "Ethos Manual Lymphatic Drainage")
          }
          NavigationLink {
            SculptMassageDescriptionView()
          } label: {
            RectangleComponent(text: "Ethos Sculpt Massage")
          }
          NavigationLink {
            SportMassageDescription()
          } label: {
            RectangleComponent(text: "Ethos Sports  and Stretching Massage")
          }
          NavigationLink {
            CuppingMassageDescriptionView()
          } label: {
            RectangleComponent(text: "Ethos Cupping Massage")
          }
          NavigationLink {
            DetoxMassageDescriptionView()
          } label: {
            RectangleComponent(text: "Ethos Full Detox")
          }
          NavigationLink {
            PreNatalMassageDescriptionView()
          } label: {
            RectangleComponent(text: "Ethos Pre Natal Massage")
          }
          NavigationLink {
            AddonMassageDescription()
          } label: {
            RectangleComponent(text: "Ethos Sculpt Massage Add on")
            
          }
        }
      }
      .background(Color.viewColor)
    } .navigationBarBackButtonHidden(true)
      .accentColor(.letterColor)
  }
}

#Preview {
  TreatmentTypesView()
}
