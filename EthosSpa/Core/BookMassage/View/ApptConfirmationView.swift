//
//  ApptConfirmationView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct ApptConfirmationView: View {
  @ObservedObject var viewModel: TypeOfTreatmentViewModel
  
    var body: some View {
      VStack(alignment: .leading) {
         Spacer()
        Text("Your appointment has been confirmed!")
          .padding(.top, 30)
          .font(.title)
          .foregroundColor(.letterColor)
          .fontWeight(.semibold)
          .multilineTextAlignment(.leading)
          .padding(.bottom, 20)
        
        VStack(alignment: .leading, spacing: 5) {
          Text("Tuesday, November 17, 2023")
          Text(viewModel.appointment.appointmentTime ?? "")
          Text("Huntington Beach, CA")
          Text("Pacific city, 317")
          Text("Ethos Relaxing Massage")
          Text("Total: $140")
        }
        Spacer()
        .font(.title3)
        .foregroundColor(.letterColor)
        
        .ignoresSafeArea()
      }
      .frame(maxWidth: .infinity)
      .background(Color.viewColor)
    }
}

#Preview {
  ApptConfirmationView(viewModel: TypeOfTreatmentViewModel(appointment:Appointment()))
}
