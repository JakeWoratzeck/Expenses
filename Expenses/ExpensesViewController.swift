//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Jake Woratzeck on 1/23/19.
//  Copyright © 2019 Jake Woratzeck. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Used to convert Strings to Dates
    var dateFormat = DateFormatter()
    
    //Creates array of Expense instances
    var expenseList = [Expense]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Specifies how dates should be formatted when converted from a String
        dateFormat.dateFormat = "MMM d, yyyy HH:mm"
        
        //Converts date from a String to a Date based on specified dateFormat
        if let convertedDate = dateFormat.date(from: "June 1, 2018 18:30"){
            //Creates an instance of Expense and adds it to expenseList array
            expenseList.append(Expense(title:"Dinner", amount: 32.50, date: convertedDate))
        }
        
        if let convertedDate = dateFormat.date(from: "May 30, 2018 12:17"){
            expenseList.append(Expense(title:"Office Supplies", amount: 59.34, date: convertedDate))
        }
        
        if let convertedDate = dateFormat.date(from: "May 30, 2018 11:43"){
            expenseList.append(Expense(title:"Uber", amount: 16.23, date: convertedDate))
        }
        
        if let convertedDate = dateFormat.date(from: "May 29, 2018 8:45"){
            expenseList.append(Expense(title:"Coffee", amount: 3.95, date: convertedDate))
        }

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //Only one section being used in TableView
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Counts the number of items in the expenseList array aka number of rows that will be in TableView
        return expenseList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Creates a cell variable and populates it with data from expenseList array
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseTableCell", for: indexPath)
        
        if let cell = cell as? ExpenseTableViewCell {
            let expense = expenseList[indexPath.row]
            cell.title.text = expense.title
            //Casts amount from Double to String, format:"%.2f" is to preserve both decimals on dollar amounts
            cell.amount.text = String(format:"%.2f", expense.amount)
            //Converts date from Date to String
            cell.date.text = dateFormat.string(from: expense.date)
        }
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
