//
//  TableViewDetail.swift
//  TableViewProject
//
//  Created by Redghy on 4/26/22.
//

import Foundation
import UIKit

class TableViewDetail: UIViewController
{
    
    @IBOutlet weak var name:
    UILabel!
    
    @IBOutlet weak var image:
    UIImageView!
    
    var selectedCar: Cars!
    /*
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if(segue.identifier == "detailSegue") {
            let indexPath = self.Cars.indexPathForSelectedRow!
            let tableViewDetail = segue.destination as? TableViewDetail
            let selectedCar = Cars [indexPath.row]
            tableViewDetail!.selectedCar = selectedCar
            self.Cars.deselectRow(at: indexPath, animated: true)
        }
    */
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        name.text = selectedCar.id + " - " + selectedCar.name
        image.image = UIImage(named: selectedCar.imageName)
    }
}
