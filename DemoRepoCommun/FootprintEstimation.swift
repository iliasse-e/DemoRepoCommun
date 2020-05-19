
import SwiftUI

struct FootprintEstimation: View {
   
    var body: some View {
        
        
        Home()
    
    }
}

struct FootprintEstimation_Previews: PreviewProvider {
    static var previews: some View {
        FootprintEstimation()
    }
}

struct Home : View {
     @State  var weeklyUseOfCar : Double = 20
    @State var weeklyUseOfScooter : Double = 5
    @State var carTank : Double = 5
    @State var scooterTank : Double = 2
    @State var transportUse : Double = 20
    @State var carPoolingUse : Double = 10
    @State var myFootPrint : Double = 0
    @State var numberOfPlanetNeeded : Double = 1
    
        var body: some View {
            
           NavigationView {
            ScrollView (.vertical) {
            VStack (spacing:0) {
                Spacer()
                .frame(width: 30, height: 50)
                
// Car use
                Text("Quelle distance parcourez-vous en voiture ou à moto chaque semaine ?")
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.8))
                .font(.system(size: 25))
                    .frame(width: 370, height: 90)
                Spacer()
                    .frame(width: 30, height: 20)
                HStack { Spacer()
                .frame(width: 30)
                    Image("voiture")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                    Slider (value: $weeklyUseOfCar, in: 0...300, step: 1)
                                           .accentColor(.orange)
                                       Spacer()
                                       .frame(width: 50)
                                       
                }
                                   .padding()
                                   .colorMultiply(.orange)
                                   
                                   Text("\(Int(weeklyUseOfCar)) kms")
                

         
 // Scooter use
                      
                     HStack { Spacer()
                      .frame(width: 30)
                          Image("scooter")
                          .resizable()
                          .frame(width: 60, height: 60)
                      
                          Slider (value: $weeklyUseOfScooter, in: 0...300, step: 1)
                                                 .accentColor(.orange)
                                             Spacer()
                                             .frame(width: 50)
                                             
                      }
                                         .padding()
                                         .colorMultiply(.orange)
                                         
                                         Text("\(Int(weeklyUseOfScooter)) kms")
                                            
                                     .fontWeight(.regular)
                                     .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                                     .font(.system(size: 20))
                
                
                    Spacer()
                                       .frame(width: 150, height: 70)}
                
                
                
// Car tank
                
                
                 
                 
                 Text("Quelle est la consommation moyenne de carburant de vos véhicules ?")
                                   .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.8))
                               .font(.system(size: 25))
                                   .frame(width: 410, height: 90)
                             
                VStack {
                              HStack { Spacer()
                               .frame(width: 30)
                                   Image("voiture")
                                   .resizable()
                                   .frame(width: 60, height: 60)
                               
                                   Slider (value: $carTank, in: 0...30, step: 1)
                                                          .accentColor(.orange)
                                                      Spacer()
                                                      .frame(width: 50)
                                                      
                               }
                                                  .padding()
                                                  .colorMultiply(.orange)
                                                  
                                                  Text("\(Int(carTank)) L / 100 kms")
                               .fontWeight(.regular)
                               .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                               .font(.system(size: 20))
                               

                        
//   Scooter tank
                                     
                                   HStack { Spacer()
                                     .frame(width: 30)
                                         Image("scooter")
                                         .resizable()
                                         .frame(width: 60, height: 60)
                                     
                                         Slider (value: $scooterTank, in: 0...30, step: 1)
                                                                .accentColor(.orange)
                                                            Spacer()
                                                            .frame(width: 50)
                                                            
                                     }
                                                        .padding()
                                                        .colorMultiply(.orange)
                                                        
                                                        Text("\(Int(scooterTank)) L / 100 kms")
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                                                    .font(.system(size: 20))
                               
                               
                               
                 
                    Spacer()
                    .frame(width: 150, height: 70) }
 
                
                

                
                
