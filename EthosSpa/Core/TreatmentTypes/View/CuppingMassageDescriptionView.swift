//
//  CuppingMassageDescriptionView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct CuppingMassageDescriptionView: View {
  var body: some View {
    ReusableImage(image: Image(.cupping), treatmentTitle: "Ethos Cupping Massage", imageDescription: "Cupping therapy is one of the oldest and most effective method of releasing the toxins from body tissue and organs. It is a practice in which the therapist puts special cups on the skin to create suction. This causes the tissue beneath the cup to be drawn up and swell causing increase in blood flow to affected area. Enhanced blood flow under the cups draws impurities and toxins away from the nearby tissues and organs towards the surface for elimination. A hot stone massage is a special type of massage that uses the warm rocks on different points of the body prompting the relaxation and easing tense muscles. The hot stones massage improves circulation helping damaged soft tissues in your body. The rocks are heated before used and the massage therapist it's going to use them on troubled areas during your massage. The hot stones massage therapy promotes a deep relaxation and can be very beneficial to treat anxiety, depression,chronic pain and other muscle illnesses.", procedure1:"Procedure duration:  60 minutes - $140", procedure2:"Procedure duration:  90 minutes- $170")
  }
}

#Preview {
  CuppingMassageDescriptionView()
}
