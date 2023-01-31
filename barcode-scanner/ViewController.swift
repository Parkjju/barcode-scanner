//
//  ViewController.swift
//  barcode-scanner
//
//  Created by 박경준 on 2023/01/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scanResultLabel: UILabel!
    @IBOutlet weak var scanButton: UIButton!
    
    let scannerViewController = ScannerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scannerViewController.delegate = self
    }
    
    
    @IBAction func scanButtonTapped(_ sender: UIButton) {
        self.navigationController?.pushViewController(scannerViewController, animated: true)
    }
    

}

extension ViewController: ScannerViewDelegate{
    func didFindScannedText(text: String) {
        scanResultLabel.text = text
    }
}
