//
//  EmailSentView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 13/12/21.
//

import SwiftUI

struct EmailSentView: View {
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Spacer()
            Text("Email Sent")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color("Hijau"))
                .padding(.bottom)
            
            
            Text("We’ve sent a password reset link to your email. Please check your Email")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
            
            HStack {
                Text("Didn't Receive? ")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                
                
                NavigationLink(
                    destination: ForgotPasswordView(),
                    label: {
                        Text("Resend")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Hijau"))
                    }
                )}
                .padding(.bottom)
          
            NavigationLink(
                destination: LoginView(),
                label: {
                    Text("Back To Login")
                        .padding()
                        .frame(width: 295, height: 50)
                        .background(Color("Hijau"))
                        .cornerRadius(30)
                        .foregroundColor(.white)
                })
                .padding(.top)
                
            
            HStack{
                Text("Don't Have an Account?")
                    .font(.footnote)
                    .fontWeight(.medium)
                
                NavigationLink(
                    destination: SignUpView(),
                    label: {
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Hijau"))

                    })
            }
            .padding(.top)
            
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            Spacer()
        }
    }
}
  

struct EmailSentView_Previews: PreviewProvider {
    static var previews: some View {
        EmailSentView()
    }
}
