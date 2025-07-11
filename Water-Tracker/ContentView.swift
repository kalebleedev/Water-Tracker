//
//  ContentView.swift
//  Water-Tracker
//
//  Created by Kaleb on 7/10/25.
//

import SwiftUI

enum Route: Hashable{
    case login
    case signUp
}

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                Text("Water-Tracker")
                    .font(.title)
                    .foregroundColor(Color.white)
                
                Image("water-container")
                HStack{
                    Button("Log in"){
                        path.append(Route.login)
                    }
                    .frame(width: 100, height: 44)
                    .background(Color.white)
                    
                    Button("Sign Up"){
                        path.append(Route.signUp)
                    }
                    .frame(width: 100, height: 44)
                    .background(Color.white)
                }
                
                
                
            }
            .navigationDestination(for: Route.self){
                route in switch route{
                case .login:
                    Login()
                case .signUp:
                    SignUp()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
        }
        
        
    }
}

#Preview {
    ContentView()
}
