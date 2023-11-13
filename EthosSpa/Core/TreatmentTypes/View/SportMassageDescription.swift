//
//  SportMassageDescription.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct SportMassageDescription: View {
  var body: some View {
    ReusableImage(image: Image(.sportMassage), treatmentTitle: "Sports and Stretching Massage",
                  imageDescription: "Sports massage is designed specially for athletes. It is used to help prevent injuries, to prepare the body for athletic activity and maintaining an optimal condition, helping athletes recovering from workouts and injuries. Sports massage has three basic forms: pre-event massage, post-event massage, and maintenance massage.Stretching massage is a unique experience that can help loosen tight muscles. Often, pain in a particular area can be related to an imbalance in muscle tissue where one area is too weak and another is overly tight. A stretch can alleviates the tightness. Stretching massage enhances flexibility, improving posture, increasing range of motion and promoting a better circulation.", procedure1: "Procedure duration:  60 minutes - $140",
                  procedure2: "Procedure duration:  90 minutes- $170")
  }
}

#Preview {
  SportMassageDescription()
}
