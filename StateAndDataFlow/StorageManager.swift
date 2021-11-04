//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Анатолий Миронов on 03.11.2021.
//

import SwiftUI

final class StorageManager: ObservableObject {
    @AppStorage("name") var name = ""
    @AppStorage("status") var status = false
}
