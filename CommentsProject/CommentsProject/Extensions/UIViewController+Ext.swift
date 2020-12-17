//
//  UIViewController+Ext.swift
//  CommentsProject
//
//  Created by Sachin on 12/17/20.
//

import UIKit

extension  UIViewController {
    func presentAlertViewConrtoller(title : String, message : String, actionTitle : String){
        DispatchQueue.main.async {
            let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: actionTitle, style: .default, handler: nil)
            alertView.addAction(alertAction)
            self.present(alertView, animated: true)
            
        }
    }
    
}
