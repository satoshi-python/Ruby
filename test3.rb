#! ruby -Ku
# coding: utf-8

array = ["yamada", "tarou", "men", 24]

print("name: ", array[0], array[1], "\n")
print("sex:",array[2] ,"\n")
print("age:", array[3], "\n")

print("\n")

array1 = Array["Red", "Red"]
print('Array["Red", "Red"]', "\n")
print(array1[0].object_id, "\n")
print(array1[1].object_id, "\n")

array2 = Array.new(2, "Red")

print('Array.new(2, "Red")')
print("\n", array2[0].object_id, "\n")
print(array2[1].object_id, "\n")

array3 = Array.new(2){"Red"}

print('Array.new(2).{"Red"}')
print("\n", array3[0].object_id, "\n")
print(array3[1].object_id, "\n")

array4 = Array.new(array1)

print('Array.new(array1)')
print("\n", array4[0].object_id, "\n")
print(array4[1].object_id, "\n")

print("\n")
array = Array["red", "blue", "green"]

print(array[0], "\n")
print(array[1], "\n")
print(array[2], "\n")

array[1] = "Blue"

print(array[0], "\n")
print(array[1], "\n")
print(array[2], "\n")
