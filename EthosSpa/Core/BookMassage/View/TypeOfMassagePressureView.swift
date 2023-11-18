//
//  TypeOfMassagePressureView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct TypeOfMassagePressureView: View {
  @ObservedObject var viewModel: TypeOfTreatmentViewModel
  
  var body: some View {
    VStack {
      Text("What type of pressure do you want?")
        .padding(.top, 25)
        .font(.title2)
        .foregroundColor(.letterColor)
      
      ScrollView {
        ForEach(TypeOfPressureViewModel.allCases, id: \.rawValue) { item in
          Button {
            viewModel.pressureOption = item.title
          } label: {
            RectangleComponent(text: item.title, selection: viewModel.pressureOption)
          }
        }
      }
      
      NavigationLink {
        ApptConfirmationView(viewModel: viewModel)
      } label: {
        Text("Book your massage")
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

#Preview {
  TypeOfMassagePressureView(viewModel: TypeOfTreatmentViewModel(appointment: Appointment(apptId: UUID().uuidString)))
}
