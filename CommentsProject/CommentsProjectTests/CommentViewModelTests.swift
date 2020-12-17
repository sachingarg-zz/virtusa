//
//  CommentViewModelTests.swift
//  CommentsProjectTests
//
//  Created by Sachin on 12/17/20.
//

import XCTest
@testable import CommentsProject

class CommentViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func test_valid_name_mapped(){
        let commentModel = Comment(id: 0, postId: 1, name: "Virtusa", email: "email@virtusa.ccom", body: "this string must be mapped to ViewModel")
        let commentViewModel = CommentViewModel(comment: commentModel)
        
        XCTAssertEqual(commentModel.name, commentViewModel.name)
    }
    
    func test_valid_body_mapped(){
        let commentModel = Comment(id: 0, postId: 1, name: "Virtusa", email: "email@virtusa.ccom", body: "this string must be mapped to ViewModel")
        let commentViewModel = CommentViewModel(comment: commentModel)
        
        XCTAssertEqual(commentModel.body, commentViewModel.body)
    }
    
    func test_valid_email_mapped(){
        let commentModel = Comment(id: 0, postId: 1, name: "Virtusa", email: "email@virtusa.ccom", body: "this string must be mapped to ViewModel")
        let commentViewModel = CommentViewModel(comment: commentModel)
        
        XCTAssertEqual(commentModel.email, commentViewModel.email)
    }
    
    
    

}
