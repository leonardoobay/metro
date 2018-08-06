//
//  phoneTableViewController.swift
//  MetroPriceCheck
//
//  Created by mac on 7/24/18.
//  Copyright © 2018 leonardo obay. All rights reserved.
//

import UIKit

class phoneTableViewController: UITableViewController {
    var cellphones : [cellPhone]  = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cellphones = createPhones()
        
    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cellphones.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text = cellphones[indexPath.row].model
        //
        cell.imageView?.image = cellphones[indexPath.row].pic
        //for subtitle
        cell.detailTextLabel?.text = cellphones[indexPath.row].feat

        // Configure the cell...

        return cell
    }
    //this function reads when a cell is touch band chnages view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currPhone = cellphones[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: currPhone)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // cellinfovc lets us access the other viewcontroller before it actually loads it
       
        let cellinfovc =  segue.destination as! InfoViewController
       
        // gets info from above method
        
        cellinfovc.currPhone = sender as! cellPhone
    }
    func salesTax(totalcost : Double) -> Double {
        let cityTax = 9.75
        let concityTax = cityTax/100
        let taxForThisPhone = totalcost * concityTax
    // the double round rounds it to two decimal places
        return  Double(round(100*taxForThisPhone)/100)
        //Double(round(100*taxForThisPhone)/100)
    }
    func createPhones() -> [cellPhone] {
        let J3 = cellPhone()
        J3.Brand = "Samsung"
        J3.instantRebate = 80
        J3.model = "Samsung J3"
        J3.MSRP =   139
        J3.taxes = salesTax(totalcost: J3.MSRP)
        J3.pic = UIImage(named: "samsungj3")
        J3.feat = "16gb  && 8mp camera"
        let J7 = cellPhone()
        J7.Brand = "Samsung"
        J7.instantRebate = 60
        J7.model = "Samsung J7"
        J7.MSRP = 209
        J7.taxes = salesTax(totalcost: J7.MSRP)
        J7.pic = UIImage(named: "samsungj7")
        J7.feat = "32gb && 13mp"
        let GS9 = cellPhone()
        GS9.Brand = "Samsung"
        GS9.instantRebate = 30
        GS9.model = "Galaxy S9"
        GS9.MSRP = 729
        GS9.taxes = salesTax(totalcost: GS9.MSRP)
        GS9.pic = UIImage(named: "gs9")
        GS9.feat = "32gb && 16MP"
        let Aristo2 = cellPhone()
        Aristo2.Brand = "LG"
        Aristo2.instantRebate = 80
        Aristo2.model = "Aristo2"
        Aristo2.MSRP = 139
        Aristo2.taxes = salesTax(totalcost: Aristo2.MSRP)
        Aristo2.pic = UIImage(named: "aristo2")
        Aristo2.feat = "16gb && 8mp"
        let K20 = cellPhone()
        K20.Brand = "LG"
        K20.instantRebate = 70
        K20.model = "LG K20"
        K20.MSRP = 169
        K20.taxes = salesTax(totalcost: K20.MSRP)
        K20.pic = UIImage(named: "lgk20")
        K20.feat = "32gb && 8mp"
        let Stylo4 = cellPhone()
        Stylo4.Brand = "LG"
        Stylo4.instantRebate = 60
        Stylo4.model = "Stylo4"
        Stylo4.MSRP = 239
        Stylo4.taxes = salesTax(totalcost: Stylo4.MSRP)
        Stylo4.pic = UIImage(named: "stylo4")
       Stylo4.feat = "32gb && 13mp"
        let avid4 = cellPhone()
        avid4.Brand = "ZTE"
        avid4.instantRebate = 60
        avid4.model = "Avid4"
        avid4.MSRP = 109
        avid4.taxes = salesTax(totalcost: avid4.MSRP)
        avid4.pic = UIImage(named: "zteavid4")
        avid4.feat = "8gb && 5mp"
        let moto4 = cellPhone()
        moto4.Brand = "Motorola"
        moto4.instantRebate = 70
        moto4.model = "E4"
        moto4.MSRP = 129
        moto4.taxes = salesTax(totalcost: moto4.MSRP)
        moto4.pic = UIImage(named: "motoe")
        moto4.feat = "16gb && 8mp"
        return [J3, J7, GS9, Aristo2, K20, Stylo4, avid4, moto4]
    }




}
