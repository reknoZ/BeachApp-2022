//
//  Team.swift
//  Beach'App 2022
//
//  Created by Zicount on 08.05.22.
//

import Foundation

struct Team: Identifiable, Codable {
	var id = UUID().uuidString
	var dateCreated = Date()
	var dateModified = Date()
	
	var player1: Player
	var player2: Player
}
