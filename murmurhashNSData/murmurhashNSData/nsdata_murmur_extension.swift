//
//  nsdata_murmur_extension.swift
//  murmurhashNSData
//
//  Created by Руслан on 24.08.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import Foundation

extension NSData {
    func MurMurHash (seed: UInt32) -> UInt32{
        let datastr = NSString(data: self, encoding: NSUTF8StringEncoding)
        let mydatastr = datastr?.cStringUsingEncoding(NSUTF8StringEncoding)
        return murmurhash(mydatastr!, UInt32(strlen(mydatastr!)), seed)
    }
}