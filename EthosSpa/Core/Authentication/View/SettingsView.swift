//
//  SettingsView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/14/23.
//

import SwiftUI

struct SettingsView: View {
  @EnvironmentObject var viewModel: AuthViewModel
  @State var showAlert: Bool = false
  @State var color: Color = Color.red
  
  var body: some View {
    NavigationStack {
      List {
        Section {
          HStack {
            Text(viewModel.currentUser?.initials ?? "")
              .font(.title)
              .fontWeight(.semibold)
              .foregroundColor(.white)
              .frame(width: 72, height: 72)
              .background(Color(.systemGray6))
              .clipShape(Circle())
            
            VStack {
              Text(viewModel.currentUser?.fullName ?? "")
                .fontWeight(.semibold)
                .padding(.top, 4)
              
              Text(viewModel.currentUser?.email ?? "")
                .font(.footnote)
                .foregroundColor(.gray)
            }
          }
        }
        Section("General") {
          HStack {
            SettingsRowView(imageName: "gear",
                            title: "Version",
                            tintColor: Color(.systemGray))
            Spacer()
            Text("1.0.0")
              .font(.subheadline)
              .foregroundColor(.gray)
            
          }
        }
        Section("Account") {
          Button {
            viewModel.signOut()
          } label: {
            SettingsRowView(imageName: "arrow.left.circle.fill",
                            title: "Sign Out",
                            tintColor: .red)
          }
          Button() {
            showAlert.toggle()
          } label: {
            SettingsRowView(imageName: "xmark.circle.fill",
                            title: "Delete Account",
                            tintColor: .red)
          }
          .alert("Do you want to delete your Ethos account?", isPresented: $showAlert) {
            Button(role: .destructive) {
              viewModel.deleteAccount()
            } label: {
              Text("Delete")
            }
          }
        }
      }
      .background(Color.viewColor)
      .scrollContentBackground(.hidden)
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
  }
}

#Preview {
  NavigationStack {
    SettingsView()
  }
}
