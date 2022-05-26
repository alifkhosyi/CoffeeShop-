//
//  PromoOneView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 22/12/21.
//

import SwiftUI

struct PromoOneView: View {
    var body: some View {
       Image("Promo1")
        .resizable()
        .scaledToFit()
    }
}

struct ModalCard_Previews: PreviewProvider {
    static var previews: some View {
        PromoOneView()
    }
}
