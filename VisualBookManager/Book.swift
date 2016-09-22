//
//  Book.swift
//  BookManager
//
//  Created by Yoo SeungHwan on 2016/09/22.
//  Copyright © 2016年 kotsuya00. All rights reserved.
//

import Foundation

class Book{
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint(){
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}
