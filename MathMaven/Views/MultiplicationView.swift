//
//  MultiplicationView.swift
//  MathMaven
//
//  Created by Russell Gordon on 2023-05-24.
//

import SwiftUI

struct MultiplicationView: View {
    
    //MARK: Stoored properties
    
    // The numbers to be multiplied
    @State var firstValue = Int.random(in: 1...72)
    @State var secondValue = Int.random(in: 1...72)
    
    // Holds whatever input was provided by the user
    @State var input = ""
    
    // Has the user's answer been checked?
    @State var answerChecked = false
    
    // Was the user's given answer correct?
    @State var answerCorrect = false
    
    // MARK: Computed properties
    
    //The correct response
    var correctResponse: Int {
        return firstValue * secondValue
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            // 1.Present question
            Group {
                HStack {
                    Text(Operation.multiplication.rawValue)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("\(firstValue)")
                        Text("\(secondValue)")
                        
                        
                    }
                }
                Divider()
            }
            .padding(.horizontal)
            
            // 2. Accept answer
            HStack {
                
                ZStack {
                    //Only show this when the answer was found to be correct
                    if answerCorrect == true {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                    }
                    
                    //Show this when the answer was
                }
            }
            
            
        }
        .font(Font.custom("SF Pro", size: 64))
    }
}

struct MultiplicationView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplicationView()
    }
}
