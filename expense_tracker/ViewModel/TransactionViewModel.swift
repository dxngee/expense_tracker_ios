//
//  TransactionViewModel.swift
//  expense_tracker
//
//  Created by Danil Denisov on 10.10.2023.
//

import Foundation

class TransactionViewModel: ObservableObject{
    // MARK: Properties
    @Published var transactions: [Transaction] = sample_transactions
}
