//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Анатолий Миронов on 04.11.2021.
//

import SwiftUI

struct LogOutButtonView: View {
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        ButtonView(title: "LogOut", color: .blue) {
            userManager.name = ""
            userManager.isRegistered = false
            
            storage.name = ""
            storage.status.toggle()
        }
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
