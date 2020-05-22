//
//  MonArbre.swift
//  DemoRepoCommun
//
//  Created by siew-meng Kuea on 18/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct MonArbre: View {
    var body: some View {
        ZStack {
            Color.offwhite
            
            VStack {
                
                Text("Silence ça pousse!")
                    .font(.largeTitle)
                    .bold().padding(.bottom, 20)
                
                Text("Plus vous pédalez, plus votre arbre grandi.").padding(.bottom, 100)
                
                Image("Plante")
                .resizable()
                .frame(width: 100, height: 100)
                .clipped()
                
                Text("Gain carbone du jour: 500 g d'oxygène généré")
                    .frame(width: 250, height: 100)
                    .background(Color.blue)
                    .cornerRadius(25)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.7), radius: 10, x: -5, y: -5)
                  
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Text("Mes statistiques")
                            .font(.title)
                            .foregroundColor(.black).frame(width: 218, height: 21)
                            .padding()
                            .background(Color.offwhite
                                .buttonStyle(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/))
                            .cornerRadius(30)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.7), radius: 10, x: -5, y: -5)
                    
                    }.frame(width: 300, height: 150)
                     .background(Color.green)
          
                }.navigationBarTitle("Mon arbre")
               
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct MonArbre_Previews: PreviewProvider {
    static var previews: some View {
        MonArbre()
        }
    }



