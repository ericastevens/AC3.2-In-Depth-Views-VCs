//
//  PlayingCard.swift
//  EmojiCardStack
//
//  Created by Erica Y Stevens on 12/20/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

protocol PlayingCard {
    var suit: String { get set }
    var value: Int { get set }
}
