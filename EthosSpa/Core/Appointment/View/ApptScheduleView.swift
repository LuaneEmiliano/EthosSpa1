//
//  OwnerScheduleView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/13/23.
//

import SwiftUI
import FirebaseFirestore

struct ApptScheduleView: View {
  @StateObject var viewModel = ApptScheduleViewModel()
  
  let columns: [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
  ]
  
  var body: some View {
    VStack {
      HStack(spacing: 50) {
        ForEach(MassageScheduleOptions.allCases, id: \.rawValue) { date in
          Text(date.title)
        }
      }
      
      Divider()
        .padding()
      
      DatePicker("Date", selection: $viewModel.date, in: Date()..., displayedComponents: .date)
      
      LazyVGrid(columns: columns) {
        ForEach(MassageTimesViewModel.allCases, id: \.rawValue) { option in
          Button {
            if viewModel.selectionOption.contains(option.title) {
              viewModel.selectionOption.remove(option.title)
            } else {
              viewModel.selectionOption.insert(option.title)
            }
          } label: {
            ReusableCircle(text: option.title, selection: viewModel.selectionOption)
          }
        }
      }
      
      Button {
        viewModel.createAvailableAppointments()
      } label: {
        Text("Update Schedule")
          .font(.headline)
          .foregroundColor(Color.white)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(Color.orangeButtons)
          .cornerRadius(10)
          .padding(40)
      }
      
      Spacer()
    }
    .padding(.horizontal, 10)
    .background(Color.viewColor)
  }
}

#Preview {
  ApptScheduleView()
}
