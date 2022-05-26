//
//  ProgressView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 17/12/21.
//

import Foundation
import SwiftUI

struct RoundedRectProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 14)
                .frame(width: 250, height: 28)
                .foregroundColor(Color(.white))

               
            
            RoundedRectangle(cornerRadius: 14)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 250, height: 28)
                .foregroundColor(Color(.systemBlue))
        }
        .padding()
    }
}
