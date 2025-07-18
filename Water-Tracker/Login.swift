//
//  Login.swift
//  Water-Tracker
//
//  Created by Kaleb on 7/11/25.
//
import SwiftUI


struct Login: View{
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            Text("Welcome Back!")
            TextField("Username", text: $username)
                .frame(width: 200, height: 40)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .background(Color.white)
            SecureField("Password", text: $password)
                .frame(width: 200, height: 40)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .background(Color.white)
            
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        
    }
    
}
#Preview {
    Login()
}
