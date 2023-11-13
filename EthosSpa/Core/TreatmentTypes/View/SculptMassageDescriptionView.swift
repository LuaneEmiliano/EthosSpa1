//
//  SculptMassageDescriptionView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/9/23.
//

import SwiftUI

struct SculptMassageDescriptionView: View {
    var body: some View {
      ReusableImage(image: Image(.sculptMassage), treatmentTitle: "Ethos Sculpt Massage", imageDescription: "Ethos Sculpt it's a renewing massage treatment that uses advanced techniques including dry brushing, wooden-tools and cupping therapy achieving a full-body detox.  which will leave previously inflamed areas, scar tissue, with a flatter and smoother appearance.Designed to tone and smooth the skin, Ethos Sculpt visibly changes the appearance of cellulite, stimulating the circulation, draining built up fluids, breaking down areas of scar tissue, and smoothing areas of inflammation on your body.", procedure1: "Procedure duration:  60 minutes - $150", procedure2: "Procedure duration:  90 minutes- $180")
    }
}

#Preview {
    SculptMassageDescriptionView()
}
