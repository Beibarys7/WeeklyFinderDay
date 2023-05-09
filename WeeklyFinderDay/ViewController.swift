//
//  ViewController.swift
//  WeeklyFinderDay
//
//  Created by Beibarys Shagay on 20.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var dayTF: UITextField!
    
    @IBOutlet weak var monthTF: UITextField!
    
    @IBOutlet weak var yearTF: UITextField!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponent = DateComponents()
        dateComponent.day = Int(day)
        dateComponent.month = Int(month)
        dateComponent.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "Ru_ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponent) else { return }
        
        let weekday = dateFormatter.string(from: date)
        
        resultLabel.text = weekday.capitalized
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

