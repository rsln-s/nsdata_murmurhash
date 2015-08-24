//
//  nsdata_murmur_extension.swift
//  murmurhashNSData
//
//  Created by Руслан on 24.08.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

extension NSData {
    func MurMurHash () -> UInt32{
        let datastr = mydata.description
        let mydatastr = datastr.cStringUsingEncoding(NSUTF8StringEncoding)
        return murmurhash(mydatastr!, UInt32(strlen(mydatastr!)), UInt32(0))

    }
    func MurMurHash (seed: UInt32) -> UInt32{
        let datastr = mydata.description
        let mydatastr = datastr.cStringUsingEncoding(NSUTF8StringEncoding)
        return murmurhash(mydatastr!, UInt32(strlen(mydatastr!)), seed)
    }
}