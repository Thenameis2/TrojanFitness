//
//  ContentView.swift
//  Notifications
//
//  Created by Deja Carter on 11/9/23.
//

import SwiftUI

struct WalkingPerson: View{
    @State private var position: CGFloat = -100
    @State private var showLeaderboard = false // State variable to control showing the leaderboard view
    
    var body: some View{
        ZStack{
            
            Image(systemName:"line.horizontal.3")
            
                .resizable()
                .scaledToFit()
                //.rotationEffect(.degrees(4))
                .frame(width:990, height:200)
                .offset(y:190)
                
            
        
            
            Image(systemName: "figure.walk.motion")
                .scaledToFit()
                .font(.system(size:110))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width:50, height:100)
                .offset(x:position, y: 115)
                .animation(Animation.linear(duration: 4).repeatForever(autoreverses: false))
                .rotationEffect(.degrees(-0))
            
            Image(systemName: "figure.walk")
                .scaledToFit()
                .font(.system(size:110))
                .foregroundColor(.orange)
                .frame(width:50, height:100)
                .offset(x:position - 20, y: 190)
                .animation(Animation.linear(duration: 3).repeatForever(autoreverses: false))
            Image(systemName: "sun.min.fill")
                .scaledToFit()
                .font(.system(size:110))
                .foregroundColor(.yellow)
                .offset(x:-100, y: -220)
//            Image(systemName: "bird.fill")
//                .scaledToFit()
//                .font(.system(size:50))
//                .foregroundColor(.gray)
//                .offset(x:90, y: -190)
            
            
                
            VStack {
                               Spacer()
                               HamburgerMenuButton(action: {
                                   
                                   withAnimation {
                                       showLeaderboard.toggle()
                                   }
                               })
                               .offset(x: 110, y: -600) 
                           }
                       }
                       .navigationBarHidden(true)
                       .edgesIgnoringSafeArea(.all)
                       .sheet(isPresented: $showLeaderboard) {
                           LeaderBoardView()
                       }

       
        .onAppear(){
            self.position = 500
            
        }//end of onAppear
        
    }//end of body
        
}//end of walking

struct HamburgerMenuButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)
                .padding()
        }
    }
}


#Preview {
    WalkingPerson()
}
