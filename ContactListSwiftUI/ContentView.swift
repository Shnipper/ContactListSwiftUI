//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Евгений Волошенко on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPersons()

    var body: some View {
        
        NavigationView {
            TabView {
                ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
                NumbersView(persons: persons)
                .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
