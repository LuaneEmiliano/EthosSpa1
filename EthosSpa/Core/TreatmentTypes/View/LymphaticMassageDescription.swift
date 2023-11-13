//
//  LymphaticMassageDescription.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct LymphaticMassageDescription: View {
    var body: some View {
      ReusableImage(image: Image(.lymphaticMassage),
                      treatmentTitle: "Ethos Manual Lymphatic Drainage",
                      imageDescription: "Ethos Brazilian Style Lymphatic Drainage it's a detoxifying experience that integrates relaxing sliding movements and stimulation of your lymph nodes, helping your body to reduce and alleviate swelling caused by lymphatic diseases or other body imbalances such  irregular diet and physical activity, hormonal imbalances, pollution and others.Some of the benefits of our detoxifying lymphatic drainage are:  Lessens the appearance of wrinkles, fine lines and puffiness around the eyes, improves the appearance of new scars and minimizes the appearance of old scar tissues (beneficial post operation), excellent ally for sinus congestion and headaches treatment decongesting blocked fluid and improving the blood flow, reduces pain, inflammation and increases the immunity, prevents fluid retention throughout the pregnancy and after, bringing comfort to the pregnant, reduce swellings after long periods of immobility.",
                      procedure1: "Procedure duration:  60 minutes - $150",
                      procedure2: "Procedure duration:  90 minutes - $180")
    }
}

#Preview {
    LymphaticMassageDescription()
}
