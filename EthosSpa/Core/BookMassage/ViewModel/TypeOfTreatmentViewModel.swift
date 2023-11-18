//
//  TypeOfTreatmentViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import Foundation
import FirebaseAuth

@MainActor
class TypeOfTreatmentViewModel: ObservableObject {
  @Published var appointment: Appointment
  @Published var typeOfTreatmentOption = ""
  @Published var pressureOption = ""
  @Published var selectionFilter: TypeOfPressureViewModel = .soft
  @Published var showConfirmation: Bool = false
  
  init(appointment: Appointment) {
    self.appointment = appointment
  }
  
  func updateAppointment() {
    guard let uid = Auth.auth().currentUser?.uid else { return }
    appointment.clientId = uid
    appointment.massageType = typeOfTreatmentOption
    appointment.pressureType = pressureOption
    
    Task {
      do {
        try await AppointmentService.updateAppointment(appointment: appointment)
        print(appointment)
        showConfirmation = true
      } catch {
        print(error)
      }
    }
  }
}
