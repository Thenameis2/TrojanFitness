//
//  First.swift
//  FitnessApp-Neo
//
//  Created by Mihiretu Jackson on 11/10/23.
//



//import SwiftUI
//import FirebaseCore
//import Firebase
//import FirebaseAuth
//
//
//struct First: View {
//    @ObservedObject var viewModel = AuthViewModel()
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                if viewModel.isLoggedIn {
//                    ContentView()
//                } else {
//                    if !viewModel.isLoggedIn {
//                        LoginView(viewModel: viewModel)
//                    }
//                    
//                }
//            }
//
//        }
//        .alert(isPresented: $viewModel.showAlert) {
//            Alert(title: Text("Error"), message: Text(viewModel.alertMessage), dismissButton: .default(Text("OK")))
//        }
//    }
//}
//
//struct First_Previews: PreviewProvider {
//    static var previews: some View {
//        First()
//    }
//}
