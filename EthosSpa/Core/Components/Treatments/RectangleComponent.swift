//
//  RectangleComponent.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct RectangleComponent: View {
  let text: String
  let selection: String
  
  init(text: String, selection: String = "") {
    self.text = text
    self.selection = selection
  }
  
  var isSelected: Bool {
    text == selection
  }
  
  var body: some View {
    VStack {
      RoundedRectangle(cornerRadius: 10)
        .fill(isSelected ? Color.secondary : Color.otherButton)
        .frame(width: 370, height: 70)
        .padding(.top, 4)
        .overlay(
          VStack {
            Text(text)
              .font(.headline)
              .fontWeight(.semibold)
              .foregroundColor(.white)
          })
        .padding(.horizontal, 10)
    }
  }
}

#Preview {
  RectangleComponent(text: "Hello", selection: "Hello")
}
