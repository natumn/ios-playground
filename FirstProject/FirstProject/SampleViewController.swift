//
//  SampleViewController.swift
//  FirstProject
//
//  Created by 棗光幹 on 2018/06/22.
//  Copyright © 2018年 natumn. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        label.text = "Test"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        label.text = "YES"
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        //performSegue(withIdentifier: "presentSecondViewController", sender: self)
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else {
            return
        }
        present(secondViewController, animated: true, completion: nil)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        guard let identifier = segue.identifier, identifier == "presentSecondViewController" else {
            return
        }
        let destination = segue.destination
    }
}
