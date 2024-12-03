//
//  File.swift
//
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import RealmSwift

class RealmManager {
    
    // MARK: - Properties
    
    static let shared = RealmManager()
    private var realm: Realm?
    
    // MARK: - Init
    
    private init() {
        do {
            realm = try Realm()
        } catch {
            print("Failed to initialize Realm: \(error.localizedDescription)")
        }
    }
    
    func getRealm() -> Realm? {
        return realm
    }
}
