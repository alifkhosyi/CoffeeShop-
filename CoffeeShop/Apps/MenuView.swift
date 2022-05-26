//
//  MenuView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 13/12/21.
//

import SwiftUI

struct MenuView: View {
    let menuData : [MenuItems] = [
        MenuItems(image: "BlackArang", title: "Black Arang", price: "Rp 25.000"),
        MenuItems(image: "Americano", title: "Americano", price: "Rp 17.000"),
        MenuItems(image: "CafeLatte", title: "Cafe Latte", price: "Rp 22.000" ),
        MenuItems(image: "CookiesAndCream", title: "Cookies And Cream", price: "Rp 23.000"),
        MenuItems(image: "DarkChocolate", title: "Dark Chocolate", price: "Rp 22.000"),
        MenuItems(image: "KopiSusuArang", title: "Kopu Susu Arang", price: "Rp 25.000"),
        MenuItems(image: "KopiSusuCaramel", title: "Kopi Susu Caramel", price: "Rp 25.000"),
        MenuItems(image: "KopiSusuHazelnut", title: "Kopi Susu Hazelnut", price: "Rp 24.000"),
        MenuItems(image: "KopiSusuKawan", title: "Kopi Susu Kawan", price: "Rp 19.000"),
        MenuItems(image: "Matcha", title: "Matcha Okhinawa", price: "Rp 23.000"),
        MenuItems(image: "RedVelvet", title: "Red Velvet", price: "Rp 23.000"),
        MenuItems(image: "Regal", title: "Regal", price: "Rp 25.000"),
        MenuItems(image: "Taro", title: "Taro", price: "Rp 20.000")
    ]
    
    @State private var textField = ""
   
    var body: some View {
        VStack{
            HStack{
        TextField("   Search", text: $textField)
            .padding()
            .background(Color.gray.opacity(0.5))
            .cornerRadius(10)
            
         
         
                
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 30, height: 30)
                })
                .padding()
                
            }
        
       
        ScrollView(showsIndicators: false){
            HStack{
                CardView(menuData: menuData[0])
                CardView(menuData: menuData[1])
            }
            
            HStack{
                CardView(menuData: menuData[2])
                CardView(menuData: menuData[3])
            }

            HStack{
            CardView(menuData: menuData[4])
            CardView(menuData: menuData[5])
            }
         
            HStack{
            CardView(menuData: menuData[6])
            CardView(menuData: menuData[7])
            }
           
            HStack{
            CardView(menuData: menuData[8])
            CardView(menuData: menuData[9])
            }
            
            HStack{
            CardView(menuData: menuData[10])
            CardView(menuData: menuData[11])
            }
        }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
 
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}


struct CardView: View {
    let menuData : MenuItems
    
    var body: some View {
        NavigationLink(
            destination: LoginView(),
            label: {
                VStack{
                    Image(menuData.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity  , height: .infinity)
                      
                     
                    Text(menuData.title)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        
                    
                    Text(menuData.price)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        
                        
                }
                .padding(.bottom)
                .border(Color.gray.opacity(0.5))
                
            })
            .padding(.bottom)
            .shadow(radius: 20)
            .cornerRadius(15)
    }
}
}
