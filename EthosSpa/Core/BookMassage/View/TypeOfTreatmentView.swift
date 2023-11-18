//
//  TypeOfMassagePressureView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct TypeOfTreatmentView: View {
  @StateObject var viewModel: TypeOfTreatmentViewModel
  
  init(appointment: Appointment) {
    self._viewModel = StateObject(wrappedValue: TypeOfTreatmentViewModel(appointment: appointment))
  }
  
  var body: some View {
    ZStack {
      VStack {
        Text("What treatment do you want today?")
          .padding(.top, 30)
          .font(.title2)
          .foregroundColor(.letterColor)
        
        ScrollView {
          ForEach(TypeOfTreatmentOptions.allCases, id: \.rawValue) { option in
            Button {
              viewModel.typeOfTreatmentOption = option.title
            } label: {
              RectangleComponent(text: option.title, selection:  viewModel.typeOfTreatmentOption)
            }
          }
        }
        
        NavigationLink {
          TypeOfMassagePressureView(viewModel: viewModel)
        } label: {
          Text("Continue")
            .font(.headline)
            .foregroundColor(Color.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.orangeButtons)
            .cornerRadius(10)
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .padding(.horizontal, 20)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color.viewColor)
      .accentColor(.letterColor)
    }
  }
}

#Preview {
  TypeOfTreatmentView(appointment: Appointment(apptId: UUID().uuidString))
}
