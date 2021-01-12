//
//  RoundedCorner.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct RoundedCorner : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
