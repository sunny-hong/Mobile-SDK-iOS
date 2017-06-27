//
//  VideoViewController.swift
//  
//
//  Created by Hye Sun Hong on 6/27/17.
//
//

import DJISDK


class VideoTableViewController: UITableViewController {
    var apiKey = "AIzaSyB5g8_Sam9g2tu75l78CBf9P4Fwtqsy97E" //API_KEY parameter for Youtube.
    
    let clientID = "838729204385-96uve0fp6sd5ftrpedod0tdpp4tj7f3m.apps.googleusercontent.com" // OAuth 2.0
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segDisplayedContent.selectedSegmentIndex == 0 {
            return channelsDataArray.count
        }
        else {
            
        }
        
        return 0
    }
    
}
