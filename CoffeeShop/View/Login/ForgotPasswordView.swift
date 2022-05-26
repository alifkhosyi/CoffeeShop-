//
//  ForgotPasswordView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 13/12/21.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State private var email = ""
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Spacer()
            Text("Forgot Password ?")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color("Hijau"))
                .padding(.bottom)
            
            
            Text("Don’t worry! Enter your registered email below to receive password instructions")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            TextField("Email", text: $email)
                .padding(.vertical)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
                .textContentType(.emailAddress)
            
            HStack {
                Text("Remember Password? ")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                
                
                NavigationLink(
                    destination: LoginView(),
                    label: {
                        Text("Log In")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Hijau"))
                    }
                )}
                .padding(.bottom)
          
            NavigationLink(
                destination: EmailSentView(),
                label: {
                    Text("Reset Password")
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

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
