func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {

  func checkPassword(pw:String) -> String {
    if pw != password {
      return  "Sorry. No hidden secrets here."
    } else {
      return secret
    }
  }
  return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {

  let a = f(room)
  let b = f(a)
  let c = f(b)
  
  return (a, b, c)
}