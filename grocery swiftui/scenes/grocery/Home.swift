//
//  Home.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct Home: View {
    
    @State var txt = ""
    @StateObject var mvm = MainViewModel()
    @StateObject var fvm = FreshViewModel()
    @StateObject var rvm = recipeViewModel()
    
    var body: some View {
        
        VStack(spacing: 15){
            
            HStack(spacing: 12){
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                
                Text("Hi, Hosam")
                    .font(.body)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("filter")
                        .renderingMode(.original)
                }
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15){
                    
                    HStack(spacing: 15){
                        
                        HStack{
                            
                            Image(systemName: "magnifyingglass").font(.body)
                            
                            TextField("Search Groceries", text: $txt)
                            
                        }.padding(10)
                        .background(Color("Color1"))
                        .cornerRadius(20)
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("mic").renderingMode(.original)
                        }
                    }
                    
                    Image("top")
                        .resizable()
                        .overlay(
                            
                            VStack{
                                
                                Spacer()
                                
                                HStack{
                                    
                                    Text("GET 20% OFF")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                    
                                }
                                .padding()
                            }
                            
                        )
                    
                    HStack{
                        
                        Text("Categories")
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
                            
                            ForEach(mvm.categories,id: \.self){i in
                                
                                VStack{
                                    
                                    Image(i)
                                        .renderingMode(.original)
                                    
                                    Text(i)
                                }
                            }
                        }
                    }
                    
                    HomeBottomView(freshitems: $fvm.freshitems, recipeitems: $rvm.recipeitems)
                    
                }
                
            }
            
        }
        .padding(.horizontal)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
