//
//  CarbonFootPrint.swift
//  DemoRepoCommun
//
//  Created by EL ABOUYI on 20/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import Foundation

//Calculer l'empreinte carbone de l'utilisateur


var weeklyUseOfCar : Double = 140
var carTank : Double = 4.5
var weeklyUseOfScooter : Double = 15
var scooterTank : Double = 2
var transportUse : Double = 20
var carPoolingUse : Double = 10

var carFootPrint = (weeklyUseOfCar * carTank ) / 300
var scooterFootPrint = (weeklyUseOfScooter * scooterTank) / 100

var carPoolCoeficient : Double = (100 - carPoolingUse) / 100
var transportCoeficient : Double = (100 - transportUse) / 100

var myFootPrint = ((carFootPrint + scooterFootPrint) * carPoolCoeficient) * transportCoeficient
var numberOfPlanetNeeded : Double = myFootPrint * 1.14
