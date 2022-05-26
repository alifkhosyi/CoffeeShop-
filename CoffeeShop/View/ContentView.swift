//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 12/12/21.
//

import SwiftUI

struct ContentView: View {
    let onBoarding = true
    
    var body: some View {
        
        if onBoarding {
            OnBoardingPage()
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
