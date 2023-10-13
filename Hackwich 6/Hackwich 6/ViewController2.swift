//
//  ViewController2.swift
//  Hackwich 6
//
//  Created by Sean Taylor on 10/12/23.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource & UITableViewDelegate {
   
    var myPlacesArray = ["Alaska", "France", "Canada"]
    var myCitiesArray = ["Juneau", "Paris", "Quebec"]
    
    @IBOutlet weak var tableView: UITableView!
    
    //table stuff
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myPlacesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                      let text = myPlacesArray[indexPath.row]
        cell.detailTextLabel?.text = myCitiesArray[indexPath.row]
                      cell.textLabel?.text = text
                      return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
// !! yay !!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
