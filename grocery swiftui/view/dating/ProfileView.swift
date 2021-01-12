//
//  ProfileView.swift
//  Dating swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct ProfileView: View {
    
    @State var profile : Profile = Profile(id: 0, name: "Annie Watson", image: "p0", age: "27", offset: 0)
    var frame : CGRect = .init()
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            Image(profile.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: frame.width,height: frame.height)
           
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                
                (profile.offset > 0 ? Color.green : Color("Color"))
                    .opacity(profile.offset != 0 ? 0.7 : 0)
                
                HStack{
                    
                    if profile.offset < 0{
                        
                        Spacer()
                    }
                    
                    Text(profile.offset == 0 ? "" : (profile.offset > 0 ? "Liked" : "Rejected"))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 25)
                        .padding(.horizontal)
                    
                    if profile.offset > 0 {
                        
                        Spacer()
                    }
                }
            })
            
            LinearGradient(gradient: .init(colors: [Color.black.opacity(0),Color.black.opacity(0.4)]), startPoint: .center, endPoint: .bottom)
            
            VStack(spacing: 20){
                
                HStack{
                    
                    VStack(alignment: .leading,spacing: 12){
                        
                        Text(profile.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text(profile.age + " +")
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                }
                
                HStack(spacing: 35){
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        withAnimation(Animation.easeIn(duration: 0.8)){
                            
                            profile.offset = -500
                        }
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.all,20)
                            .background(Color("Color"))
                            .clipShape(Circle())
                    })
                    
                    Button(action: {
                        
                        withAnimation(Animation.easeIn(duration: 0.8)){
                            
                            profile.offset = 500
                        }
                        
                    }, label: {
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding(.all,20)
                            .background(Color.green)
                            .clipShape(Circle())
                    })
                    
                    Spacer(minLength: 0)
                }

            }
            .padding(.all)
            
        })
        .cornerRadius(20)
        .offset(x: profile.offset)
        .rotationEffect(.init(degrees: profile.offset == 0 ? 0 : (profile.offset > 0 ? 12 : -12)))
        .gesture(
        
            DragGesture()
                .onChanged({ (value) in
                    
                    onChanged(value: value)
                })
                .onEnded{ (value) in
                 onEneded()
                }
        )
        
    }
    
    func onChanged(value: DragGesture.Value)  {
        withAnimation(.default){
        
            profile.offset = value.translation.width
        }
    }
    
    func onEneded()  {
        withAnimation(.easeIn){
        
            if profile.offset > 150{
                
                profile.offset = 500
            }
            else if profile.offset < -150{
                
                profile.offset = -500
            }
            else{
                
                profile.offset = 0
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
