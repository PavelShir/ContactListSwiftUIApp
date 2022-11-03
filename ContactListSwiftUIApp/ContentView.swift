//
//  ContentView.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    let person: Person
    
    var body: some View {
        TabView {
            ContactList()
                .tabItem {
                    Label("Contacts", systemImage: "person.fill")
                }
            Numbers(person: Person(name: person.name, surname: person.surname, phoneNumber: person.phoneNumber, email: person.email))
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(person: Person(name: "", surname: "", phoneNumber: "", email: ""))
    }
}
