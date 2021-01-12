//
//  Home.swift
//  Game deison
//
//  Created by hosam on 1/11/21.
//

import SwiftUI

struct GameHome: View {
    
    @StateObject var vm = PlayerViewModel()
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                Text("Your Player")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 10){
                    
                    ForEach(vm.data){i in
                        
                        Card(data: i)
                    }
                }
                .padding(.bottom)
            }
            
            Spacer()
        }
        .background(LinearGradient(gradient: .init(colors: [Color("Color20"),Color("Color10")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct Home_Presviews: PreviewProvider {
    static var previews: some View {
        GameHome()
    }
}
