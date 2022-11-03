//
//  SwiftUIView.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

struct ContactList: View {
    
    let contacts = Person.getPersonList()

    var body: some View {
        NavigationView {
            VStack {
                List(contacts) { contact in
                    NavigationLink(destination: ContactDetails(person: contact)) {
                        Text("\(contact.name) \(contact.surname)")
                    }
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
