//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Анатолий Миронов on 04.11.2021.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .buttonAppearance(color)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", color: .red, action: {})
    }
}
