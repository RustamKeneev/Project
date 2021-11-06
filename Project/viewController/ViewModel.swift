//
//  ViewModel.swift
//  Project
//
//  Created by Zalkar on 6/11/21.
//

import Foundation


protocol ViewDelegate: AnyObject {
    func showResult(result: String)
}

class ViewModel {
    
    private weak var delegate: ViewDelegate? = nil
    
    init(delegate: ViewDelegate){
        self.delegate = delegate
    }
    
    private let operations = ["-", "+", "/", "*"]
    private var math = String()
    
    func clickButton(titleButton: String) {
        math = math + titleButton
        
        if !operations.contains(String(math.last ?? Character(""))) {
            let mathExpression = NSExpression(format: math)
            
            delegate?.showResult(result: String(mathExpression.expressionValue(with: nil, context: nil) as! Double))
        }
    }
}
