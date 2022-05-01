//
//  ViewController.swift
//  TableViewProject
//
//  Created by Redghy on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    var carList = [Cars]()
    
    struct JdmCars {
        let title: String
        let imageName: String
    }
    
    let data: [JdmCars] = [
        JdmCars(title: "Nissan R34", imageName: "r34GTR"),
        JdmCars(title: "Mazda RX-7", imageName: "rx-7"),
        JdmCars(title: "Nissan S15", imageName: "s15"),
        JdmCars(title: "Toyota Supra", imageName: "Supra"),
        JdmCars(title: "Nissan 240sx", imageName: "Nissan 240sx"),
        JdmCars(title: "Nissan R34", imageName: "r34GTR"),
        JdmCars(title: "Mazda RX-7", imageName: "rx-7"),
        JdmCars(title: "Nissan S15", imageName: "s15"),
        JdmCars(title: "Toyota Supra", imageName: "Supra"),
        JdmCars(title: "Nissan 240sx", imageName: "Nissan 240sx"),
        JdmCars(title: "Nissan R34", imageName: "r34GTR"),
        JdmCars(title: "Mazda RX-7", imageName: "rx-7"),
        JdmCars(title: "Nissan S15", imageName: "s15"),
        JdmCars(title: "Toyota Supra", imageName: "Supra"),
        JdmCars(title: "Nissan 240sx", imageName: "Nissan 240sx"),
        JdmCars(title: "Nissan R34", imageName: "r34GTR"),
        JdmCars(title: "Mazda RX-7", imageName: "rx-7"),
        JdmCars(title: "Nissan S15", imageName: "s15"),
        JdmCars(title: "Toyota Supra", imageName: "Supra"),
        JdmCars(title: "Nissan 240sx", imageName: "Nissan 240sx"),
        JdmCars(title: "Nissan R34", imageName: "r34GTR"),
        JdmCars(title: "Mazda RX-7", imageName: "rx-7"),
        JdmCars(title: "Nissan S15", imageName: "s15"),
        JdmCars(title: "Toyota Supra", imageName: "Supra"),
        JdmCars(title: "Nissan 240sx", imageName: "Nissan 240sx"),
        JdmCars(title: "Nissan R34", imageName: "r34GTR"),
        JdmCars(title: "Mazda RX-7", imageName: "rx-7"),
        JdmCars(title: "Nissan S15", imageName: "s15"),
        JdmCars(title: "Toyota Supra", imageName: "Supra"),
        JdmCars(title: "Nissan 240sx", imageName: "Nissan 240sx"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let JdmCars = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = JdmCars.title
        cell.iconImageView.image = UIImage(named: JdmCars.imageName)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, widthForRowAt indexPath: IndexPath) -> CGFloat {
        return 25
}
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "detailSegue")
        {
            let indexPath = self.table.indexPathForSelectedRow!
            
            let tableViewDetail = segue.destination as? TableViewDetail
            
            let selectedCar = carList[indexPath.row]
            
            tableViewDetail!.selectedCar = selectedCar
            
            self.table.deselectRow(at: indexPath, animated: true)
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 140
        }
        func tableView(_ tableView: UITableView, widthForRowAt indexPath: IndexPath) -> CGFloat {
            return 25
    }
    }
        }
    
   



