//
//  User.swift
//  Beach'App 2022
//
//  Created by Zicount on 22.03.22.
//

import Foundation

enum UserRoles: String, Codable {
	case admin = "Administrator"
	case official = "Official"
	case player = "Player"
}

enum Gender: String, Codable {
	case female = "Female"
	case male = "Male"
	
	var shortDescription: String {
		switch self {
			case .female: return "👩"
			case .male: return "👨"
		}
	}
}

struct User: Codable, Identifiable, Hashable {
	var id: String = UUID().uuidString
	var dateCreated = Date() 
	var dateModified = Date()
	var name: String
	var gender: Gender
	var role: UserRoles = .player
	
	var isAdmin: Bool {
		role == .admin
	}
	
	var nameGender: String {
		"\(gender.shortDescription) \(name)"
	}
	
	var nameID: String {
		"\(name) \(String(id.prefix(8)))"
	}
	
	var nameIDGender: String {
		"\(name) \(gender.shortDescription) \(String(id.prefix(8)))"
	}
	
	func canJoin(_ tournament: Tournament) -> Bool {
		return tournament.registrationIsOpen && self.isEligibleToPlay(in: tournament)
	}
	
	func canChoosePartner(in tournament: Tournament) -> Bool {
		return tournament.registrationIsOpen && tournament.containsPlayer(with: id)
	}
	
	func isEligibleToPlay(in tournament: Tournament) -> Bool {
		switch tournament.category {
			case .mixed: return true
			case .womens: return gender == .female
			case .mens: return gender == .male
		}
	}
}

extension User {
	static let emptpyAdminUser = User(id: "", name: "User", gender: .male, role: .admin)
	static let emptyUser = User(id: "", name: "User", gender: .male)
}
