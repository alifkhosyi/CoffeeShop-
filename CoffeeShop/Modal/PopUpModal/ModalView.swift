import SwiftUI


struct ModalView: View {
    
    @State private var showModalOne = false
    @State private var showModalTwo = false
    @State private var showModalThree = false
    @State private var showModalFour = false
    
    var body: some View {
        HStack{
        Button(action: {self.showModalOne = true}, label: {
            Image("Promo1")
                .resizable()
                .scaledToFit()
        })
        .sheet(isPresented: self.$showModalOne, content: {
            PromoOneView()
        })
        
        Button(action: {self.showModalTwo = true}, label: {
            Image("Promo2")
                .resizable()
                .scaledToFit()
        })
        .sheet(isPresented: self.$showModalTwo, content: {
            PromoTwoView()
        })
            
            Button(action: {self.showModalThree = true}, label: {
                Image("Promo3")
                    .resizable()
                    .scaledToFit()
            })
            .sheet(isPresented: self.$showModalThree, content: {
                PromoThreeView()
            })
            
            Button(action: {self.showModalFour = true}, label: {
                Image("Promo4")
                    .resizable()
                    .scaledToFit()
            })
            .sheet(isPresented: self.$showModalFour, content: {
                PromoFourView()
            })
            
        }
    }
struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
}
