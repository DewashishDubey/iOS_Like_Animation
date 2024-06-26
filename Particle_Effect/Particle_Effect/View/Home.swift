//
//  Home.swift
//  Particle_Effect
//
//  Created by Dewashish Dubey on 13/05/24.
//

import SwiftUI

struct Home: View {
    //can use a bool array to use more than one button
    @State private var isLiked : Bool = false
    var body: some View {
        VStack{
            HStack(spacing:20){
                CustomButton(systemImage: "suit.heart.fill", status: isLiked, activeTint: .pink, inActiveTint: .gray){
                    isLiked.toggle()
                }
            }
        }
    }
    
    @ViewBuilder
    func CustomButton(systemImage : String,status : Bool,activeTint : Color,inActiveTint: Color,onTap: @escaping()->()) -> some View
    {
        Button(action: onTap){
            Image(systemName: systemImage)
                .font(.title2)
                .particleEffect(systemImage: systemImage, font: .title2, status: status, activeTint: activeTint, inActiveTint: inActiveTint)
                .foregroundColor(status ? activeTint : inActiveTint)
                .padding(.horizontal,18)
                .padding(.vertical,8)
                .background(
                    Capsule()
                        .fill(status ? activeTint.opacity(0.25) : Color("ButtonColor"))
                )
        }
    }
    
}

#Preview {
    ContentView()
}
