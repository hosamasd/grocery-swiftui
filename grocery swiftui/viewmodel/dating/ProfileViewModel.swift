//
//  ProfileViewModel.swift
//  Dating swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
   @Published var profiles = [
    
    Profile(id: 0, name: "Annie Watson", image: "p0", age: "27", offset: 0),
    Profile(id: 1, name: "Clarie", image: "p1", age: "19", offset: 0),
    Profile(id: 2, name: "Catherine", image: "p2", age: "25", offset: 0),
    Profile(id: 3, name: "Emma", image: "p3", age: "26", offset: 0),
    Profile(id: 4, name: "Juliana", image: "p4", age: "20", offset: 0),
    Profile(id: 5, name: "Kaviya", image: "p5", age: "22", offset: 0),
    Profile(id: 6, name: "Jill", image: "p6", age: "18", offset: 0),
    Profile(id: 7, name: "Terasa", image: "p7", age: "29", offset: 0),
]
    
    
}
