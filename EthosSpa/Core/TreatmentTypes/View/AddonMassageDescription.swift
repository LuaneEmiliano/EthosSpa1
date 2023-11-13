//
//  AddonMassageDescription.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct AddonMassageDescription: View {
    var body: some View {
      ReusableImage(image: Image(.faceMassage),
                     treatmentTitle: "Ethos Scalp Massage Add On",
                     imageDescription: "A head massage designed to relax the mind and encourage circulation. Many times, tension is felt within the head and neck, so scalp massages can be very effective as a stress reducer.",
                     procedure1: "Procedure duration:  60 minutes - $120",
                     procedure2: "Procedure duration:  90 minutes - $150")
    }
}

#Preview {
    AddonMassageDescription()
}
