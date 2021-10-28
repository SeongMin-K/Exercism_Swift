func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let first = f(room)
    let second = f(first)
    let third = f(second)
    return (first, second, third)
}

func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func matchPassword(_ input: String) -> String {
        if input == password {
            return secret
        }
        return "Sorry. No hidden secrets here."
    }
    return matchPassword
}
