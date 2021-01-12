//
//  FreshViewModel.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

class FreshViewModel: ObservableObject {
   @Published var freshitems = [
    fresh(id: 0, name: "Frozen Fish", price: "20.00 / pcs",image: "f1"),
    fresh(id: 1, name: "Seedless Lemon", price: "30.00 / kg",image: "f2"),
    fresh(id: 2, name: "Coffee Bread", price: "15.00 / pack",image: "f3")
    ]
}
