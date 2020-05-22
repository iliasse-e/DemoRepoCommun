//
//  MainTabView.swift
//  DemoRepoCommun
//
//  Created by siew-meng Kuea on 22/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            Text("ecran de Brian")
                .tabItem {
                    Image("Velo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Velo")
            }
        MonArbre()
            .tabItem {
                Image("Arbre")
                .resizable()
                .frame(width: 20, height: 20)
                Text("Arbre")
            }
           
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
