//
//  DeteilInfoView.swift
//  ContactListSwiftUI
//
//  Created by Евгений Волошенко on 19.05.2022.
//

import SwiftUI

struct DetailedInfoView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "mail")
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailedInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedInfoView(person: Person(firstName: "John", secondName: "Doe", email: "none", phone: "none"))
    }
}
