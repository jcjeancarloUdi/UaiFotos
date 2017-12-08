//
//  FeedTableViewController.swift
//  Uai Fotos
//
//  Created by Elifazio Bernardes da Silva on 07/12/2017.
//  Copyright © 2017 Uai Fotos. All rights reserved.
//

import UIKit

class FeedTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let avatarCollectionData = AvatarCollectionData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "FeedPhotoCell", bundle: nil), forCellReuseIdentifier: FeedPhotoTableViewCell.identifier)
        
        // cabeçalho da tableview com a lista de usuários...
        if let avatarListTableViewCell = Bundle.main.loadNibNamed("AvatarListTableViewCell", owner: self, options: nil)?.first as? AvatarListTableViewCell {
            avatarListTableViewCell.avatarCollection.delegate = self.avatarCollectionData
            avatarListTableViewCell.avatarCollection.dataSource = self.avatarCollectionData
            
            self.tableView.tableHeaderView = avatarListTableViewCell
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
/*        if indexPath.row == 0 {
            if let avatarListTableViewCell = Bundle.main.loadNibNamed("AvatarListTableViewCell", owner: self, options: nil)?.first as? AvatarListTableViewCell {
                avatarListTableViewCell.avatarCollection.delegate = self.avatarCollectionData
                avatarListTableViewCell.avatarCollection.dataSource = self.avatarCollectionData
                return avatarListTableViewCell
            }
        }*/
        let cell = tableView.dequeueReusableCell(withIdentifier: FeedPhotoTableViewCell.identifier, for: indexPath)
        
        // Configure the cell...
        
        return cell
    }/*
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let avatarListTableViewCell = Bundle.main.loadNibNamed("AvatarListTableViewCell", owner: self, options: nil)?.first as? AvatarListTableViewCell {
            avatarListTableViewCell.avatarCollection.delegate = self.avatarCollectionData
            avatarListTableViewCell.avatarCollection.dataSource = self.avatarCollectionData
            return avatarListTableViewCell
        }
        
        return nil
    }
    */
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
