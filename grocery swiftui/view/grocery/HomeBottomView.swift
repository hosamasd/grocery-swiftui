//
//  HomeBottomView.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct HomeBottomView: View {
    
    @Binding var freshitems:[fresh]
    @Binding var recipeitems:[recipe]
    
    var body: some View {
        
        VStack(spacing: 15){
            
            HStack{

                Text("Fresh New Item")
                    .font(.title)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("More")
                    
                }
                .foregroundColor(Color("Color"))
                
            }
            .padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(freshitems){i in
                        
                        FreshCellView(data: i)
                    }
                }
            }
            
            HStack{

                Text("Recipe")
                    .font(.title)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("More")
                    
                }
                .foregroundColor(Color("Color"))
                
            }
            .padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(recipeitems){i in
                        
                        RecipeCellView(data: i)
                    }
                }
            }
            
            
        }
        
    }
}

struct HomeBottomView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
