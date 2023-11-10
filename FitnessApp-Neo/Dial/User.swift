//  hackathon project
//
//  Created by Darren Perry  on 11/9/23.
//

import SwiftUI


struct User: View {
    
    @State var username = "dper9128@students.vsu.edu"
    @State var password: String = "V00699128"
    @State var showPassword: Bool = false
    @State var isLoginSuccess = false
    
    var body: some View {
        
        NavigationView {
            
            VStack() {
                Text("Trojan Fit")
                    .frame(maxHeight: .infinity, alignment: .center)
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                
                TextField("Name",
                          text: $username ,
                          prompt: Text("Login").foregroundColor(.blue)
                )
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 2)
                }
                .padding(.horizontal)
                
                
                
                HStack {
                    Group {
                        if showPassword { // when this changes, you show either TextField or SecureField
                            TextField("Password",
                                      text: $password,
                                      prompt: Text("Password").foregroundColor(.red)) // How to change the color of the TextField Placeholder
                        } else {
                            SecureField("Password", // how to create a secure text field
                                        text: $password,
                                        prompt: Text("Password").foregroundColor(.red)) // How to change the color of the TextField Placeholder
                        }
                    }
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 2) // How to add rounded corner to a TextField and change it colour
                    }
                    Button { // add this new button
                        showPassword.toggle()
                        
                    } label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundColor(.red)
                    }
                }.padding(.horizontal)
                
                Spacer()
                
                    Button {
                        
                    } label: {
                        NavigationLink(destination: ContentView()) {
                                Text("Login")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                    

                    .frame(height: 50)
                    .frame(maxWidth: .infinity) // how to make a button fill all the space available horizontaly
                    .background(
                        LinearGradient(colors: [.blue, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(20)
                    .padding()
                
             
                }
                
            }
        }
        
        
        
    }
    



#Preview {
    User()
}

struct DestinationView: View {
    var body: some View {
        Text("welcome!")
        .navigationBarHidden(true)

    }
    
}
