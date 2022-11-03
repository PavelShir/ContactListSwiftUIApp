//
//  Numbers.swift
//  ContactListSwiftUIApp
//
//  Created by 19543442 on 01.11.2022.
//

import SwiftUI

struct Numbers: View {
   
    let person: Person

    var body: some View {
                List {
                    Section("\(person.fullName)", content: {
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
                    })
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Contacts")
            }
            
        }
 

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(person: Person(name: "test", surname: "test", phoneNumber: "test", email: "test"))
    }
}
