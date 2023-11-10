//
//  ContentView.swift
//  chatBot
//
//
//

import SwiftUI

struct ContentView3: View {
    @State private var messages: [Message] = []
    @State private var newMessage: String = ""

    var body: some View {
        VStack {
           
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(messages, id: \.id) { message in
                        MessageView(message: message)
                    }
                }
                .padding()
            }
           
            HStack {
                TextField("Type a message", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Button(action: sendMessage) {
                    Text("Send")
                }
                .padding(.trailing)
            }
            .padding(.bottom)
        }
        .navigationTitle("Fitness Chat")
        .onAppear {
            messages.append(Message(text: "How can I help you?", isUser: false))
        }
    }

    func sendMessage() {
        guard !newMessage.isEmpty else { return }

        let containsStepsKeyword = newMessage.lowercased().contains("steps")
        let containsCaloriesKeyword = newMessage.lowercased().contains("calories")
        let containsScoreboardKeyword = newMessage.lowercased().contains("scoreboard") || newMessage.lowercased().contains("highest score")

        messages.append(Message(text: newMessage, isUser: true))
        newMessage = ""

        if containsStepsKeyword {
            let steps = 10000
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                messages.append(Message(text: "You have taken \(steps) steps !", isUser: false))
            }
        } else if containsCaloriesKeyword {
            let calories = 500
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                messages.append(Message(text: "You have consumed \(calories) calories!", isUser: false))
            }
        } else if containsScoreboardKeyword {
            
            let highestScore = 15678
            let playerName = "Temidayo"
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                messages.append(Message(text: "\(playerName) has the highest score: \(highestScore) points!", isUser: false))
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                messages.append(Message(text: "Sure, let me help you!", isUser: false))
            }
        }
    }
}

struct MessageView: View {
    let message: Message

    var body: some View {
        Group {
            if message.isUser {
                HStack {
                    Spacer()
                    Text(message.text)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            } else {
                HStack {
                    Text(message.text)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                    Spacer()
                }
            }
        }
    }
}

struct Message: Identifiable {
    var id = UUID()
    var text: String
    var isUser: Bool
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
