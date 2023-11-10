//
//  healthInfo.swift
//  FitnessApp-Neo
//
//  Created by Mihiretu Jackson on 11/9/23.
//




import SwiftUI

struct ExpandableText: View {
    let text: String

    @State private var expanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(text)
                .lineLimit(expanded ? nil : 1)
                .onTapGesture {
                    withAnimation {
                        expanded.toggle()
                    }
                }
        }
    }
}

struct healthInfo: View {
    @State private var showView1 = false
    @State private var showView2 = false
    @State private var showView3 = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Importance of Physical Activity")
                                   .font(.largeTitle)
                                   .fontWeight(.bold)
                                   
               
                               Text("Regular physical activity is crucial for maintaining good health and well-being. Here are some reasons why you should stay active: Click on a reaon for more info")
                                   .padding()
                ExpandableText(text: "1. Boosts Mental Health:\nPhysical activity stimulates the production of endorphins, reducing stress and anxiety while enhancing your mood.")
                                  
                ExpandableText(text: "2. Improves Cardiovascular Health:\nRegular exercise strengthens the heart, lowers blood pressure, and improves blood circulation, reducing the risk of heart diseases.")
                                
               
                ExpandableText(text: "3. Enhances Flexibility and Strength:\nEngaging in activities like stretching, yoga, or strength training improves flexibility, balance, and overall muscle strength.")
                                
               
                ExpandableText(text: "4. Helps in Weight Management:\nCombining physical activity with a balanced diet helps in maintaining a healthy weight and preventing obesity.")
                                  
                ExpandableText(text: "5. Boosts Immune System:\nRegular exercise strengthens the immune system, making it easier for the body to fight off infections and illnesses.")
                                   
                ExpandableText(text: "5. Boosts Immune System:\nRegular exercise strengthens the immune system, making it easier for the body to fight off infections and illnesses.")
                                
                ExpandableText(text: "6. Improves Sleep Quality:\nPhysical activity can help you fall asleep faster and make your sleep more profound, leading to better overall sleep quality.")
                                   
                ExpandableText(text: "7. Increases Longevity:\nStudies have shown that active individuals tend to live longer, healthier lives compared to those who are inactive.")
                                 
                ExpandableText(text: "8. Enhances Brain Function:\nStudies have shown that active individuals tend to live longer, healthier lives compared to those who are inactive.")
                                
               
               
                               }
                               .padding()
                               
               

                Spacer()

                HStack {
                    NavigationLink(destination:ContentView2(), isActive: $showView1) {
                        Button("Store") {
                            showView1 = true
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    
                    NavigationLink(destination:  ContentView3(), isActive: $showView2) {
                        Button("ChatBot") {
                            showView2 = true
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: PushNotificationsView(), isActive: $showView3) {
                        Button("Settings") {
                            showView3 = true
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                }
                .padding()
            
            }
            .navigationBarTitle("Health Information")
            .padding()
        }
    
    }




struct HealthInfo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            healthInfo()
        }
    }
}
