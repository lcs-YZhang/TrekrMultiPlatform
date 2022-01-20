//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Steven Zhang on 2022-01-20.
//

import Foundation
struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
