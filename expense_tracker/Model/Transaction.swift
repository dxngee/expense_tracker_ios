//
//  Transaction.swift
//  expense_tracker
//
//  Created by Danil Denisov on 10.10.2023.
//

import Foundation

// MARK: Transaction Model
struct Transaction: Identifiable, Hashable{
    var id = UUID().uuidString
    var amount: Double
    var date: Date
    var type: TransactionType
    var category: String
}

enum TransactionType: String{
    case income = "Income"
    case expense = "Expence"
}

var sample_transactions: [Transaction] = [
    Transaction(amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, category: "Food"),
    Transaction(amount: 319, date: Date(timeIntervalSince1970: 1652987645), type: .expense, category: "Test"),
    Transaction(amount: 42, date: Date(timeIntervalSince1970: 1652997245), type: .expense, category: "Study"),
]
