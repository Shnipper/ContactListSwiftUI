//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Евгений Волошенко on 19.05.2022.
//

import SwiftUI

struct NumbersView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(person.fullName) {
                Label(person.phone, systemImage: "phone")
                Label(person.email, systemImage: "mail")
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersons())
    }
}
