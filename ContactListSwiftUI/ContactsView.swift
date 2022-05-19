//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Евгений Волошенко on 19.05.2022.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(person.fullName) {
                DetailedInfoView(person: person)
            }
        }
        .listStyle(.grouped)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getPersons())
    }
}
