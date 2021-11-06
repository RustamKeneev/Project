//
//  ViewController.swift
//  Project
//
//  Created by Rustam Keneev on 6/11/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var label: UILabel = {
        let view = UILabel()
        view.text = "0"
        view.textAlignment = .right
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 99)
        return view
    }()
    
    private var clear: UIButton = {
        let view = UIButton()
        view.backgroundColor = .lightGray
        view.setTitle("AC", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var change: UIButton = {
        let view = UIButton()
        view.backgroundColor = .lightGray
        view.setTitle("+/-", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var percent: UIButton = {
        let view = UIButton()
        view.backgroundColor = .lightGray
        view.setTitle("%", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var seven: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("7", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var eight: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("8", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var nine: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("9", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var four: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("4", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var five: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("5", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var six: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("6", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var one: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("1", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var two: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("2", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var three: UIButton = {
        let view = UIButton()
        view.backgroundColor = .darkGray
        view.setTitle("3", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    
    private var division: UIButton = {
        let view = UIButton()
        view.backgroundColor = .orange
        view.setTitle("/", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 30
        return view
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.right.left.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            
        view.addSubview(clear)
        clear.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.height.width.equalTo(60)
            make.top.equalTo(label.snp.bottom).offset(10)
        }
            view.addSubview(change)
            change.snp.makeConstraints { (make) in
                make.left.equalTo(clear.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(label.snp.bottom).offset(10)
            }
            view.addSubview(percent)
            percent.snp.makeConstraints { (make) in
                make.left.equalTo(change.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(label.snp.bottom).offset(10)
            }
            view.addSubview(seven)
            seven.snp.makeConstraints { (make) in
                make.left.equalToSuperview()
                make.height.width.equalTo(60)
                make.top.equalTo(clear.snp.bottom).offset(10)
            }
            view.addSubview(eight)
            eight.snp.makeConstraints { (make) in
                make.left.equalTo(seven.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(clear.snp.bottom).offset(10)
            }
            view.addSubview(nine)
            nine.snp.makeConstraints { (make) in
                make.left.equalTo(eight.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(clear.snp.bottom).offset(10)
            }
            
            view.addSubview(four)
            four.snp.makeConstraints { (make) in
                make.left.equalToSuperview()
                make.height.width.equalTo(60)
                make.top.equalTo(seven.snp.bottom).offset(10)
            }
            view.addSubview(five)
            five.snp.makeConstraints { (make) in
                make.left.equalTo(seven.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(seven.snp.bottom).offset(10)
            }
            view.addSubview(six)
            six.snp.makeConstraints { (make) in
                make.left.equalTo(eight.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(seven.snp.bottom).offset(10)
            }
            
            view.addSubview(one)
            one.snp.makeConstraints { (make) in
                make.left.equalToSuperview()
                make.height.width.equalTo(60)
                make.top.equalTo(four.snp.bottom).offset(10)
            }
            view.addSubview(two)
            two.snp.makeConstraints { (make) in
                make.left.equalTo(seven.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(four.snp.bottom).offset(10)
            }
            view.addSubview(three)
            three.snp.makeConstraints { (make) in
                make.left.equalTo(eight.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(four.snp.bottom).offset(10)
            }
            view.addSubview(division)
            division.snp.makeConstraints { (make) in
                make.left.equalTo(percent.snp.right).offset(10)
                make.height.width.equalTo(60)
                make.top.equalTo(label.snp.bottom).offset(10)
            }
    }
    }
}

