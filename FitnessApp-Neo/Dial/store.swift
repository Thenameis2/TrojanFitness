//
//  ContentView.swift
//  store
//
//
//

import SwiftUI

struct ContentView2: View {
    @State private var trojanBucks: Int = 120

    var body: some View {
        NavigationView {
            VStack {
                Text("Trojan Bucks: \(trojanBucks)")
                    .padding()

                List(storeItems) { item in
                    StoreItemView(item: item, trojanBucks: $trojanBucks)
                }
            }
            .navigationTitle("Fitness Store")
            .foregroundColor(.orange)
        }
    }
}//end of contentview

struct StoreItemView: View {
    var item: FitnessStoreItem
    @Binding var trojanBucks: Int

    var body: some View {
        HStack {
            Image(systemName: item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 90)
                .padding()

            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)

                Text("Cost: \(item.cost) Trojan Bucks")
                    .foregroundColor(.blue)
            }

            Spacer()

            PurchaseButtonView(item: item, trojanBucks: $trojanBucks)
        }
    }
}

struct PurchaseButtonView: View {
    var item: FitnessStoreItem
    @Binding var trojanBucks: Int

    var body: some View {
        Button(action: {
            purchaseItem()
        }) {
            Text("Purchase")
                .padding(8)
                .background(item.cost > trojanBucks ? Color.gray : Color.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
        }
        .disabled(item.cost > trojanBucks)
    }

    private func purchaseItem() {
        if item.cost <= trojanBucks {
            trojanBucks -= item.cost
            
        } else {
            
            print("Not enough Trojan Bucks")
        }
    }
}

struct FitnessStoreItem: Identifiable {
    var id = UUID()
    var name: String
    var cost: Int
    var imageName: String
}

let storeItems: [FitnessStoreItem] = [
    FitnessStoreItem(name: "Protein Shake", cost: 20, imageName: "bolt.heart.fill"),
    FitnessStoreItem(name: "Workout Plan", cost: 30, imageName: "figure.walk"),
    FitnessStoreItem(name: "Ultimate Fitness Plan", cost: 700, imageName: "bag.circle"),
]

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
