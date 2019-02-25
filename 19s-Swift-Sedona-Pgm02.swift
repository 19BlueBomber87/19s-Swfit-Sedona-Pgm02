let interestingNumbers = [
    "SmallGroup": [2, 3, 5, 7, 11, 13], 
	"MediumGroup": [111, 111, 112, 113, 115, 118],
    "LargeGroup": [11111, 11114, 11119, 111116, 111125],
]

var largest = 118
var smallest = 111
var largestKey=""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number < largest {
            largest = number
            largestKey = kind
        }
    }
}
print("Example 1 \n ------- ")

print(largest)  // =2
print(largestKey) // ="
print("----------")

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            (largestKey, largest) = (kind, number)
        }
    }
}
print(largest) // = 111125
print(largestKey)// ="largeGroup"


var largestMedium = 118
var smallestMedium = 113
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if smallestMedium < number && number < largestMedium {
            (largestKey, largest) = (kind, number)
        }
    }
}
print(largest) // 
print(largestKey)// 
