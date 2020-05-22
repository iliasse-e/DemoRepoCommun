
import SwiftUI

//struct FootprintEstimation: View {
//
//    var body: some View {
//
//
//        HomeView()
//
//    }
//}

struct FootprintEstimation_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HomeView : View {
    
    
    @State var weeklyUseOfCarS = weeklyUseOfCar
    @State var weeklyUseOfScooterS = weeklyUseOfScooter
    @State var carTankS = carTank
    @State var scooterTankS = scooterTank
    @State var transportUseS = transportUse
    @State var carPoolingUseS = carPoolingUse
    
//    @State var myFootPrinto = myFootPrint
    @State var numberOfPlanetNeededS = numberOfPlanetNeeded
    
    //
    var carFootPrint : Double { (weeklyUseOfCarS * carTankS ) / 300}
    var scooterFootPrint :Double { (weeklyUseOfScooterS * scooterTankS) / 100}

    var carPoolCoeficient : Double { (100 - carPoolingUseS) / 100}
    var transportCoeficient : Double { (100 - transportUseS) / 100}

    var myFootPrint: Double {
        ((carFootPrint + scooterFootPrint) * carPoolCoeficient) * transportCoeficient
    }
    //
    
    
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

                        Slider (value: $weeklyUseOfCarS, in: 0...300, step: 1)
                            .accentColor(.orange)
                        Spacer()
                            .frame(width: 50)

                    }
                    .padding()

                    Text("\(Int(weeklyUseOfCar)) kms")

                    // Scooter use

                    HStack { Spacer()
                        .frame(width: 30)
                        Image("scooter")
                            .resizable()
                            .frame(width: 60, height: 60)

                        Slider (value: $weeklyUseOfScooterS, in: 0...300, step: 1)
                            .accentColor(.orange)
                        Spacer()
                            .frame(width: 50)

                    }
                    .padding()
                    

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

                        Slider (value: $carTankS, in: 0...30, step: 1)
                            .accentColor(.orange)
                        Spacer()
                            .frame(width: 50)

                    }
                    .padding()
                   

                    Text("\(carTankS, specifier: "%.2f") L / 100 kms")
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 1.0))
                        .font(.system(size: 20))



                    //   Scooter tank

                    HStack { Spacer()
                        .frame(width: 30)
                        Image("scooter")
                            .resizable()
                            .frame(width: 60, height: 60)

                        Slider (value: $scooterTankS, in: 0...30, step: 1)
                            .accentColor(.orange)
                        Spacer()
                            .frame(width: 50)

                    }
                    .padding()
                   

                    Text("\(scooterTankS, specifier: "%.2f") L / 100 kms")
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


                        Slider (value: $transportUseS, in: 0...100, step: 1)
                            .accentColor(.orange)
                        Spacer()
                            .frame(width: 70)

                    }
                    .padding()

                    Text("\(Int(transportUseS)) %")

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


                        Slider (value: $carPoolingUseS, in: 0...100, step: 1)
                            .accentColor(.orange)
                        Spacer()
                            .frame(width: 70)

                    }
                    .padding()
                   

                    Text("\(Int(carPoolingUseS)) %")


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
                                Text("\(myFootPrint, specifier: "%.2f") tonne(s) de CO2 / an") .foregroundColor(Color(red: 0.19, green: 0.19, blue: 0.19, opacity: 0.85))
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))


                                    .fontWeight(.medium)
                                    .lineLimit(nil)



                            } .padding(50)



                            HStack {  Text("(Moyenne nationale : \(myFootPrint * 1.23, specifier: "%.2f") t / an)")
                                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.7))
                                .font(.footnote)
                                .frame(height: 28)
                            }
                            .padding(.leading, 0)
                            .padding(.top, -40)



                            VStack {
                                VStack{

                                    Text("Si tout le monde avez vos habitudes de transport, nous aurions besoin de :") .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.9))
                                        .fontWeight(.regular)
                                        .font(.system(size: 15))
                                    Spacer() .frame(height: 20)
                                    Text("\(numberOfPlanetNeededS, specifier: "%.2f") planète(s)") .foregroundColor(Color(red: 0.19, green: 0.19, blue: 0.19, opacity: 0.85))
                                        .fontWeight(.bold)
                                        .font(.system(size: 20))


                                        .fontWeight(.medium)
                                        .lineLimit(nil)



                                } .padding(50)



                                HStack {  Text("(Moyenne nationale : 2,9)")
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
