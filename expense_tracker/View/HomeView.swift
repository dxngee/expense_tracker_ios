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
            HStack{
                VStack(alignment: .leading){
                    Text("Welcome")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.text)
                    
                    Text("dxngee")
                        .font(.title2.bold())
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack{
                    Image(systemName: "gear")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.text)
                        .font(.title3)
                }
            }
            .padding([.leading, .trailing], 20)
        }
    }
}

#Preview {
    HomeView()
}
/*

 */
