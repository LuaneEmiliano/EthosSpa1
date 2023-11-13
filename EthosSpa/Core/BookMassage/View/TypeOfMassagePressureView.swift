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
    NavigationStack {
      VStack {
        Text("What type of pressure do you want?")
          .padding(.top, 25)
          .font(.title2)
          .foregroundColor(.letterColor)
        
        ScrollView {
          ForEach(TypeOfPressureViewModel.allCases, id: \.rawValue) { item in
            Button {
              viewModel.selectionOption = item.title
            } label: {
              RectangleComponent(text: item.title, selection: viewModel.selectionOption)
            }
          }
        }
        
        Button {
          viewModel.updateAppointment()
        } label: {
          Text("Book your massage")
            .font(.headline)
            .foregroundColor(Color.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.orangeButtons)
            .cornerRadius(10)
            .padding(40)
        }
      }
      .background(Color.viewColor)
      .sheet(isPresented: $viewModel.showConfirmation, content: {
        ApptConfirmationView(viewModel: viewModel)
      })
    }
    .accentColor(.letterColor)
  }
}
#Preview {
  TypeOfMassagePressureView(viewModel: TypeOfTreatmentViewModel(appointment: Appointment()))
}
