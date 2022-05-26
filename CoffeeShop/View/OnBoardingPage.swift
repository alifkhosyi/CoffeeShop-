//
//  OnBoardingPage.swift
//  CoffeeShop
//
//  Created by Alif Khosyi Rahmatullah on 12/12/21.
//
import SwiftUI

struct OnBoardingPage: View {
    let onBoardingData : [OnBoardingItems] = [
        OnBoardingItems(image: "OnBoardingImage1", title1: "Good Coffee", title2: "Good Mood", description: "To inspire and nurture the human spirit–one person, one cup and one neighborhood at a time."),
        OnBoardingItems(image: "OnBoardingImage2", title1: "Black Arang", title2: "Everyday Is Holiday", description: "Bring a friend, come to our store and enjoy a Black Arang"),
        OnBoardingItems(image: "OnBoardingImage3", title1: "Morning Begins", title2: "With Coconut Bold", description: "Bring the fantasy with hot Coconut Bold, or treat yourself to the cold one.")
    ]

    var body: some View {
        NavigationView{
        VStack{
          Image("Logo")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
           
            Spacer()
            TabView {
                OnBoardingCard(onboardingData: onBoardingData[0]);
                OnBoardingCard(onboardingData: onBoardingData[1]);
                OnBoardingCard(onboardingData: onBoardingData[2])
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            NavigationLink(
                destination: SignUpView(),
                label: {
                    Text("Get Started")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 235, height: 61)
                        .background(Color("Hijau"))
                        .foregroundColor(.white)
                })
            .cornerRadius(20)

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
            Spacer()
            
          
        }.navigationBarHidden(true)
        .padding(.top)
        }
    }
}

struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnBoardingPage()
                .previewDevice("iPhone 12")
        }
    }
}

struct OnBoardingCard: View {
    let onboardingData : OnBoardingItems
    
    var body: some View {
        VStack{
            Image(onboardingData.image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .shadow(radius: 5)
            Text(onboardingData.title1)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("Hijau"))
                .padding(.top)
            Text(onboardingData.title2)
                .font(.title)
                .fontWeight(.bold)
            
            Text(onboardingData.description)
                .font(.footnote)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
        }
    }
}
