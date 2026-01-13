import Foundation

struct Task {
    let id: UUID = UUID()
    var title: String
    var isCompleted: Bool
    var priority: String // "Alta", "Media" o "Baja"
    
    func displayStatus() {
        let icon = isCompleted ? "✅" : "⏳"
        print("\(icon) Tarea: \(title) [Prioridad: \(priority)]")
    }
}

// Probando el modelo
var task1 = Task(title: "Aprender Git", isCompleted: true, priority: "Alta")
var task2 = Task(title: "Diseñar mi primera App", isCompleted: false, priority: "Alta")

task1.displayStatus()
task2.displayStatus()