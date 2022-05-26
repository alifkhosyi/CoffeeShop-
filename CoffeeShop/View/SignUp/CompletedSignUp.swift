//
//  CompletedSignUp.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 13/12/21.
//

import SwiftUI

struct CompletedSignUp: View {
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Spacer()
            
            Text("All Done")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color("Hijau"))
                .padding(.bottom)
            
            Text("Thanks for giving us your precious time. Now you are ready for an enjoyable moment.")
                .font(.body)
                .fontWeight(.regular)
                .padding([.leading, .bottom, .trailing])
               
            Image("CompletedSignUp")
                .resizable()
                .padding(.vertical)
                .scaledToFit()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            Spacer()
            
            NavigationLink(
                destination: Navigation(),
                label: {
                    Text("Let's Go")
                        .frame(width: 295, height: 50)
                        .background(Color("Hijau"))
                        .cornerRadius(30)
                        .foregroundColor(.white)
                })
                .padding(.top)
            
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            Spacer()
            }
        
    }
}

struct CompletedSignUp_Previews: PreviewProvider {
    static var previews: some View {
        CompletedSignUp()
    }
}


