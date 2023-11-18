//
//  Appointment.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/14/23.
//

import FirebaseFirestore
import Firebase

struct Appointment: Codable, Identifiable {
  var apptId: String
  var clientId: String? = nil
  var appointmentTime: String?
  var date: Date?
  var massageType: String? = nil
  var pressureType: String? = nil
  var total: String?
  
  var id: String {
    apptId
  }
}

struct AppointmentService {
  private static let appointmentsCollection =
  Firestore.firestore().collection("appointments")
  
  static func fetchAppts() async throws -> [Appointment] {
    let snapshot = try await appointmentsCollection.getDocuments()
    let appointments = try snapshot.documents.compactMap ({ try
      $0.data(as: Appointment.self)})
    return appointments
  }
  
  static func fetchApptsByUser() async throws -> [Appointment] {
    guard let uid = Auth.auth().currentUser?.uid else { return [] }
    let snapshot = try await appointmentsCollection.whereField("clientId", isEqualTo: uid).getDocuments()
    let appointments = try snapshot.documents.compactMap ({ try
      $0.data(as: Appointment.self)})
    return appointments
  }
  
  static func updateAppointment(appointment: Appointment) async throws {
    let encodedAppointment = try Firestore.Encoder().encode(appointment)
    try await Firestore.firestore().collection("appointments").document(appointment.apptId).setData(encodedAppointment)
  }
}

extension Date {
    func formattedDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
      formatter.timeStyle = .none
        return formatter.string(from: self)
    }
}
