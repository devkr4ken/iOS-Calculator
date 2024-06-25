//
//  CalcButtonStyle.swift
//  Calculator
//
//  Created by Gabriel Manfré Freitas on 24/06/24.
//

import SwiftUI

struct CalcButtonStyle: ButtonStyle {
    let size: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    var wide: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 30.0, weight: .medium))
            .frame(width: size, height: size)
            .frame(maxWidth: wide ? .infinity : size, alignment: .leading)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .overlay {
                if configuration.isPressed {
                    Color(white: 1.0, opacity: 0.25)
                }
            }
            .clipShape(Capsule())
    }
}

struct CalcButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            
        } label: {
            Text("0")
            
        }
        .buttonStyle(CalcButtonStyle(size: 50.0, backgroundColor:.orange, foregroundColor:.white))
    }
}
