//
//  HomeView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 14/12/21.
//

import SwiftUI

struct HomeView: View {
    let promoItem : [PromoItems] = [
        PromoItems(image: "Promo1"),
        PromoItems(image: "Promo2"),
        PromoItems(image: "Promo3"),
        PromoItems(image: "Promo4")]
    
    @State private var progress : Double = 35
    

  
    
    let events : [EventItems] = [
    EventItems(title: "Beatbox Night with Banua Beatbox", date: "Friday, 22 Juli 2021", image: "Beatbox"),
    EventItems(title: "Stand Up Comedy BJM dan BJB", date: "Jumat, 16 Juli 2021", image: "StandUp"),
    EventItems(title: "Berkahoke with NXMADEN", date: "Jumat, 25 Juni 2021", image: "Berkahoke"),
    EventItems(title: "Live Music With MOSES", date: "Jumat, 22 Mei 2021", image: "Moses")]
    
    var body: some View {
       
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            
        
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Welcome,")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding(.top)
                        Text ("Alif Khosyi Rahmatullah")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                           
                    }
                    Spacer()
                    Image("Profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                 
                }
                .padding(.all)
                .frame(width: .infinity, height: .infinity)
                .background(Color("Hijau"))
                
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        Text("On Going Promo")
                            .fontWeight(.bold)
                            .frame(width: 150, height: 30)
                            .background(Color("Hijau"))
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding([.top, .leading, .bottom])
                    HStack{
                        ModalView()
                           
                            
                    }.frame(height: 150)
                    .background(Color.gray.opacity(0.5))
                    .shadow(radius: 20)
                    

                
                HStack{
                    Text("MEMBERSHIP")
                        .fontWeight(.bold)
                        .frame(width: 150, height: 30)
                        .background(Color("Hijau"))
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding([.top, .leading, .bottom])
                
                ZStack{
                    Image("GoldBG")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .shadow(color: .black, radius: 5, x: 0.5, y: 0.5)
                    
                    VStack{
                        Text("Papa Kilo Reward")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Hijau"))
                        Text("Gold Card")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Hijau"))
                        HStack{
                        Text("35 / 100")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Hijau"))
                            .frame(height: 40)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("Hijau"))
                        }
                        ProgressView(value: progress, total: 100)
                            .progressViewStyle(RoundedRectProgressViewStyle())
                            .frame(height: 28)
                        
                        Text("65 Stars To Next Reward")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Hijau"))
                           
                    }
                    .padding(.vertical)
                      
                   
                    
                }
                .padding(.bottom, 15.0)
                    
                    HStack{
                        Text("Events")
                            .fontWeight(.bold)
                            .frame(width: 150, height: 30)
                            .background(Color("Hijau"))
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding([.top, .leading])
                    
                    
                    EventsView(eventItem: events[0])
                    EventsView(eventItem: events[1])
                    EventsView(eventItem: events[2])
                    EventsView(eventItem: events[3])
               
                
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .shadow(radius: 10)
                
            }
        }
       
}
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct PromoView: View {
    let promoImage : PromoItems
    var body: some View {
            Image(promoImage.image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 200)
                .shadow(radius: 20)
                .border(Color(.white))
            
        
    }
}

struct EventsView: View {
    let eventItem : EventItems
    
    var body: some View {
        ZStack{
            newsBackground
                .clipShape(RoundedRectangle(cornerRadius: 25.0))

                
         
            
            HStack(spacing: 20){
                Image(eventItem.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .border(Color.white)
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 5){
                    Text(eventItem.title)
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text(eventItem.date)
                        .foregroundColor(.secondary)
                }.frame(width:225)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
        
        .padding(.horizontal)
    }
}

var newsBackground : some View {
    LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.20000000298023224, green: 0.545098066329956, blue: 0.7607843279838562, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.8745098114013672, green: 0.9960784316062927, blue: 0.9019607901573181, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: -0.5, y: 0.5),
                    endPoint: UnitPoint(x: 0.5, y: 1.5))
}


