//
//  main.swift
//  murmurhashNSData
//
//  Created by Руслан on 24.08.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

println("Hello, World!")

let myurl = NSURL(string: "http://www.newyorker.com/wp-content/uploads/2015/08/150831_r26907-863.jpg")
let mydata = NSData(contentsOfURL: myurl!)!
let myhash = mydata.MurMurHash

println("murhash is \(myhash)")
