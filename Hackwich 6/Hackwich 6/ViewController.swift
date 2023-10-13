//
//  ViewController.swift
//  Hackwich 6
//
//  Created by Sean Taylor on 10/10/23.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    //var
    var myFriendsArray = ["Chris","Christina","Emma"]
    var myfriendsHomeArray = ["Mililani Mauka", "Mililani Mauka", "Mililani Mauka"]

    @IBOutlet weak var tableView: UITableView!
    
    
//   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//          return 1;
//   }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return myFriendsArray.count
     }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {//*only needs one of these^ dont copy paste the whole thing again
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                       let text = myFriendsArray[indexPath.row]
        cell.detailTextLabel?.text = myfriendsHomeArray[indexPath.row]
                       cell.textLabel?.text = text
                       return cell
          }

    
   

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

