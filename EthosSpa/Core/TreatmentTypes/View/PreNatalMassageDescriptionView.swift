//
//  PreNatalMassageDescriptionView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct PreNatalMassageDescriptionView: View {
    var body: some View {
      ReusableImage(image: Image(.prenatalMassage),
                      treatmentTitle: "Ethos Pre Natal Massage",
                      imageDescription: "Prenatal massage is therapeutic bodywork that focuses on the special needs of the mother-to-be as her body goes through the dramatic changes of pregnancy. It enhances the function of muscles and joints, improves circulation and general body tone, and relieves mental and physical fatigue.",
                      procedure1: "Procedure duration:  60 minutes - $140",
                      procedure2: "Procedure duration:  90 minutes - $170")
    }
}

#Preview {
    PreNatalMassageDescriptionView()
}
