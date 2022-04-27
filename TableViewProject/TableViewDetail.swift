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
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        name.text = selectedCar.id + " - " + selectedCar.name
        image.image = UIImage(named: selectedCar.imageName)
    }
}
