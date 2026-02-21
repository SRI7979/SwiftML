//
//  TaskDetailView.swift
//  SwiftML
//
//  Created by Sri Challa on 2/9/26.
//

import SwiftUI

struct TaskDetailView: View {
    let lesson: Lesson
    let taskID: Int
    @Binding var completedNodes: Set<Int>
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView{
                VStack(spacing: 20) {
                    Text(lesson.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.white, Color(red: 0.4, green: 0.9, blue: 0.9)], // White to bright Teal
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .shadow(color: .blue.opacity(1), radius: 10, x: 0, y: 0)
                        .position(x: 200, y: -30)
                    
                    ForEach(lesson.content, id: \.self) {
                        item in
                        if item.hasPrefix("IMG:") {
                            Image(item.replacingOccurrences(of: "IMG:", with: ""))
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                        }
                        else {
                            Text(item)
                            .foregroundColor(.white)
                            .font(.body)
                        }
                }
                    
                    Button(action: {
                        withAnimation(.spring()) {
                            if completedNodes.contains(taskID) {
                                completedNodes.remove(taskID)
                            }
                            else {
                                completedNodes.insert(taskID)
                            }
                         }
                    }) {
                        VStack(spacing: 8) {
                            Image(systemName: completedNodes.contains(taskID) ? "checkmark.seal.fill" : "checkmark.seal")
                                .font(.system(size: 28, weight: .light))
                                .foregroundStyle(completedNodes.contains(taskID) ? Color.green.gradient : Color.white.opacity(0.3).gradient)
                            
                            Text(completedNodes.contains(taskID) ? "Finished!" : "Finished Task?")
                                .font(.caption.bold())
                                .foregroundColor(.white)
                        }
                    }
                    .buttonStyle(FinishedTaskStyle())
                }
                .padding(.top, 50)
            }
        }
    }
}
