//
//  DiagnoseHappinessViewController.swift
//  Psychologist
//
//  Created by cindy on 2015/4/10.
//  Copyright (c) 2015年 cindy. All rights reserved.
//

import Foundation

class DiagnosedHappinessViewController : HappinessViewController
{     
    override var happiness: Int {
        didSet {
            diagnosticHistory += [happiness]
        }
    }
    var diagnosticHistory = [Int]()
    
    private struct History {
        static let SegueIdentifier = "Show Diagnostic History"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case History.SegueIdentifier:
                if let tvc = segue.destinationViewController as? TextViewController {
                    tvc.text = "\(diagnosticHistory)"
                }
            }
            default: break
        }
    }
}