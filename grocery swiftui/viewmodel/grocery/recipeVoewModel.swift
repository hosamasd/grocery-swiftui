//
//  recipeVoewModel.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

class recipeViewModel: ObservableObject {
    
@Published var recipeitems = [
    recipe(id: 0, name: "Basil Pasta", author: "Karlien Nijhuis",image: "r1",authorpic: "rp1"),
    recipe(id: 1, name: "Banana Rice", author: "Harmen Porter",image: "r2",authorpic: "rp2"),
    recipe(id: 2, name: "Ramen", author: "Marama Peter",image: "r3",authorpic: "rp3")
    ]
}
