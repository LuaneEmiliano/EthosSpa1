//
//  BookingRectangleComponentView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/10/23.
//

import SwiftUI

struct BookingRectangleComponentView: View {
  let appointment: Appointment
  
  var body: some View {
    VStack {
      NavigationLink {
        TypeOfTreatmentView(appointment: appointment)
      } label: {
        RoundedRectangle(cornerRadius: 10)
          .fill(Color.orangeButtons)
          .frame(width: 100, height: 40)
          .padding(.top, 4)
          .overlay(
            VStack {
              Text("Book")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            })
          .padding(.horizontal, 10)
        
      }
    }
  }
}

#Preview {
  BookingRectangleComponentView(appointment: Appointment(apptId: ""))
}
