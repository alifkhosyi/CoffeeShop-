//
//  SignUpView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 13/12/21.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPass = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var phoneNumber = ""
    @State private var date = Date()
    
    var body: some View {
        VStack{
            Group{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                Spacer()
            Text("Sign Up For Free")
                .font(.headline)
                .fontWeight(.semibold)
                .frame(width: 200, height: 20, alignment: .center)
            
             
                HStack{
                Text("Login Details")
                    .frame(width: 135, height: 30)
                    .background(Color("Hijau"))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    Spacer()
                }
                .padding([.top, .leading])
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
                .textContentType(.emailAddress)
                
            TextField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
            
            TextField("Confirm Password", text: $confirmPass)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
            }
            
            Group{
            HStack{
            Text("Personal Details")
                .frame(width: 135, height: 30)
                .background(Color("Hijau"))
                .cornerRadius(20)
                .foregroundColor(.white)
                Spacer()
            }
            .padding([.top, .leading])
          
            TextField("First Name", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
                
            TextField("Last Name", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:380)
                .shadow(radius: 3)
                
                TextField("Phone Number", text: $phoneNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width:380)
                    .shadow(radius: 3)
                    .textContentType(.telephoneNumber)
            
                DatePicker("Birthday", selection: $date, displayedComponents: .date)
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                  
            Spacer()
                 
                    Text("By clicking this button below, I agree to the Papa Kilo Coffee terms of use")
                    .font(.footnote)
                    .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing])
                    
                 
                .padding(.top)
                
                NavigationLink(
                    destination: CompletedSignUp(),
                    label: {
                        Text("Join Now")
                            .frame(width: 295, height: 50)
                            .background(Color("Hijau"))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                    })
                    
                HStack {
                    Text("Already Have Account? ")
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
                .padding(.top)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                Spacer()
            }
        }
        
    }
    
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
}
    

