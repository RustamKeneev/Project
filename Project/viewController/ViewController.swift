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
    
    private lazy var result: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = UIFont.systemFont(ofSize: 25)
        return view
    }()
    
    private lazy var mathField: UITextField = {
        let view = UITextField()
        view.placeholder = "Enter math func"
        return view
    }()
    
    private lazy var resultButton: UIButton = {
        let view = UIButton()
        view.setTitle("Math", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.addTarget(self, action: #selector(mathClick), for: .touchUpInside)
        return view
    }()
    
    @objc func mathClick(view: UIButton) {
        viewModel.clickButton(titleButton: mathField.text ?? String())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(result)
        result.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(20)
        }
        
        view.addSubview(mathField)
        mathField.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        
        view.addSubview(resultButton)
        resultButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalTo(mathField.snp.right)
        }
    }
}

extension ViewController: ViewDelegate {
    func showResult(result: String) {
        self.result.text = result
    }
}
