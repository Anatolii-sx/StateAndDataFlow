//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @EnvironmentObject private var user: UserManager
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                    .frame(width: 180)
                Text("\(userName.count)")
                    .foregroundColor(setColorOfCount())
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .disabled(changeButtonActive())
            }
        }
    }
    
    private func setColorOfCount() -> Color {
        let color: Color = (0...2).contains(userName.count) ? .red : .green
        return color
    }
    
    private func changeButtonActive() -> Bool {
        let isButtonActive = (0...2).contains(userName.count) ? true : false
        return isButtonActive
    }
    
    private func registerUser() {
        if !userName.isEmpty, userName.count > 2  {
            user.name = userName
            user.isRegistered.toggle()
            
            storage.name = user.name
            storage.status = user.isRegistered
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
