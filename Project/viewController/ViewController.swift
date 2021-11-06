//
//  ViewController.swift
//  Project
//
//  Created by Rustam Keneev on 6/11/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private lazy var viewModel: ViewModel = {
        return ViewModel(delegate: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

extension ViewController: ViewDelegate {
    func showResult(result: String) {
        print(result)
    }
}
