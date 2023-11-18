//
//  SettingsRowView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/14/23.
//

import SwiftUI

struct SettingsRowView: View {
  let imageName: String
  let title: String
  let tintColor: Color
  
    var body: some View {
      HStack(spacing: 12) {
        Image(systemName: imageName)
        .imageScale(.small)
        .font(.title)
        .foregroundColor(tintColor)
        Text(title)
          .font(.subheadline)
          .foregroundColor(Color.letterColor)
      }
    }
}

#Preview {
  SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
}
