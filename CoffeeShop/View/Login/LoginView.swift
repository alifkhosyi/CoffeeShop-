//
//  HomeView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 13/12/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        
        VStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Spacer()
            VStack(alignment: .leading){
            Text("Welcome To")
                .font(.headline)
                .fontWeight(.semibold)
                .frame(width: 200, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            Text("Papa Kilo Coffee")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color("Hijau"))
                .frame(width: 200, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
       
        
        .padding(.all)
    
        .padding(.vertical)
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
                .textContentType(.emailAddress)
                
            TextField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
                
            HStack{
            Spacer()
                NavigationLink(
                    destination: ForgotPasswordView(),
                    label: {
                        Text("Forgot Password ?")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color("Hijau"))
                            .multilineTextAlignment(.trailing)
                            .padding(.top)
                    })
            }
            .padding(.trailing)
           
            NavigationLink(
                destination: Navigation(),
                label: {
                    Text("Login")
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
            Spacer()
        }
       
        }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
