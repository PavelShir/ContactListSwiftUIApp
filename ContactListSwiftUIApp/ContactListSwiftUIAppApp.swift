//
//  ContactListSwiftUIAppApp.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

@main
struct ContactListSwiftUIAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(person: Person(name: "", surname: "", phoneNumber: "", email: ""))
        }
    }
}
