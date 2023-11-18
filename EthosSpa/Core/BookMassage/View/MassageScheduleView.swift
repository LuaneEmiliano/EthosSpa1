//
//  MassageScheduleView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct MassageScheduleView: View {
  @StateObject var viewModel = MassageScheduleViewModel()
  
  var body: some View {
    VStack {
      Text("Select your appointment date and time.")
        .font(.title3)
        .foregroundColor(Color.letterColor)
        .padding(.top, 10)
        .padding(.bottom, 20)
      DatePicker("Date", selection: $viewModel.date, in: Date()..., displayedComponents: .date)
      ScrollView {
        VStack(alignment: .leading, spacing: 15) {
          ForEach(viewModel.availableAppointmentsOnDate) { appointment in
            HStack {
              Text(appointment.appointmentTime ?? "")
              Spacer()
              BookingRectangleComponentView(appointment: appointment)
            }
            .padding(.horizontal, 30)
            .padding(.top, 10)
            
          }
        }
      }
    }
    .padding(.horizontal, 20)
    .background(Color.viewColor)
  }
}

#Preview {
  NavigationStack {
    MassageScheduleView()
  }
}
