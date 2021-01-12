//
//  DatingHome.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct DatingHome: View {
    
    @StateObject var vm = ProfileViewModel()
    @State var isRenew = false
    
    var body: some View {
        
        VStack{
            
            HStack(spacing: 15){
                
                Button(action: {}, label: {
                    
                    Image("menu_1")
                        .renderingMode(.template)
                })
                
                Text("Blind Dating")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    isRenew.toggle()
                }, label: {
                    
                    Image("noti")
                        .renderingMode(.template)
                })
            }
            .foregroundColor(.black)
            .padding()
            
            GeometryReader{g in
                
                ZStack{
                    
                    if isRenew {
                        
                        ForEach(vm.profiles.reversed()){profile in
                            ProfileView(profile: profile,frame: g.frame(in: .global))
                        }
                    }else {
                        
                        ForEach(vm.profiles.reversed()){profile in
                            ProfileView(profile: profile,frame: g.frame(in: .global))
                        }
                    }
                }
            }
            .padding([.horizontal,.bottom])
            
            
        }
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}

struct DatingHome_Previews: PreviewProvider {
    static var previews: some View {
        DatingHome()
    }
}
