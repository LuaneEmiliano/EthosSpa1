//
//  BookingMassageRoundedRecView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import SwiftUI

struct BookingMassageRoundedRecView: View {
  var text: String
  var text2: String
  var text3: String
  
    var body: some View {
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color.gray, lineWidth: 2)
          .frame(width: 340, height: 130)
          .padding(.top, 4)
          .overlay(
            VStack(alignment: .leading, spacing: 10) {
                  Text(text)
                      .font(.title2)
                      .foregroundColor(Color.letterColor)
                      .font(.title3)
                    
                Text(text2)
                    .font(.title3)
                    .foregroundColor(Color.letterColor)
                    .font(.title3)
                
                Text(text3)
                    .font(.title3)
                    .foregroundColor(Color.letterColor)
                    .font(.title3)
                  
              }
             
          )
  }
}

#Preview {
  BookingMassageRoundedRecView(text: "Wed Nov8, 2023", text2: "6:00pm - 7:00pm", text3: "Ethos relaxing")
}
