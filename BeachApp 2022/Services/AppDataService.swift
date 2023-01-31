//
//  AppDataService.swift
//  Beach'App 2022
//
//  Created by Zicount on 24.03.22.
//

import Foundation

class AppDataService {
	func getUsers(completion: @escaping ([User]) -> Void) {
		completion ([
			User(name: "Admin 1", gender: .male, role: .admin),
			User(name: "Admin 2", gender: .female, role: .admin),
			User(name: "Admin 3", gender: .male, role: .admin),
			User(name: "Admin 4", gender: .female, role: .admin),
			User(name: "Admin 5", gender: .male, role: .admin),
			User(name: "Admin 6", gender: .female, role: .admin),
			User(name: "User  1", gender: .male),
			User(name: "User  2", gender: .female),
			User(name: "User  3", gender: .male),
			User(name: "User  4", gender: .female),
			User(name: "User  5", gender: .male),
			User(name: "User  6", gender: .female),
			User(name: "User  7", gender: .male),
			User(name: "User  8", gender: .female),
			User(name: "User  9", gender: .male),
			User(name: "User 10", gender: .female),
			User(name: "User 11", gender: .male),
			User(name: "User 12", gender: .female),
            User(name: "User 13", gender: .male, role: .official),
            User(name: "User 14", gender: .female, role: .official),
            User(name: "User 15", gender: .male, role: .official),
            User(name: "User 16", gender: .female, role: .official),
            User(name: "User 17", gender: .male, role: .official),
            User(name: "User 18", gender: .female, role: .official),
			User(name: "User 19", gender: .male),
			User(name: "User 20", gender: .female),
			User(name: "User 21", gender: .male),
			User(name: "User 22", gender: .female),
			User(name: "User 23", gender: .male),
			User(name: "User 24", gender: .female),
			User(name: "User 25", gender: .male),
			User(name: "User 26", gender: .female),
			User(name: "User 27", gender: .male),
			User(name: "User 28", gender: .female),
			User(name: "User 29", gender: .male),
			User(name: "User 20", gender: .female),
		])
	}
	
	func getTournaments(from mensList: [Player], and womensList: [Player], completion: @escaping ([Tournament]) -> Void) {
		completion ([
			Tournament(id: "1", title: "Premier King Of The Court",
					   date: Date(from: "23.04.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "2", title: "Tournoi mixte d'ouverture",
					   date: Date(from: "24.04.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "3", title: "Tournoi féminin 1",
					   date: Date(from: "01.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .womens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "4", title: "Tournois masculin 1",
					   date: Date(from: "01.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "5", title: "Tournoi mixte de mai",
					   date: Date(from: "08.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "6", title: "Tournoi junior U19F",
					   date: Date(from: "14.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .womens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "7", title: "Tournoi junior U19M",
					   date: Date(from: "14.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "8", title: "Tournoi B1F",
					   date: Date(from: "15.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .womens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "9", title: "Tournoi B1M",
					   date: Date(from: "15.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "10", title: "Tournoi junior U13F",
					   date: Date(from: "21.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .womens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "11", title: "Tournoi juniors U13M",
					   date: Date(from: "21.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "12", title: "Tournoi mixte de l'Ascencion",
					   date: Date(from: "26.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "13", title: "Tournoi féminin de mai",
					   date: Date(from: "29.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .womens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "14", title: "Tournoi masculin de mai",
					   date: Date(from: "29.05.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mens, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "15", title: "Tournoi junior U13F & M",
					   date: Date(from: "04.06.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "16", title: "Master mixte de Pentecôte",
					   date: Date(from: "05.06.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "17", title: "Master mixte de Pentecôte",
					   date: Date(from: "06.06.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "18", title: "Tournois juniors U13F & M",
					   date: Date(from: "18.06.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "19", title: "Tournoi féminin et masculin de juin",
					   date: Date(from: "19.06.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "20", title: "Tournoi mixte de juillet",
					   date: Date(from: "03.07.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "21", title: "Tournoi juniors U17F & M",
					   date: Date(from: "09.07.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "22", title: "Nuit du Beach Volley",
					   date: Date(from: "16.07.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "23", title: "Tournois juniors U19F & M",
					   date: Date(from: "23.07.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "24", title: "Tournoi traditionnel du 1er août",
					   date: Date(from: "01.08.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "25", title: "Tournois féminin et masculin d'août",
					   date: Date(from: "14.08.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "26", title: "Tournoi mixte du Jeûne genevois",
					   date: Date(from: "08.09.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "27", title: "Finales genevoises 2021",
					   date: Date(from: "10.09.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "28", title: "Finales genevoises 2021",
					   date: Date(from: "11.09.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "29", title: "Tournoi féminin et masculin de septembre",
					   date: Date(from: "18.09.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),
			
			Tournament(id: "30", title: "Tournoi mixte de clôture",
					   date: Date(from: "25.09.2022 09:00", formattedAs: "dd.MM.yyyy hh:mm"),
					   category: .mixed, status: .registrationOpen, venue: .franchises),

		])
	}
}
