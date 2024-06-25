//
//  ContentView.swift
//  Calculator
//
//  Created by Gabriel Manfré Freitas on 24/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    
    var body: some View {
        VStack(spacing: 0.0) {
            Spacer()
            
            HStack {
                Spacer()
                
                Text (viewModel.display.addNumberCommas())
                    .font(.system(size: 90.0, weight: .light))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            
            ForEach(Constants.calcButtons, id: \.self) { row in
                HStack{
                    ForEach(row, id: \.id) { button in
                        CalcButtonView(calcButton: button) {
                            viewModel.buttonPressed(button)
                        }
                        .environmentObject(viewModel)
                    }
                }
                .padding(.bottom, Constants.padding)
            }
        }
        .padding()
        .background(Color.black)
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

