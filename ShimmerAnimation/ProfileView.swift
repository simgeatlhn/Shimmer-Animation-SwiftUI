//
//  ProfileView.swift
//  ShimmerAnimation
//
//  Created by simge on 16.04.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                    
                
                Text("Simge Atlıhan")
                    .bold()
                    .font(.system(size: 22))
            }
            
            Text("Hello everyone!")
                .font(.system(size: 24))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
