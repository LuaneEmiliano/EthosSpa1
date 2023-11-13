//
//  ReusableImage.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct ReusableImage: View {
  var image: Image
  var treatmentTitle: String
  var imageDescription: String
  var procedure1: String
  var procedure2: String
  
  var body: some View {
    VStack {
      ScrollView {
      image
        .resizable()
        .frame(width: 370, height: 250)
        .cornerRadius(10)
        .padding(.top, 10)
        .padding(.bottom, 10)
        VStack {
          Text(treatmentTitle)
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.bottom, 7)
          Text(imageDescription)
            .font(.title3)
            .padding(.bottom, 7)
          
          VStack(alignment: .leading, spacing: 10) {
            Text(procedure1)
              .font(.headline)
            Text(procedure2)
              .font(.headline)
          }
        }
      }
      .foregroundColor(Color.letterColor)
      .padding(.horizontal, 3)
      
      NavigationLink {
        MassageScheduleView()
      } label: {
        Text("Book now")
          .font(.headline)
          .foregroundColor(Color.white)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(Color.orangeButtons)
          .cornerRadius(10)
          .padding(40)
        
      }
      .padding(.horizontal, 20)
    }
    .frame(maxHeight: .infinity)
    .background(Color.viewColor)
    
  }
}
