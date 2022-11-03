//
//  ContactDetails.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

struct ContactDetails: View {
    
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .position(x: 150, y: 100)
            HStack {
                Image(systemName: "phone.fill")
                    .foregroundColor(.blue)
                Text("\(person.phoneNumber)")
            }
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
                Text("\(person.email)")
            }
            
            
        }
        .navigationTitle("\(person.fullName)")
        
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person(name: "test", surname: "test", phoneNumber: "test", email: "test"))
    }
}
