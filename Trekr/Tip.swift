//
//  Tip.swift
//  Trekr
//
//  Created by Carlos Delgado on 2021-05-10.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
