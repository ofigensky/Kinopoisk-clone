//
//  StringExtension.swift
//  Kinopoisk clone
//
//  Created by Gleb Glushok on 09.06.2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
