//
//  RailroadViewController.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 22.06.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

class RailroadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clearColor()

        let blurView = BlurView(.Dark, frame: view.bounds)
        blurView.addFibrantText("Hello", fontSize: 80)
        view.addSubview(blurView)
        view.sendSubviewToBack(blurView)




        //let i : Int? = nil
        //let a = bind(i) { i in "\(i)" }
        //print(a)

        //let b = bind(i) { (i) -> String in
        //"new \(i)"
        //}
        //print(b)



        //let foo = NSUserDefaults.standardUserDefaults().objectForKey("123")
        //let c = bind(foo) { foo in
        //return (foo as! String) + "23432"
        //}
        //print(c)


        //-----------------------------------------------
        let profileId: Int? = nil

        //if let url = bind(bind(profileId, pathForProfile), toUrl) {
        //print(url)
        //} else {
        //print("NO URL")
        //}


        let url = (profileId => pathForProfile => toUrl) ?? "No URL"
        print(url!)
        //if let url = (profileId => pathForProfile => toUrl) {
        //print(url)
        //} else {
        //print("NO URL")
        //}



        switch ("filename" => readFile => parseJSON) {
        case .Ok(let box):
            print("result: \(box.value)")
        case .Error(let error):
            print("error: \(error)")
        }

    }




}

//----------------

func bind<T, U>(optional: T?, _ f: T -> U?) -> U? {
    switch optional {
    case .Some(let v):
        return f(v)
    case .None:
        print("ERROR")
        return nil
    }
}

infix operator => {
associativity left
}

func =><T, U>(lhs: Optional<T>, rhs: T -> U?) -> U? {
    return bind(lhs, rhs)
}

//----------------

class Box<T> {
    let value: T

    init(value: T) {
        self.value = value
    }
}

enum Result<T> {
    case Ok(Box<T>)
    case Error(NSError)
}

func =><T, U>(lhs: Result<T>, rhs: T -> Result<U>) -> Result<U> {
    switch lhs {
    case .Ok(let box):
        return rhs(box.value)
    case .Error(let error):
        return .Error(error)
    }
}

func =><T, U>(lhs: T, rhs: T -> Result<U>) -> Result<U> {
    return rhs(lhs)
}

func readFile(filename: String) -> Result<String> {
    return .Ok(Box(value: "contents of file"))
}

func parseJSON(jsonData: String) -> Result<NSDictionary> {
    let dictionary: NSDictionary = ["object": "value"]
    return .Ok(Box(value: dictionary))
}

//----------------

func pathForProfile(profileId: Int) -> String? {
    if profileId < 0 {
        return nil
    } else {
        return "api.com/profile/\(profileId)"
    }
}

func toUrl(string: String) -> NSURL? {
    return NSURL(string: string)
}


