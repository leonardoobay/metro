//
//  InfoViewController.swift
//  MetroPriceCheck
//
//  Created by mac on 7/26/18.
//  Copyright © 2018 leonardo obay. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
   //the current phone being displayed in the view
    var currPhone = cellPhone()

    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var imgFile: UILabel!
    @IBOutlet weak var msrpFile: UILabel!
    @IBOutlet weak var taxFile: UILabel!
    @IBOutlet weak var actFile: UILabel!
    @IBOutlet weak var irFile: UILabel!
    @IBOutlet weak var totalFile: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let activationFee = 12.00
        var totalValue = calcTotal(msrp: currPhone.MSRP, taxes: currPhone.taxes, activation: activationFee, ir: currPhone.instantRebate)
        // Do any additional setup after loading the view.
        //imgFile.t = currPhone.pic
        displayImage.image = currPhone.pic
        msrpFile.text = "MSRP: \(currPhone.MSRP)"
        taxFile.text = "Taxes: \(currPhone.taxes)"
        actFile.text = "Activation Fee: 12"
        irFile.text = "Instant Rebate: \(currPhone.instantRebate)"
        totalFile.text = "Total: \(totalValue)"
        
        
        
        
    }

    func calcTotal(msrp: Double , taxes: Double , activation: Double , ir : Double ) -> Double {
       
        return msrp+taxes+activation - ir
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
