//
//  ContentView.swift
//  DemoRepoCommun
//
//  Created by EL ABOUYI on 06/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    var O2GeneratePerDay : Double = 3.55
    var numberPlanetNeeded : Double = 2.10
    var numberOftreeNeeded : Int = 99 
    let averageNumberOfTreeNeeded : Int = 116
    var body: some View {
        
        NavigationView {
            
            ScrollView (.vertical) {
 //       First Board
            
                  
        VStack (alignment: .leading) {
            
        ZStack {
                Rectangle()
                    .fill(Color(red: 0.97, green: 0.97, blue: 0.97, opacity: 1.0))
                    .frame(width: 340, height: 200)
                    .cornerRadius(7)
                    .padding()
                    .shadow(color: .gray, radius: 2, x: 1, y: 1)
                Rectangle()
                                   .fill(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                                   .frame(width: 340, height: 2)
                    .padding(.top, -65)
                
        VStack {
                Text("Votre dernier trajet a permis de générer :")
               .fontWeight(.medium)
                Spacer()
                .frame(height: 30)
                
        HStack {  Text("\(O2GeneratePerDay, specifier: "%.1f")")
                    .foregroundColor(Color(red: 0.52, green: 0.79, blue: 0.59, opacity: 1.0))
                    .fontWeight(.regular)
                 .font(.system(size: 60))
               
                Spacer()
                .frame(height: 30)
                }
                .padding(.leading, 75.0)
                
        HStack {   Text("Kg d'oxygène")
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
                    .fontWeight(.bold)
                Spacer()
                .frame(height: 30)
                    
                }
                .padding(.leading, 75.0)
                
        HStack {  Text("(Gain en rapport à l’utilisation de votre voiture)")
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.7))
                    .font(.footnote)
           
                .frame(height: 28)
                }
                .padding(.leading, 16.0)
                
                }
                
                    
            
            }
                
//       Second board
            
            ZStack {
                    Rectangle()
                        .fill(Color(red: 0.97, green: 0.97, blue: 0.97, opacity: 1.0))
                        .frame(width: 340, height: 200)
                        .cornerRadius(7)
                        .padding()
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                    Rectangle()
                                       .fill(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                                       .frame(width: 340, height: 2)
                        .padding(.top, -45)
                    
            VStack {
                HStack { Text("Si tout le monde avez vos habitudes de transport, nous aurions besoin de :")
                   .fontWeight(.medium)
                
                .multilineTextAlignment(.center)
                    
                    
                } .padding()
                    .padding(.top, -18)
                Spacer()
                .frame(height: 0)
                
                        
                    
            HStack {  Text("\(numberPlanetNeeded, specifier: "%.1f")")
                        .foregroundColor(Color(red: 0.52, green: 0.79, blue: 0.59, opacity: 1.0))
                        .fontWeight(.regular)
                     .font(.system(size: 60))
                   
                    Spacer()
                    .frame(height: 0)
                    }
                    .padding(.leading, 75.0)
                    
            HStack {   Text("Planètes")
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
                        .fontWeight(.bold)
                    Spacer()
                    .frame(height: 0)
                        
                    }
                    .padding(.leading, 75.0)
                .padding(.top,10)
                    
            HStack {  Text("(Moyenne nationale : 2,9)")
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.7))
                        .font(.footnote)
               
                    .frame(height: 22)
                    }
                    .padding(.leading, -115.0)
                .padding(.top,5)
            
                    
                    } 
                    
                        
                
                }
//    Third board
            
            VStack(alignment: .leading) {
                
            ZStack {
                    Rectangle()
                        .fill(Color(red: 0.97, green: 0.97, blue: 0.97, opacity: 1.0))
                        .frame(width: 340, height: 200)
                        .cornerRadius(7)
                        .padding()
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                    
            VStack {
                VStack{
                    
                    Text("\(numberOftreeNeeded)") .foregroundColor(Color(red: 0.52, green: 0.79, blue: 0.59, opacity: 1.0))
                                       .fontWeight(.regular)
                        .font(.system(size: 35))
                    Spacer() .frame(height: 10)
                    Text("C'est le nombre d'arbres nécéssaire pour compenser votre empreinte carbone de transport.")
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
                                               
                   .fontWeight(.medium)
                    .lineLimit(nil)
                
                    
                    
                } .padding(50)
                
            
                    
            HStack {  Text("(Moyenne nationale : \(averageNumberOfTreeNeeded))")
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.7))
                        .font(.footnote)
                    .frame(height: 28)
                    }
                    .padding(.leading, 0)
            .padding(.top, -30)
                    
            } .padding(.top, -35)
                    
            
                }
                
            }
        .padding()
            .padding(.top, -15)
            
//     Graphique
            
            VStack (alignment: .leading) {
                
                
                       
                   ZStack {
                    
                    
                           Rectangle()
                               .fill(Color(red: 0.97, green: 0.97, blue: 0.97, opacity: 1.0))
                               .frame(width: 340, height: 520)
                               .cornerRadius(7)
                               .padding()
                               .shadow(color: .gray, radius: 2, x: 1, y: 1)
                          
                    
                    
                    Chart() 
            
                   }
            }
            .padding(.leading, 10)
            .padding(.top, -15)
                
                
            } .navigationBarTitle(("Mes statistiques"), displayMode: .inline)
            
                    .navigationBarItems(trailing:
                        Button("Reset") { 
                            print("Help tapped!") })
            
        } 
    }
    } }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
