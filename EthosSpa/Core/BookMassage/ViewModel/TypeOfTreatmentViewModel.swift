//
//  TypeOfTreatmentViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import Foundation
import FirebaseAuth

class TypeOfTreatmentViewModel: ObservableObject {
  var appointment: Appointment
  @Published var selection = ""
  @Published var selectionOption = ""
  @Published var selectionFilter: TypeOfPressureViewModel = .soft
  @Published var showConfirmation: Bool = false
  
  init(appointment: Appointment) {
    self.appointment = appointment
  }
  
  func updateAppointment() {
    guard let uid = Auth.auth().currentUser?.uid else { return }
    appointment.clientId = uid
    appointment.massageType = selectionOption
    appointment.pressureType = selection
    
    Task {
      do {
        try await AppointmentService.updateAppointment(appointment: appointment)
        showConfirmation = true
      } catch {
        print(error)
      }
    }
  }
}
