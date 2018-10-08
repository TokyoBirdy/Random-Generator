//
//  Generator.swift
//  Generator
//
//  Created by ceciliah on 10/5/18.
//

import Foundation

//generate random string
public extension String {
    static func random(length: Int = 20) -> String {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let randomCharacters = (0..<length).map { _ in base.randomElement()!}
        return String(randomCharacters)
    }
}

//generate random color
public extension UIColor {
    public static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }

//Generate image
    public func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image(actions: { renderContext in
            self.setFill()
            renderContext.fill(CGRect(origin: .zero, size: size))
        })
    }
}

