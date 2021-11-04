//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var user: UserManager
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        Group {
            if storage.status {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
            .environmentObject(StorageManager())
    }
}
