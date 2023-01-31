//
//  Player.swift
//  Beach'App 2022
//
//  Created by Zicount on 22.03.22.
//

import Foundation

struct Player: Codable, Identifiable, Comparable {
	var id = UUID().uuidString
	var dateCreated = Date()
	var dateModified = Date()

	var userID: String
	var isPartnered = false
	var gender: Gender
	var name: String
	var desiredPartnerID: String?
	
	var nameGender: String {
		"\(gender.shortDescription) \(name)"
	}
	
	var nameID: String {
		"\(name) \(String(userID.prefix(8)))"
	}
	
	var nameIDGender: String {
		"\(name) \(gender.shortDescription) \(String(userID.prefix(8)))"
	}
	
	static func <(lhs: Player, rhs: Player) -> Bool {
		return lhs.userID < rhs.userID
	}
	
	func returnWithNoPartner(omitting players: [Player]) -> Player {
		var player = self

		if !player.isPartnered && (player.desiredPartnerID == players[0].userID || player.desiredPartnerID == players[1].userID) {
			player.desiredPartnerID = nil
		}
		
		return player
	}
}

extension Player {
	static let emptyPlayer = Player(id: "", userID: "", gender: .male, name: "")
}