// Public transport
                
                VStack {
                    
                
                Text("A quelle fréquence empruntez-vous les transports en commun ?")
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.8))
                .font(.system(size: 25))
                    .frame(width: 370, height: 90)
                Spacer()
                    .frame(width: 30, height: 20)
                HStack { Spacer()
                .frame(width: 50)
                    
                
                    Slider (value: $transportUse, in: 0...100, step: 1)
                                           .accentColor(.orange)
                                       Spacer()
                                       .frame(width: 70)
                                       
                }
                                   .padding()
                                   .colorMultiply(.orange)
                                   
                                   Text("\(Int(transportUse)) %")
                
                .fontWeight(.regular)
                                                   .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                                                   .font(.system(size: 20))
                              
                              
                             Spacer()
                                                .frame(width: 150, height: 50)
                
                
// Carpooling
                
                Text("A quelle fréquence faites-vous du covoiturage ?")
                                 .fontWeight(.medium)
                                 .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.8))
                             .font(.system(size: 25))
                                 .frame(width: 370, height: 90)
                             Spacer()
                                 .frame(width: 30, height: 20)
                             HStack { Spacer()
                             .frame(width: 50)
                                
                             
                                 Slider (value: $carPoolingUse, in: 0...100, step: 1)
                                                        .accentColor(.orange)
                                                    Spacer()
                                                    .frame(width: 70)
                                                    
                             }
                                                .padding()
                                                .colorMultiply(.orange)
                                                
                                                Text("\(Int(carPoolingUse)) %")
                             
                             .fontWeight(.regular)
                                                                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                                                                .font(.system(size: 20))
                                           
                                           
                                           
                             
                    
                    
                             }
                
                VStack(alignment: .leading) {
        
    ZStack {
            Rectangle()
                .fill(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                .frame(width: 340, height: 300)
                .cornerRadius(7)
                .padding()
                .shadow(color: .gray, radius: 2, x: 1, y: 1)
            
    VStack {
        VStack{
            
            Text("Votre empreinte carbone transport :") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
                               .fontWeight(.regular)
                .font(.system(size: 15))
            Spacer() .frame(height: 20)
            Text("\(Int(myFootPrint)) tonne de CO2 / an") .foregroundColor(Color(red: 0.19, green: 0.19, blue: 0.19, opacity: 0.85))
            .fontWeight(.bold)
            .font(.system(size: 20))
                
                                       
           .fontWeight(.medium)
            .lineLimit(nil)
        
            
            
        } .padding(50)
        
    
            
    HStack {  Text("(Moyenne nationale : 10 t / an )")
                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.7))
                .font(.footnote)
            .frame(height: 28)
            }
            .padding(.leading, 0)
    .padding(.top, -40)
        
        
            
        VStack {
            VStack{
                
                Text("Si tout le monde avez vos habitudes de transport, il nous faudrait :") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
                                   .fontWeight(.regular)
                    .font(.system(size: 15))
                Spacer() .frame(height: 20)
                Text("\(Int(numberOfPlanetNeeded)) planète(s)") .foregroundColor(Color(red: 0.19, green: 0.19, blue: 0.19, opacity: 0.85))
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    
                                           
               .fontWeight(.medium)
                .lineLimit(nil)
            
                
                
            } .padding(50)
            
        
                
        HStack {  Text("(Moyenne nationale : 2,9")
                    .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.7))
                    .font(.footnote)
                .frame(height: 28)
                }
                .padding(.leading, 0)
        .padding(.top, -40)
            
            
                
        } .padding(.top, -35)
       Spacer()
        .frame(height: 28)
        }
    } .padding(.top, -35)
            
    
           
        
    }
.padding()
    .padding(.top, 45)
                
            
                 
            } .navigationBarTitle(("Mes statistiques"), displayMode: .inline)
            
            
        
        }
            
    
    
    }
    
}
