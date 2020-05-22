//
//  Chart.swift
//  DemoRepoCommun
//
//  Created by EL ABOUYI on 18/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct Chart: View {
    var body: some View {
        
        VStack { HStack { Text("Evolution de votre empreinte carbone")
         .fontWeight(.medium)
      
      .multilineTextAlignment(.center)
          
          
      } .padding()
          .padding(.top, -18)
      Spacer()
      .frame(height: 120)
        
        ZStack {
            
            
            VStack (alignment: .leading) {
                
                Spacer()
                .frame(width:0, height: -75)

                
                HStack(alignment: .bottom, spacing: 9) { Spacer()
                .frame(width:-30, height: 0)
                    
                    VStack (alignment: .trailing, spacing: 110) { Text("300")
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                            .font(.system(size: 11))
                        .frame(height: 28)
                    
                       Text("150")
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                            .font(.system(size: 11))
                        .frame(height: 28)
                        
                        Text("0")
                            .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                            .font(.system(size: 11))
                        .frame(height: 28)
                        
                    }
            
                
          
            ZStack {
                
                
               
                
                    
                   Rectangle()
                    .fill(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
            .frame(width: 2, height: 300)
            }
            
                  
                    
                     ForEach(rates){i in
                
                Bar(rate: i.rate)  }
                    
                        
                     } 
                    
                    
            }
          
            Rectangle()
                                     .fill(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
            .frame(width:282, height: 2)
                .offset(x: 6.8, y: 115)
            
            HStack(alignment: .center, spacing: 106) {
                Text("Jan") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0)) .font(.system(size: 12))
                
                Text("Jui") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0)) .font(.system(size: 12))
                
                Text("Dec") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3)) .font(.system(size: 12))
            }
            .frame(width:380, height: 3)
            .offset(x: 9.5, y: 130)
        }
           Spacer() .frame(width: 0, height: 47)
           
            HStack { Spacer() .frame(width: 20, height: 0)
               
                Rectangle()  .fill(Color(red: 0.9, green: 0.4, blue: 0.0, opacity: 0.6))
                       .frame(width: 24, height: 17)
                Text("Emission de CO2 mensuelle (en Kg)") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0)) .font(.system(size: 12))
                
            }
       
        } }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart()
    }
}

struct Bar : View {
    @State var rate : CGFloat = 0
    @State var rateC : CGFloat = 0
    
    var body: some View {
        
        ZStack {
        Rectangle()
        .fill(Color(red: 0.2, green: 0.9, blue: 0.2, opacity: 0.7))
            .frame(width: 12, height: rateC)
        
        Rectangle()
            .fill(Color(red: 0.9, green: 0.4, blue: 0.0, opacity: 0.6))
            .frame(width: 14, height: rate)
        
        } }
}

enum period {
    case before
    case current
}

enum month {
    case janvier
    case fevrier
    case mars
    case avril
    case mai
    case juin
    case juillet
    case aout
    case septembre
    case octobre
    case novembre
    case decembre
}

struct CarbonEmission : Identifiable {
    var id: Int
    var month : month
    var rate : CGFloat = 0
    var rateC : CGFloat = 0
    var period : period
    
}



var rates = [CarbonEmission(id: 0, month: .janvier, rate: 220, period: .before), CarbonEmission(id: 1, month: .fevrier, rate: 180, period: .before),
             CarbonEmission(id: 2, month: .mars, rate: 80, period: .before),
             CarbonEmission(id: 3, month: .avril, rate: 60, period: .before),
             CarbonEmission(id: 4, month: .mai, rate: 110, period: .before),
             CarbonEmission(id: 5, month: .juin, rate: 0, period: .before),
             CarbonEmission(id: 6, month: .juillet, rate: 0, period: .before),
             CarbonEmission(id: 7, month: .aout, rate: 0, period: .before),
             CarbonEmission(id: 8, month: .septembre, rate: 0, period: .before),
             CarbonEmission(id: 9, month: .octobre, rate: 0, period: .before),
             CarbonEmission(id: 10, month: .novembre, rate: 0, period: .before),
             CarbonEmission(id: 11, month: .decembre, rate: 0, period: .before)]


var CurrentRates = [
    CarbonEmission(id: 12, month: .janvier, rateC: 200, period: .current), CarbonEmission(id: 1, month: .fevrier, rateC: 180, period: .current),
    CarbonEmission(id: 13, month: .mars, rateC: 100, period: .current),
    CarbonEmission(id: 14, month: .avril, rateC: 90, period: .current),
    CarbonEmission(id: 15, month: .mai, rateC: 90, period: .current),
    CarbonEmission(id: 16, month: .juin, rateC: 80, period: .current),
    CarbonEmission(id: 17, month: .juillet, rateC: 0, period: .current),
    CarbonEmission(id: 18, month: .aout, rateC: 0, period: .current),
    CarbonEmission(id: 19, month: .septembre, rateC: 0, period: .current),
    CarbonEmission(id: 20, month: .octobre, rateC: 0, period: .current),
    CarbonEmission(id: 21, month: .novembre, rateC: 0, period: .current),
    CarbonEmission(id: 22, month: .decembre, rateC: 0, period: .current)]
