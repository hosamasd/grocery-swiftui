//
//  LockScreen.swift
//  App Lock
//
//  Created by hosam on 12/23/20.
//

import SwiftUI

struct LockScreen: View {
    
    @State var password = ""
    // you can change it when user clicks reset password....
    // AppStorage => UserDefaults....
    @AppStorage("lock_Password") var key = "1111"
    @Binding var unLocked : Bool
    @State var wrongPassword = false
    let height = UIScreen.main.bounds.width < 750 ? true : false
    @State var isType = false
    @State var showAlert = false

    var body: some View {
        
        ZStack {
        
            if showAlert {
//                DispatchQueue.main.async {
                    AlertControlView(textString: $key,
                                     showAlert: $showAlert,
                                     title: "Reset Password",
                                     message: "Type your password here\n defaul pass : \(key)")

            }
            else {
            
        VStack{
            
            HStack{
                
                Spacer(minLength: 0)
                
                
                
              
                
                Menu {

                    Button(action: {
                        print(123)
                    }, label: {
                        Label(
                            title: { Text("Help") },
                            icon: { Image(systemName: "info.circle.fill") })
                    })
                    
                    Button(action: {
                        self.showAlert.toggle()
                    }, label: {
                        Label(
                        title: { Text("Reset Password") },
                        icon: { Image(systemName: "key.fill") })
                    })

                } label: {

                    Image("menu")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 19, height: 19)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .padding(.leading)
            
            
         
            
            Image("logo")
                .resizable()
                .frame(width: 95, height: 95)
                .padding(.top,20)
            
            Text("Enter Pin to Unlock")
                .font(.title2)
                .fontWeight(.heavy)
                .padding(.top,20)
            
            HStack(spacing: 22){
                
                // Password Circle View...
                
                ForEach(0..<4,id: \.self){index in
                    
                    PasswordView(index: index, password: $password)
                }
            }
            // for smaller size iphones...
            .padding(.top,height  ? 20 : 30)
            
            // KeyPad....
            
            Spacer(minLength: 0)
            
            if isType {
                Text(wrongPassword ? "Incorrect Pin" : "Passed!!")
                    .foregroundColor(wrongPassword ? .red : .green)
                    .fontWeight(.heavy)
            }
            
            Spacer(minLength: 0)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3),spacing: height  ? 5 : 15){
                
                // Password Button ....
                
                ForEach(1...9,id: \.self){value in
                    
                    PasswordButton(value: "\(value)",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword, isType: $isType)
                }
                
                PasswordButton(value: "delete.fill",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword, isType: $isType)
                
                PasswordButton(value: "0", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword, isType: $isType)
            }
            .padding(.bottom)
            
        }
        
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        
    }
    
//    func make() -> View {
//        var body: some View {
//        AlertControlView(textString: $textString,
//                         showAlert: $showAlert,
//                         title: "Title goes here",
//                         message: "Message goes here")
//    }
//    }
    
}

struct Home_Psreviews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
