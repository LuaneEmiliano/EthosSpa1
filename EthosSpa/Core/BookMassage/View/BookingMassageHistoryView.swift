//
//  BookingMassageHistoryView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import SwiftUI

struct BookingMassageHistoryView: View {
  @StateObject var viewModel = MassageHistoryViewModel()
  
  var body: some View {
    NavigationStack {
      VStack {
        ScrollView(.vertical) {
          if viewModel.apptByUser.isEmpty {
            Text("You don't have any appointment scheduled yet 🙁.")
              .font(.title2)
              .fontWeight(.semibold)
              .foregroundColor(Color.letterColor)
              .padding(.top, 10)
              } else {
            ForEach(viewModel.apptByUser) { appointment in
              BookingMassageRoundedRecView(text: appointment.date?.formattedDateString() ?? "",
                                           text2: appointment.appointmentTime ?? "",
                                           text3:appointment.massageType ?? "")
            }
          }
        }
        .navigationTitle("Massage History")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.viewColor)
      }
    }
  }
}

#Preview {
  BookingMassageHistoryView()
}
