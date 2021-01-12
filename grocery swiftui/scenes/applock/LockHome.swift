//
//  Home.swift
//  App Lock
//
//  Created by hosam on 12/23/20.
//

import SwiftUI

struct LockHome: View {
    
    @State var unLocked = false
    @State var showAlert = false
    @State var textString = false
    
    @AppStorage("lock_Password") var key = "1111"
    @AppStorage("lock") var isLocked = false
    
    var body: some View {
        ZStack{
            
            // Lockscreen...
                
                LockScreen(unLocked: $unLocked)
        }
        .preferredColorScheme(unLocked ? .light : .dark)
    }
}

struct Home_Pressviews: PreviewProvider {
    static var previews: some View {
        LockHome()
    }
}
