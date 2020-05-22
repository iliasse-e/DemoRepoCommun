//
//  MyCustomButtom.swift
//  DemoRepoCommun
//
//  Created by siew-meng Kuea on 12/05/2020.
//  Copyright © 2020 AFP. All rights reserved.
//

import SwiftUI

struct MyCustomButton<WhateverYouWant:View>: View {
    
    let  action: () -> Void
    let content: WhateverYouWant
    
    init(action: @escaping() -> Void, @ViewBuilder content: () -> WhateverYouWant) {
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        Button(action: action) {
            content
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Capsule().fill(style: Color.blue))
                .foregroundColor(.white)
        }
    }
}
