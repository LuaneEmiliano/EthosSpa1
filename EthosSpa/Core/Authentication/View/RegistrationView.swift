//
//  RegistrationView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct RegistrationView: View {
  @State var email = ""
  @State var userName = ""
  @State var fullName = ""
  @State var password = ""
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    VStack {
      Spacer()
      VStack(alignment:.leading) {
        HStack{ Spacer() }
        Text("Get started,")
          .font(.title)
        Text("Create your Ethos account.")
          .font(.title)
      }
      .padding()
      .padding(.bottom, 30)
      .foregroundColor(.gray)
      
      VStack(spacing: 40) {
        CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
        CustomInputField(imageName: "person", placeholderText: "Username", text: $userName)
        CustomInputField(imageName: "person", placeholderText: "Full name", text: $fullName)
        CustomInputField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
      }
      .padding(32)
      
      Button {
        Task {
          try await viewModel.createUser(withEmail:email,
                                         password:password,
                                         fullName:fullName,
                                         userName:userName)
        }
      } label: {
        Text("Sign Up")
          .font(.headline)
          .foregroundColor(Color.white)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(Color.orangeButtons)
          .cornerRadius(10)
          .padding(40)
        
      }
      
      .fullScreenCover(isPresented: $viewModel.showOnboardingSheet, content: {
        WelcomeView()
      })
      
      Button {
        presentationMode.wrappedValue.dismiss()
      } label: {
        Text("Already have an account?")
          .font(.caption)
        Text("Sign In")
          .font(.caption)
          .fontWeight(.semibold)
      }
      .padding(.bottom, 32)
      .foregroundColor(Color.otherButton)
      Spacer()
    }
    .background(Color.viewColor)
    .alert(isPresented: $viewModel.showAlert, content: {
      Alert(
        title: Text("Alert Title"),
        message: Text(viewModel.alertMessage),
        dismissButton: .default(Text("OK"))
      )
    })
  }
}

#Preview {
  RegistrationView()
}
