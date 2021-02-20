//
//  ViewController.swift
//  cicuta_virosa
//
//  Created by Samuel on 19/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var dirField: UITextField!
    @IBOutlet weak var writeButn: UIButton!
    @IBOutlet weak var listButn: UIButton!
    @IBOutlet weak var filesOut: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func jbbutton(_ sender: UIButton) {
        cicuta_virosa()
        testLabel.text = "pwned"
        writeButn.isEnabled = true
        listButn.isEnabled = true
}
    
    @IBAction func writeBtn(_ sender: Any) {
        mkdir(dirField.text, 0777)
    }
    
    @IBAction func listBtn(_ sender: Any) {
        do {
            let files = try FileManager.default.contentsOfDirectory(atPath: dirField.text!)
            print(files)
            filesOut.text = files.joined(separator: "\n")
        } catch {
            print(error)
        }
    }
    
}
