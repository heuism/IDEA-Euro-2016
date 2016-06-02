//
//  ScheduleViewController.swift
//  IDEA Euro 2016
//
//  Created by Cuu Long Hoang on 5/31/16.
//  Copyright © 2016 Long Hoang. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }

    
    func getDataGroupByDate(data:[Match]) -> [String: [Match]] {
        
        var result:Dictionary<String,[Match]> = [String: [Match]]()
        for match in data {
            let dateStr = String.convertNSDateToDDMMYYYY(match.date)
            
            if let matchesOfDate = result[dateStr] {
                
                var matches = matchesOfDate
                matches.append(match)
                result[dateStr] = matches
                
            } else {
                result[dateStr] = [match]
            }
        }
        
        return result
    }
    
    func convertStringToDate(dateStr: String) -> NSDate {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let date = dateFormatter.dateFromString(dateStr)
        return date!
    }
}
