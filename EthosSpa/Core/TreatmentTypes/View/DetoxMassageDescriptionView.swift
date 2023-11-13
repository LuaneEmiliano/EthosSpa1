//
//  DetoxMassageDescriptionView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct DetoxMassageDescriptionView: View {
    var body: some View {
      ReusableImage(image: Image(.detox),
                      treatmentTitle: "Ethos Full Detox",
                      imageDescription: "An immersive experience, the orthomolecular detox technique combines the sauna blanket and a full body Lymphatic Drainage. Ethos Full Detox it's an organic treatment that reduces symptoms such as swelling, insomnia, body aches and fatigue detoxifying the body and restoring the balance. Ethos Full Detox does not use any invasive procedures or medications that can cause side effects",
                      procedure1: "Procedure duration:  60 minutes - $140",
                      procedure2: "Procedure duration:  90 minutes- $170")
    }
}

#Preview {
    DetoxMassageDescriptionView()
}
