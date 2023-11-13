//
//  SettingsView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/14/23.
//

import SwiftUI

struct SettingsView: View {
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    if let user = viewModel.currentUser {
       List {
          Section {
            HStack {
              Text(user.initials)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 72, height: 72)
                .background(Color(.systemGray6))
                .clipShape(Circle())
              
              VStack {
                Text(user.fullName)
                  .fontWeight(.semibold)
                  .padding(.top, 4)
                
                Text(user.email)
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
             Button {
              print("Delete Account")
            } label: {
              SettingsRowView(imageName: "xmark.circle.fill",
                              title: "Delete Account",
                              tintColor: .red)
            }
          }
        }
       .background(Color.viewColor)
      }
    }
  }


#Preview {
  NavigationStack {
    SettingsView()
  }
}
