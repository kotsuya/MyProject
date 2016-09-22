//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Yoo SeungHwan on 2016/09/22.
//  Copyright © 2016年 kotsuya00. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    
    @IBOutlet var bookCountLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = Book()
        book1.name = "Hamlet"
        book1.genre = "Tragedy"
        book1.author = "Shakespeare"
        
        let book2 = Book()
        book2.name = "For Whom the Bell Tolls"
        book2.genre = "War Fiction"
        book2.author = "Hemingway"
        
        let book3 = Book()
        book3.name = "Crime and Punishment"
        book3.genre = "Realism"
        book3.author = "Tolstoy"
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        bookCountLabel.text = "\(myBook.countBook())"
    }
    
    @IBAction func showAllBookAction(_ sender:AnyObject){
//        print(myBook.showAllBook())
        outputTextView.text = myBook.showAllBook()
    }
    
    @IBAction func addBookAction(_ sender:AnyObject){
        let bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) was registered successfully!"
        bookCountLabel.text = "\(myBook.countBook())"
    }
    
    @IBAction func findBookAction(_ sender:AnyObject){
        let resultBook = myBook.findBook(nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "NOT FOUND"
        }
    }
    
    @IBAction func removeBookAction(_ sender:AnyObject){
        let deleteBook = myBook.removeBook(nameTextField.text!)
        if deleteBook == true {
            outputTextView.text = "\(nameTextField.text!) DELETE"
            bookCountLabel.text = "\(myBook.countBook())"
        }else{
            outputTextView.text = "NOT FOUND"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

