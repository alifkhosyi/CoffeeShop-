//
//  MembershipView.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 20/12/21.
//

import SwiftUI

struct MembershipView: View {
    
    let rewardItem : [RewardItems] = [
        RewardItems(image: "Americano", title: "Reward Redemption", text: "Reward item for every 100 points", valid: "Valid untill 24 December 2022"),
        RewardItems(image: "DarkChocolate", title: "Get 20% off any beverage", text: "Cold or Hot", valid: "Valid untill 1 August 2022"),
        RewardItems(image: "RedVelvet", title: "Birthday Treats", text: "Complimentary birthday cake, get up to 50 virthday bonus stars and 2x stars during birthday week", valid: "Valid until 1 January 2023"),
        RewardItems(image: "Matcha", title: "50% off non coffee beverage", text: "All non coffee menu", valid: "Valid until 15 March 2022")]
    
    
    @State private var progress : Double = 35
    
    
    
    var body: some View {
        
            VStack{
                HStack{
                Text("Membership")
                    .fontWeight(.bold)
                    .frame(width: 150, height: 30)
                    .background(Color("Hijau"))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                }
                .padding(.top)
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
        }
        .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                HStack{
                    Text("Choose Reward")
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 200, height: 30)
                        .background(Color("Hijau"))
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("History")
                        })
                }
                .padding([.top, .leading, .trailing])
                

                List{
                    Reward(rewardData: rewardItem[0])
                    Reward(rewardData: rewardItem[1])
                    Reward(rewardData: rewardItem[2])
                    Reward(rewardData: rewardItem[3])
                }
                Spacer()
            }
        }
    }
    
struct MembershipView_Previews: PreviewProvider {
    static var previews: some View {
        MembershipView()
    }
}
    


struct Reward: View {
    let rewardData : RewardItems
    var body: some View {
        HStack(spacing: 20){
            Image(rewardData.image)
                .resizable()
                .scaledToFit()
                .frame(width: .infinity, height: 70)
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5){
                Text(rewardData.title)
                    .font(.headline)
                    .fontWeight(.semibold)
                Text(rewardData.text)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                Text(rewardData.valid)
                    .font(.footnote)
                    .fontWeight(.medium)
            }
        }.padding(.all)
    }
}
