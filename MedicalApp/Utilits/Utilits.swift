//
//  Utilits.swift
//  MedicalApp
//
//  Created by mobin on 11/2/23.
//

import Foundation
import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
    }
}

struct CapsuleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(
                Capsule()
                                    .stroke(Color.black, lineWidth: 2) //// Change the fill color to your desired color
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0) // Add a slight scaling effect when pressed
    }
}
