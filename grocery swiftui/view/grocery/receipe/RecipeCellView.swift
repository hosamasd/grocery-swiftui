//
//  RecipeCellView.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct RecipeCellView: View {
    var data : recipe

    var body: some View {
        
        VStack(spacing: 10){
            
            Image(data.image)
            
            HStack(spacing: 10){
                
                Image(data.authorpic)
                
                VStack(alignment: .leading, spacing: 6){
                    
                    Text(data.name)
                        .fontWeight(.semibold)
                    
                    Text(data.author)
                        .foregroundColor(.green)
                        .fontWeight(.semibold)
                }
            }

        }
    }
}

struct RecipeCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
