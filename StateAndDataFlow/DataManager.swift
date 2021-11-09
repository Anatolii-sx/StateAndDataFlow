//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Анатолий Миронов on 03.11.2021.
//

import SwiftUI

//final class DataManager: ObservableObject {
//    @AppStorage("name") var name = ""
//    @AppStorage("status") var status = false
//}

class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func getUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
    }
}
