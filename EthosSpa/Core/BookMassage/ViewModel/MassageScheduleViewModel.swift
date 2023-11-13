//
//  MassageScheduleViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import Foundation

@MainActor
class MassageScheduleViewModel: ObservableObject {
  @Published var selectTime: MassageTimesViewModel = .sevenAm
  @Published var selection = ""
  @Published var date = Date()
  @Published var appointments = [Appointment]()
  
  init() {
    Task { try await fetchAppointments() }
  }
  
  func fetchAppointments() async throws {
    self.appointments = try await AppointmentService.fetchAppts()
  }
}
