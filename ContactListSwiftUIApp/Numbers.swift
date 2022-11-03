//
//  Numbers.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

struct Numbers: View {
   
    let person: [Person]

    var body: some View {
                List (person) { person in 
                    Section("\(person.fullName)", content: {
                        Label("\(person.phoneNumber)", systemImage: "phone.fill")
                        Label("\(person.email)", systemImage: "envelope")
                    })
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Contacts")
            }
            
        }
 

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(person: Person.getPersonList())
    }
}
