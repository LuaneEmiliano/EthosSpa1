//
//  MassageHistoryViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/16/23.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore

@MainActor
class MassageHistoryViewModel: ObservableObject {
  @Published var apptByUser = [Appointment]()
  
  init() {
    Task { try await fetchAppointmentsByUser()}
  }
  
  func fetchAppointmentsByUser() async throws {
    guard let uid = Auth.auth().currentUser?.uid else { return }
    guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
    let currentUser = try? snapshot.data(as: User.self)
    
    if currentUser?.isOwner ?? false {
      let appts = try await AppointmentService.fetchAppts()
      let scheduledAppts = appts.filter { appt in
        guard let clientId = appt.clientId else { return false }
        return !clientId.isEmpty
      }
      self.apptByUser = scheduledAppts
    } else {
      self.apptByUser = try await AppointmentService.fetchApptsByUser()
    }
  }
}
