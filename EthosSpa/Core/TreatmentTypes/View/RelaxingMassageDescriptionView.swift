//
//  TreatmentDescriptionView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct RelaxingMassageDescriptionView: View {
  var body: some View {
    ReusableImage(image: Image(.relaxingMassage), treatmentTitle: "Ethos Relaxing Massage",
                  imageDescription: "Ethos relaxing Massage signature it's a special sensorial experience combining a gentle manipulation of the body,  healing music and a cozy  aromatized environment.Some of the benefits of our relaxing massage are: General muscle tension relieve and a blood circulation improvement, headache relieve, skin tone and appearance improvement, gastrointestinal motility, bowel movement and overall digestion flowing, better range of motion, faster recovery of soft tissues injuries.",
                  procedure1: "Procedure duration:    60 minutes - $90", procedure2: "Procedure duration:    90 minutes- $130")
  }
}

#Preview {
  RelaxingMassageDescriptionView()
}
