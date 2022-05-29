import Foundation

func translateToString(_ input: Int)-> String {
	var st = ""

	if input < 1000 && input >= 1 {
		let hundreds=input/100
		let tens = (input%100)/10
		let fromTenToNineteen =  input%100
		let one = input%10

		switch hundreds {
		case 1:
			st="сто "
		case 2:
			st="двести "
		case 3:
			st="триста "
		case 4:
			st="четыреста " 
		case 5:
			st="пятьсот "
		case 6:
			st="шестьсот "
		case 7:
			st="семьсот "
		case 8:
			st="восемьсот "
		case 9:
			st="девятьсот "
		default:
			break
		}

		switch tens {
		case 1:
			switch fromTenToNineteen {
			  case 10:
				  st+="десять "
			  case 11:
				  st+="одиннадцать "
			  case 12:
				  st+="двенадцать "
			  case 13:
				  st+="тринадцать "
			  case 14:
				  st+="четырнадцать "
			  case 15:
				  st+="пятнадцать "
			  case 16:
				  st+="шестнадцать "
			  case 17:
				  st+="семнадцать "
			  case 18:
				  st+="восемнадцать "
			  case 19:
				  st+="девятнадцать "
			  default:
				  break
			}
		case 2:
			st+="двадцать "
		case 3:
			st+="тридцать "
		case 4:
			st+="сорок "
		case 5:
			st+="пятьдесят "
		case 6:
			st+="шестьдесят "
		case 7:
			st+="семьдесят "
		case 8:
			st+="восемьдесят "
		case 9:
			st+="девяносто "
		default:
			break
		}


		if fromTenToNineteen < 10 || fromTenToNineteen > 19 {
		  switch one{
			case 1:
				st+="один"
			case 2:
				st+="два"
			case 3:
				st+="три"
			case 4:
				st+="четыре"
			case 5:
				st+="пять"
			case 6:
				st+="шесть"
			case 7:
				st+="семь"
			case 8:
				st+="восемь"
			case 9:
				st+="девять"
			default: break
		  }
		}
	  }
	else if input == 1000 {
		st = "одна тысяча"
	} else {st = "Введите число в диапазоне 1...1000"}

	return(st)
}
