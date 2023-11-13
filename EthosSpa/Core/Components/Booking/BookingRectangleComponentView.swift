//
//  BookingRectangleComponentView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/10/23.
//

import SwiftUI

struct BookingRectangleComponentView: View {
  var body: some View {
    VStack {
      NavigationLink {
        TypeOfTreatmentView(appointment: Appointment())
      } label: {
        RoundedRectangle(cornerRadius: 10)
          .fill(Color.orangeButtons)
          .frame(width: 70, height: 40)
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
  BookingRectangleComponentView()
}
