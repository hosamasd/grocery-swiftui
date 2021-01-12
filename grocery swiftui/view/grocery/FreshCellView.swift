//
//  FreshCellView.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct FreshCellView: View {
    
    var data : fresh
    @State var show = false
    @Namespace var animation

    var body: some View {
        
        ZStack{
            
            NavigationLink(destination: Detail(show: self.$show, data: data, animation: animation), isActive: self.$show) {

            }
            
            VStack(spacing: 10){
                
                Image(data.image)
                
                Text(data.name)
                    .fontWeight(.semibold)
                
                Text(data.price)
                    .foregroundColor(.green)
                    .fontWeight(.semibold)
                
            }
            .onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}

struct FreshCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
