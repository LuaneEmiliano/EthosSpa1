//
//  ReusableCircle.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/13/23.
//

import SwiftUI

struct ReusableCircle: View {
  let text: String
  let selection: Set<String>
  
  init(text: String, selection: Set<String> = Set<String>()) {
    self.text = text
    self.selection = selection
  }
  
  var isSelected: Bool {
    selection.contains(text)
  }
  
  var body: some View {
    HStack {
      Rectangle()
        .fill(isSelected ? Color.secondary : Color.otherButton)
        .frame(width: 120, height: 80)
        .cornerRadius(10)
        .overlay {
          Text(text)
            .font(.caption)
            .foregroundColor(.white)
        }
    }
    .padding(.horizontal, 10)
  }
}


#Preview {
  ReusableCircle(text: "7:00am - 8:00am")
}
