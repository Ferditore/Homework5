import Foundation

func arraySorter(_ arr: [Int]) -> [Int] {
	let size = arr.count
	var positiveIndex = size - 1
	var negativeIndex = 0
	var resultsArr = Array(repeating: 0, count: size)
	for element in arr.indices {
		if arr[element] < 0 {
		  resultsArr.insert(arr[element], at: negativeIndex)
		  resultsArr.remove(at: negativeIndex+1)
		  negativeIndex = negativeIndex + 1
		} else {
		  resultsArr.insert(arr[element], at: positiveIndex)
		  resultsArr.remove(at: positiveIndex+1)
		  positiveIndex = positiveIndex - 1
		}
	}
	
	return resultsArr
}