//
//  Chapters.swift
//  SwiftML
//
//  Created by Sri Challa on 2/14/26.
//
import SwiftUI

struct Chapter: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: String
    let color: Color
    let taskRange: ClosedRange<Int>
}

let chapters: [Chapter] = [
    Chapter(title: "The Foundation", subtitle: "Math for AI", icon: "function", color: .purple, taskRange: 1...6),
    Chapter(title: "The Toolkit", subtitle: "Python Coding", icon: "terminal", color: .blue, taskRange: 7...12),
    Chapter(title: "The Brain", subtitle: "SwiftML", icon: "brain", color: .teal, taskRange: 13...18)
]
