//
//  TestUI.swift
//  DemoRepoCommun
//
//  Created by EL ABOUYI on 22/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct TestUI: View {
   var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination: HomeView()) {
                        Text("Go to Stats")
                    }.navigationBarTitle("Navigation")
                    
                }
            }
        }
    }

struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        TestUI()
    }
}
