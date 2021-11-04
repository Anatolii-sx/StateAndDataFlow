//
//  StartButtonView.swift
//  StateAndDataFlow
//
//  Created by Анатолий Миронов on 04.11.2021.
//

import SwiftUI

struct StartButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        ButtonView(
            title: timer.buttonTitle,
            color: .red,
            action: timer.startTimer
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: TimeCounter())
    }
}
