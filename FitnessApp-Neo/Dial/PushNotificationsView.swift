//
//  PushNotificationsView.swift
//  Trojan Fit
//
//  Created by Temidayo A on 11/10/23.
//
import SwiftUI
import UserNotifications

struct PushNotificationsView: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text("Notifications")
                .font(.system(size: 48))
                .fontWeight(.bold)
                .padding(.bottom, 50)
                .foregroundColor(.blue)
            Image(systemName: "bell.badge")
                .font(.system(size: 50))
                .animation(Animation.bouncy(duration: 2))
                .foregroundColor(Color.orange).opacity(0.9)
            
            Button("Request Permission") {
                requestNotificationPermission()
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Menu("Schedule Notifications") {
                Button("Notify If You Haven't Been Active In an Hour") {
                    print("Notifications On")
                }
                Button("Notify If Your Place On the LeaderBoard Has Increased") {
                    
                }
                Button("Notify If Your Place On the LeaderBoard Has Decreased") {
                }
            }
            .foregroundColor(.orange)
            .menuStyle(.button)
        }
    }
    
    func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                showAlert = true
            } else {
                print("Error requesting notification permission: \(error?.localizedDescription ?? "Unknown error")")
            }
        }
    }
}

#Preview {
    PushNotificationsView()
}
