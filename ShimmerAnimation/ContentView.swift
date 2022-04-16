//
//  ContentView.swift
//  ShimmerAnimation
//
//  Created by simge on 16.04.2022.
//

import SwiftUI



struct ContentView: View {
    
    @State private var isLoading = true
    
    var body: some View {
        NavigationView{
            ScrollView (showsIndicators: false){
                VStack {
                    ForEach(0...5 , id: \.self){ _ in
                        ProfileView()
                            .frame(height: 120)
                            .padding(12)
                    }
                }
                .redacted(reason: isLoading ? .placeholder : [])
            }
            .navigationTitle("Chatty")
            .onAppear(perform: {
                fetchData()
            })
        }
    }
    
    func fetchData(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
