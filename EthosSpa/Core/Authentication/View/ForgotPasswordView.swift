//
//  ForgotPasswordView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/17/23.
//

import SwiftUI

struct ForgotPasswordView: View {
  @State private var email = ""
  @State private var password = ""
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    VStack {
      Text("Would you like to reset your password?")
        .font(.title2)
        .padding(.bottom, 100)
      VStack {
        CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
          .padding(.horizontal, 20)
        Button {
          Task {
            try await viewModel.resetPassword(email: email)
          }
        } label: {
          Text("Reset Password")
            .font(.headline)
            .foregroundColor(Color.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.orangeButtons)
            .cornerRadius(10)
            .padding(40)
        }
      }
      .alert(isPresented: $viewModel.showAlert, content: {
        Alert(
          title: Text("Alert Title"),
          message: Text(viewModel.alertMessage),
          dismissButton: .default(Text("OK"))
        )
      })
    }
    .padding(.horizontal, 10)
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.viewColor)
  }
}

#Preview {
  ForgotPasswordView()
}
