//
//  PlayerViewModel.swift
//  Game deison
//
//  Created by hosam on 1/11/21.
//

import SwiftUI

class PlayerViewModel: ObservableObject {

    @Published var data = [
        
        Player(id: 0, powers: [0.2,0.5,0.9], image: "Player1", name: "Bomb Raider", color: Color("Color20")),
        Player(id: 2, powers: [0.3,0.5,0.6], image: "Player2", name: "Pekka", color: Color("Color10")),
        Player(id: 1, powers: [0.5,0.4,0.8], image: "Player3", name: "Barberian",color: Color("Color10")),

    ]
}
