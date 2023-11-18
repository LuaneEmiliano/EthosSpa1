//
//  ApptConfirmationView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct ApptConfirmationView: View {
  @ObservedObject var viewModel: TypeOfTreatmentViewModel
  @EnvironmentObject var authViewModel: AuthViewModel
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    VStack(alignment: .leading) {
      NavigationLink{
        TreatmentTypesView()
      } label: {
        Text("")
        Image(systemName: "xmark.circle.fill")
          .resizable()
          .frame(width: 35, height: 35)
          .foregroundColor(Color.letterColor)
      }.navigationBarBackButtonHidden(true)
        .padding(.top, 20)
      
      Text("Your appointment has been confirmed!")
        .padding(.top, 50)
        .font(.title)
        .foregroundColor(.letterColor)
        .fontWeight(.semibold)
        .multilineTextAlignment(.leading)
        .padding(.bottom, 20)
      
      VStack(alignment: .leading, spacing: 5) {
        Text("We can't wait to see you  \(authViewModel.currentUser?.fullName ?? "")😀")
          .padding(.bottom, 10)
        Text(viewModel.appointment.date?.formattedDateString() ?? "")
        Text(viewModel.appointment.appointmentTime ?? "")
        Text("Massage type: \(viewModel.appointment.massageType ?? "")")
        Text("Pressure type: \(viewModel.appointment.pressureType ?? "")")
        Text("21058 Pacific city - Salon Republic, 307")
        Text("Huntington Beach, CA - 92648")
        Text("Phone number: +1 (951) 459-6850")
        Text("Email: ethos.spa.llc@gmail.com")
      }
      Spacer()
        .font(.title3)
        .foregroundColor(.letterColor)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.viewColor)
    .onAppear {
      viewModel.updateAppointment()
    }
  }
}

#Preview {
  ApptConfirmationView(viewModel: TypeOfTreatmentViewModel(appointment:Appointment(apptId: UUID().uuidString)))
}
