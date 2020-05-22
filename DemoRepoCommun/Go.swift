//
//  Go.swift
//  DemoRepoCommun
//
//  Created by siew-meng Kuea on 12/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct Go: View {
    
    var dateString: String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.locale = Locale(identifier: "fr_FR")
        return dateFormatter.string(from: Date())
    }
    
    @State var newDistance = ""
    @State var newTemps = ""
    @State private var isActive: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text(dateString)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)
                .padding(.bottom,90)
            
            Text("Renseigner les données de votre vélotaf:")
                .padding(.bottom, 60)
            
            TextField("Distance", text: $newDistance)
                .multilineTextAlignment(.center)
                .padding().overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.green, lineWidth: 3)).frame(width: 250, height: 50).padding(.bottom, 20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.7), radius: 10, x: -5, y: -5)
            
            TextField("Temps", text: $newTemps)
                .multilineTextAlignment(.center)
                .padding().overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.green, lineWidth: 3)).frame(width: 250, height: 50).padding(.bottom,70)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.7), radius: 10, x: -5, y: -5)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Enregistrer")
                    .font(.title)
                    .foregroundColor(.black).frame(width: 218, height: 21)
                    .padding()
                    .background(Color.offwhite
                        .buttonStyle(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/))
                    .cornerRadius(30)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.7), radius: 10, x: -5, y: -5)
            }
            
        }.navigationBarTitle("Go")
    }
}

struct Go_Previews: PreviewProvider {
    static var previews: some View {
        Go()        
    }
}

