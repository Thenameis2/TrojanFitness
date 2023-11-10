//
//  DialView.swift
//  FitnessApp-Neo
//
//  Created by Beau Nouvelle on 19/1/2023.
//

import HealthKit
import SwiftUI



struct DialView: View {
    @State private var steps: Double = 0
    @State private var userName: String = "" // Initial user name
    private let healthStore = HKHealthStore()

    var body: some View {
        ScrollView {
            VStack {
                // TextField to edit the user's name
                VStack {
                    TextField("Enter Name", text: $userName)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                        .padding()
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.bottom, 0)
                        .background(Color.blue)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 10)

                }
               

                DialHeaderView(name: userName, image: "profile")
                    .padding()

                Dial(goal: 10_000, steps: Int(steps))
                    .padding()

            }
            .padding()
        }
        .onAppear {
            requestAuthorization()
        }
        .background(Color.backgroundGray)
        .edgesIgnoringSafeArea(.all)
    }
        
    
    

    private func requestAuthorization() {
        if HKHealthStore.isHealthDataAvailable() {
            let stepsQuantityType = HKQuantityType.quantityType(forIdentifier: .stepCount)!
            healthStore.requestAuthorization(toShare: [], read: [stepsQuantityType]) { success, error in
                if success {
                    fetchSteps()
                } else {
                    print("Failed to request HealthKit authorization.")
                }
            }
        } else {
            print("HealthKit data is not available on this device.")
        }
    }

    private func fetchSteps() {
        let stepsQuantityType = HKQuantityType.quantityType(forIdentifier: .stepCount)!
        
        // Get today's date
        let calendar = Calendar.current
        let now = Date()
        let startOfDay = calendar.startOfDay(for: now)
        let endOfDay = calendar.date(byAdding: .day, value: 1, to: startOfDay)!
        
        let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: endOfDay, options: .strictStartDate)
        
        let query = HKStatisticsQuery(quantityType: stepsQuantityType, quantitySamplePredicate: predicate, options: .cumulativeSum) { _, result, _ in
            if let sum = result?.sumQuantity() {
                let steps = sum.doubleValue(for: HKUnit.count())
                DispatchQueue.main.async {
                    self.steps = steps
                }
            }
        }
        
        healthStore.execute(query)
    }

}





struct StatTile: View {

    let image: String
    let value: String
    let measurement: String

    var body: some View {
        VStack {
            Image(systemName: image)
            Text(value)
                .font(.title)
            Text(measurement)
        }
        .foregroundColor(.accentColor)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15).fill(Color.backgroundGray)
                .shadow(color: .foregroundGray, radius: 3, x: 8, y: 8)
                .shadow(color: .white, radius: 3, x: -8, y: -8)
        )
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DialView()
    }
}

extension Color {

    static let backgroundGray = Color(red: 0.922, green: 0.925, blue: 0.941)
    static let foregroundGray = Color(red: 0.871, green: 0.871, blue: 0.871)
}
