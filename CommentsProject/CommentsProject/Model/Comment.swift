//
//  Comment.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import Foundation


struct Comment : Codable{
   
    let id : Int
    let postId : Int
    let name : String
    let email : String
    let body : String
    

    
}

/*
 "postId": 1,
     "id": 1,
     "name": "id labore ex et quam laborum",
     "email": "Eliseo@gardner.biz",
     "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
 */
