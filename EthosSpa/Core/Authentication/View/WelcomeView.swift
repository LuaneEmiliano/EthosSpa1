//
//  WelcomeView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct WelcomeView: View {
  
  
  var body: some View {
    VStack {
      Spacer()
      //Logo
      Image(.logoEthos)
        .resizable()
        .foregroundColor(Color.white)
        .frame(width: 220, height: 220)
        .padding(.bottom, 100)
      HStack { Spacer() }
      Text("Welcome to ")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.gray)
        .padding(.bottom, 3)
      Text("Ethos Spa!")
        .font(.largeTitle)
        .foregroundColor(.gray)
        .fontWeight(.semibold)
      
      Spacer()
    }
    .background(Color.viewColor)
  }
}

#Preview {
    WelcomeView()
}
