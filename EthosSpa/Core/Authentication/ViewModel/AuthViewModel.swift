//
//  AuthViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore

//protocol AutomaticFormProtocol {
//  var formIsValid: Bool { get }
//}

@MainActor
class AuthViewModel: ObservableObject {
  @Published var showAlert = false
  @Published var alertMessage = ""
  @Published var showOnboardingSheet: Bool = false
  @Published var userSession: FirebaseAuth.User? {
    didSet {
      print("userSession \(userSession)")
    }
  }
  @Published var currentUser: User? {
    didSet {
      print("currentUser \(userSession)")
    }
  }
  
  init() {
    self.userSession = Auth.auth().currentUser
    Task {
      await fetchUser()
    }
    
  }
  //Sign In
  func login(withEmail email: String, password: String) async throws {
    do {
      let result = try await Auth.auth().signIn(withEmail: email, password: password)
      self.userSession = result.user
      await fetchUser()
    } catch {
      alertMessage = error.localizedDescription
      showAlert.toggle()
    }
  }
  
  func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      self.userSession = result.user
      let user = User(id: result.user.uid, fullName: fullName, email: email, isOwner: false)
      let encodedUser = try Firestore.Encoder().encode(user)
      try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
      await fetchUser()
      showOnboardingSheet = true
    } catch {
      alertMessage = error.localizedDescription
      showAlert.toggle()
    }
  }
  
  func signOut() {
    do {
      try Auth.auth().signOut()// signs out user of the account
      self.userSession = nil
      self.currentUser = nil
    } catch {
      print("failed to sign out\(error.localizedDescription)")
    }
  }
  
  func deleteAccount()  {
    Auth.auth().currentUser?.delete()
    self.userSession = nil
    self.currentUser = nil
  }
  
  func resetPassword(email: String) async throws {
    Task {
      do {
        try await Auth.auth().sendPasswordReset(withEmail: email)
        alertMessage = "An email will be sent to you shortly."
        showAlert.toggle()
      } catch {
        print(error.localizedDescription)
        alertMessage = error.localizedDescription
        showAlert.toggle()
      }
    }
  }
  
  func fetchUser() async {
    guard let uid = Auth.auth().currentUser?.uid else { return }
    guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
    self.currentUser = try? snapshot.data(as: User.self)
    
  }
}
