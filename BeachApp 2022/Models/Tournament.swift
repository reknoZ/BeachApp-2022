//
//  Tournament.swift
//  Beach'App 2022
//
//  Created by Zicount on 22.03.22.
//

import Foundation

struct Tournament: Identifiable, Codable {
	var id = UUID().uuidString
	var dateCreated = Date()
	var dateModified = Date()
	var title: String
	var date: Date
	var category: TournamentCategory = .mixed
	var status: TournamentStatus = .preRegistration
	var venue: TournamentVenue = .franchises
	var players = [Player]()
	var teams = [Team]()
	
	var dayMonth: String {
		"22 Mar"
	}
	
	var singlePlayers: [Player] {
		return players.filter { !$0.isPartnered }
	}
	
	func containsPlayer(with userID: String) -> Bool {
		let matchingPlayers = players.filter { $0.userID == userID }
		return matchingPlayers.count > 0
	}
	
	func femalePlayers() -> [Player] {
		players.filter { $0.gender == .female }
	}

	func malePlayers() -> [Player] {
		players.filter { $0.gender == .male }
	}
	
	var registrationIsOpen: Bool {
		return status == .registrationOpen
	}
	
	func appropriatePartners(for user: User) -> [Player] {
		switch category {
			case .womens: return femalePlayers().filter { !$0.isPartnered && $0.userID != user.id }
			case   .mens: return   malePlayers().filter { !$0.isPartnered && $0.userID != user.id }
			case  .mixed:
				switch user.gender {
					case .female: return malePlayers().filter { !$0.isPartnered && $0.userID != user.id }
					case .male: return femalePlayers().filter { !$0.isPartnered && $0.userID != user.id }
				}
		}
	}
	
	func playersAreAvailable(for user: User) -> Bool {
		return appropriatePartners(for: user).count > 0
	}
}

enum TournamentCategory: String, CaseIterable, Codable, Identifiable {
	case womens = "Womens"
	case  mixed = "Mixed"
	case   mens = "Mens"
	
	var id: String { self.rawValue }
	
	var icons: String {
		switch self {
			case .womens: return "👩👩"
			case .mens:   return "👨👨"
			case .mixed:  return "👩👨"
		}
	}
}

enum TournamentStatus: String, CaseIterable, Codable, Identifiable {
	case     preRegistration = "Pre-Registration"
	case    registrationOpen = "Registration Open"
	case  registrationClosed = "Registration Closed"
	case     tournamentBegun = "Tournament Begun"
	case     tournamentEnded = "Tournament Ended"
	case tournamentCancelled = "Tournament Cancelled"
	
	var id: String { self.rawValue }
}

enum TournamentVenue: String, CaseIterable, Codable, Identifiable {
	case franchises = "Franchises"
	case evaux = "Évaux"
	
	var id: String { self.rawValue }
}
