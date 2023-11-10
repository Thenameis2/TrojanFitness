//
//  ContentView.swift
//  FitnessApp-Neo
//
//  Created by Mihiretu Jackson on 11/9/23.
//

import SwiftUI

struct ContentView: View {
    

    
    var body: some View {
        TabView {
            // First Tab
            DialView()
                .tabItem {
                    Image(systemName: "flame")
                    Text("Goals")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        
                    
                }
                .tag(0)
                .navigationBarHidden(true)
          
            
            // Second Tab
            WalkingPerson()
                .tabItem {
                    Image(systemName: "figure.walk.motion")
                    Text("Progress")
                       
                }
                .tag(1)
                .navigationBarHidden(true)
           
            
            // Third Tab
            healthInfo()
                .tabItem {
                    Image(systemName: "info.bubble")
                    Text("Health Info")
                        
                }
                .tag(2)
                .navigationBarHidden(true)
        }
           
    }
}




#Preview {
    ContentView()
}
