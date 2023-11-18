//
//  ApptScheduleViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import Foundation
import Firebase
import FirebaseStorage

class ApptScheduleViewModel: ObservableObject {
  @Published var selectionOption = Set<String>()
  @Published var date = Date()
  
  func createAvailableAppointments() {
    Task {
      do {
        for option in selectionOption {
          let appointment = Appointment(apptId: UUID().uuidString, clientId: "", appointmentTime: option, date: date, massageType: "", pressureType: "")
          let encodedAppointment = try Firestore.Encoder().encode(appointment)
          try await Firestore.firestore().collection("appointments").document(appointment.apptId).setData(encodedAppointment)
        }
      } catch {
        print("DEBUG: Failed to create user with error \(error.localizedDescription)")
      }
    }
  }
}
