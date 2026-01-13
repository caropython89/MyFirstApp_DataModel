import Foundation

// Importamos la idea de la Tarea
struct Task {
    var title: String
    var isCompleted: Bool
}

// El Gestor: Aquí vive la lógica
class TaskManager {
    var myTasks: [Task] = [] // Una lista vacía de tareas

    func addTask(name: String) {
        let newTask = Task(title: name, isCompleted: false)
        myTasks.append(newTask)
        print("➕ Tarea añadida: \(name)")
    }

    func showTasks() {
        print("\n--- MI LISTA DE HOY ---")
        for task in myTasks {
            let status = task.isCompleted ? "✅" : "⏳"
            print("\(status) \(task.title)")
        }
    }
}

// --- PRUEBA DEL DÍA ---
let myApp = TaskManager()
myApp.addTask(name: "Configurar Git")
myApp.addTask(name: "Aprender Structs")
myApp.addTask(name: "Grabar video para entrevista")

myApp.showTasks()
