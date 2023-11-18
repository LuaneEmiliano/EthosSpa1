//
//  MassageScheduleViewModel.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/15/23.
//

import Foundation

extension Date {
  func isSameDay(as otherDate: Date) -> Bool {
    let calendar = Calendar.current
    let components1 = calendar.dateComponents([.year, .month, .day], from: self)
    let components2 = calendar.dateComponents([.year, .month, .day], from: otherDate)
    
    return components1.year == components2.year &&
    components1.month == components2.month &&
    components1.day == components2.day
  }
}

@MainActor
class MassageScheduleViewModel: ObservableObject {
  @Published var selectTime: MassageTimesViewModel = .sevenAm
  @Published var selection = ""
  @Published var date = Date()
  @Published var appointments = [Appointment]()
  
  var availableAppointmentsOnDate: [Appointment] {
    let appointmentsWithoutClient = appointments.filter { $0.clientId?.isEmpty ?? false }
    let appointmensOnDate = appointmentsWithoutClient.filter { $0.date?.isSameDay(as: date) ?? false }
    return appointmensOnDate
  }
  
  init() {
    Task { try await fetchAppointments() }
  }
  
  func fetchAppointments() async throws {
    self.appointments = try await AppointmentService.fetchAppts()
  }
  
}
