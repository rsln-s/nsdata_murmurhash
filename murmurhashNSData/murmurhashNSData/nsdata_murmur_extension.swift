//
//  nsdata_murmur_extension.swift
//  murmurhashNSData
//
//  Created by Руслан on 24.08.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

extension NSData {
    
    var MurMurHash : UInt32 {
        get {
                let data = mydata.bytes
                let size = mydata.length
                return murmurhash(UnsafePointer<Int8>(data), UInt32(size), UInt32(0))
        }
    }
    
//    func MurMurHash (seed: UInt32) -> UInt32{
//        let data = mydata.bytes
//        let size = mydata.length
//        return murmurhash(UnsafePointer<Int8>(data), UInt32(size), seed)
//    }
}