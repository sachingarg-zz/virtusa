//
//  CommentViewModel.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import Foundation

struct CommentViewModel {
    
    let name: String
    let body : String
    let email : String
    
    // Dependency Injection (DI)
    init(comment: Comment) {
        self.name = comment.name
        self.body = comment.body
        self.email = comment.email
        
        

    }
    
}
