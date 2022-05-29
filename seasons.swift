import Foundation

func seasons(_ num: Int) -> String {
	switch num {
		case 1...2, 12:
			print("Зима")
		case 3...5:
			print("Весна")
		case 6...8:
			print("Лето")
		case 9...11:
			print("Осень")
		default:
			print("Перезапустите программу и введите число в диапазоне 1...12")
	}
	
	return "Ok"
}