//
//  ContentView.swift
//  grocery swiftui
//
//  Created by hosam on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var selected = "Home"
    @AppStorage("active_main") var activeMain = false

    var body: some View {
        
        ZStack {
            
            if !activeMain {
                LockContentView()
            }
            else {
        
            
        NavigationView{


            VStack{

                if self.selected == "Home"{

                    Home()
                }
                else if self.selected == "Tinder"{
                    DatingContentView()
                }
                else{
                    GameContentView()
                }

                CustomTabView(selected: $selected)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)

        }
    }
        }
        .preferredColorScheme(activeMain ? .light : .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
