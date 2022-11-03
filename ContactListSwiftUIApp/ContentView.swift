//
//  ContentView.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactList(person: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.fill")
                }
            Numbers(person: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
