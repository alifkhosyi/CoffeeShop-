//
//  Navigation.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 20/12/21.
//

import SwiftUI

struct Navigation: View {

    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("Home")
                    Text("Home")
                }
            MembershipView()
                .tabItem {
                    Image("TicketStar")
                    Text("Membership")
                }
            MenuView()
                .tabItem {
                    Image("Buy")
                    Text("Shop")
                }
            WalletView()
                .tabItem {
                    Image("Wallet")
                    Text("Wallet")
                }
            LocationView()
                .tabItem {
                    Image("Location")
                    Text("Location")
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "list.bullet")
                }
                ToolbarItem(placement: .principal) {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
            }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
