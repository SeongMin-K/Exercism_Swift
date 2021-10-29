// TODO: Define the Position struct
struct Position {
    var x: Int = 0
    var y: Int = 0

    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}

// TODO: Define the Size struct
struct Size {
    var width: Int = 80
    var height: Int = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

// TODO: Define the Window class
class Window {
    var title: String = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String?
    
    func resize(to size: Size) {
        self.size.width = min(max(1, size.width), screenSize.width - position.x)
        self.size.height = min(max(1, size.height), screenSize.height - position.y)
    }
    
    func move(to position: Position) {
        self.position.x = min(max(0, position.x), screenSize.width - size.width)
        self.position.y = min(max(0, position.y), screenSize.height - size.height)
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        self.contents = text
    }
    
    func display() -> String {
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}

let mainWindow: Window = {
    var window = Window()
    window.resize(to: Size(width: 400, height: 300))
    window.move(to: Position(x: 100, y: 100))
    window.update(title: "Main Window")
    window.update(text: "This is the main window")
    return window
}()
