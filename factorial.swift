import Foundation

func factorial(_ inputNumber: Int) -> String {
    var result = [1]
    if inputNumber >= 0 && inputNumber <= 100 {

		if inputNumber == 0 {result = [1]}
		else {
		  for i in 1...inputNumber {
			  result = result.map { $0 * i }
			  result = shiftDigits(result)
		  }
		}
	} else {return "Введите число в диапазоне 0...100"}
    return result.map(String.init).joined()
}

private func shiftDigits(_ array: [Int]) -> [Int] {
	var result = [Int]()
	var transfer = 0
	for value in array.reversed() {
		let total = value + transfer
		let digit = total % 10
		transfer = total / 10
		result.append(digit)
	}

	while transfer > 0 {
		let digit = transfer % 10
		transfer = transfer / 10
		result.append(digit)
	}

	return result.reversed()
}