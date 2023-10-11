//
//  HomeView.swift
//  expense_tracker
//
//  Created by Danil Denisov on 10.10.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var transactionViewModel: TransactionViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            
            // MARK: Title Menu
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Welcome")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.icon)
                        
                        Text("dxngee")
                            .font(.title2.bold())
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Button {
                            print("Hi")
                        } label: {
                            Image(systemName: "gear")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.text)
                                .font(.title3)
                        }
                    }
                }
                
                CardView()
            }
            .padding([.leading, .trailing], 20)
        }
        .background(Color.background)
    }
    
    // MARK: CardView
    @ViewBuilder
    func CardView()->some View{
        GeometryReader{proxy in
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.linearGradient(colors: [
                    .icon,
                    .text,
                    .indigo,
                    .purple
                ], startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(0.6)
            
            VStack{
                Text("It's card title here")
                    .font(.title2.bold())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
        }
        .frame(height: 220)
        .padding(.top)
    }
}

struct HomeView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
