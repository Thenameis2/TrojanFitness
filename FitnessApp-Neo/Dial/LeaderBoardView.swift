//
//  LeaderBoardView.swift
//  Trojan Fit
//
//  Created by Temidayo A on 11/9/23.
//
//
import SwiftUI

struct LeaderBoardView: View {
    @State private var fontSize = 45
    
    var body: some View {
        NavigationView {
            ZStack {
//                RoundedRectangle(cornerRadius: 2)
//                    .foregroundColor(.white)
                    
                VStack (alignment: .center) {
                    Text("LeaderBoard")
                        .font(.system(size: CGFloat(fontSize)))
                        .foregroundColor(Color.orange)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                                fontSize = 60
                            }
                        }
                        .padding()
                        .fontWeight(.bold)
                    Text("See Your Rank")
                        .font(.system(size: 24))
                        .foregroundColor(Color.orange)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    Image(systemName: "figure.walk.circle")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
//                        .padding(.bottom)
                        .animation(Animation.bouncy(duration: 2))
                        .foregroundColor(Color.blue).opacity(1.2)
                    Text("\t \t 3 \t \t You \t \t  11023     ")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).opacity(28)
                        .background(Color.orange).opacity(0.8)
                        .border(Color.blue, width: 3)
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
            .background(Color.white).opacity(1)
        }
//        .padding(-570)
        Divider()
        
        /*
         Draw Your LeaderBoard
         */
            .padding(.bottom)
        ScrollView {
            Grid (alignment: .center) {
                GridRow {
                    Text("Rank \t")
                        .font(.system(size: 35))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("Name \t")
                        .font(.system(size: 35))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("Steps")
                        .font(.system(size: 35))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                }
                GridRow {
                    Text("1")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    // padding to make the ranking spaced from the sample values
                        .padding(.top, -2)
                    Text("Temidayo")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("15678")
                    .font(.system(size: 23))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
                }
                GridRow {
                    Text("2")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("Mihiretu")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("13919")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                }
                GridRow {
                    Text("3")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("Deja")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("11023")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                }
                GridRow {
                    Text("4")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("Darren")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("10001")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                }
                GridRow {
                    Text("5")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("Issac")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange)
                    Text("9213")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.orange).opacity(0.8)
                }
                GridRow {
                    Text("6")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("OG")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                    Text("7912")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                }
//                GridRow {
//                    Text("7")
//                        .font(.system(size: 23))
//                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                        .foregroundColor(Color.blue)
//                    Text("Dr. Mohammed")
//                        .font(.system(size: 15))
//                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                        .foregroundColor(Color.blue).opacity(0.8)
//                    Text("6012")
//                        .font(.system(size: 23))
//                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                        .foregroundColor(Color.blue).opacity(0.8)
//                }
                GridRow {
                    Text("8")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("Dr. Lee")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                    Text("5213")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                }
                GridRow {
                    Text("9")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("Dr. Chen")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                    Text("4263")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                }
                GridRow {
                    Text("10")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    Text("Dr. Reynolds")
                        .font(.system(size: 15))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                    Text("3526")
                        .font(.system(size: 23))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue).opacity(0.8)
                }
            }
        }
//        Divider()
    }
}

#Preview {
    LeaderBoardView()
}

