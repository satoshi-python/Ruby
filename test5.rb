#! ruby -Ku

print(self.to_s, "\n")
print(self.class.to_s, "\n")
print("\n")

def printHellow1
  print("Hellow\n")
end

print("call methods\n")
printHellow1
print("called methods\n")

print("\n")

def printHellow2(msg, name)
  print(msg, ",", name, "\n")
end

def addString(str)
  str << ", japan"
end

printHellow2("Hellow", "Yamada")
print("\n")

address = "Toukyou"
print("Before call: ", address, "\n")

addString(address)
print("After call: ", address, "\n")

def printHello3(msg = "No msg", name = "No name")
  print(msg, ",", name, "\n")
end

printHello3("hellow", "goto")
print("how are you\n")
printHello3()

print("\n")

def printHello4(msg, *names)
  allname = " "
  names.each do |name|
    allname << name << " "
  end
  print(msg, ",", allname, "\n")
end
printHello4("hellow")
printHello4("hellow", "Yamada")
printHello4("hellow", "Yamada", "Endou")
printHello4("hellow", "Yamada", "Endou", "Takahashi")
print("\n")

def hikaku(num1, num2)
  print("num1 = ", num1, "\n")
  print("num2 = ", num2, "\n")
  if num1 > num2 then
    return num1
  else
    return num2
  end
end

num = hikaku(10, 18)
print("big number: ", num,"\n")
num = hikaku(27, 15)
print("big number: ", num, "\n")

print("\n")
def keisan(num1, num2 )
  print("num1 = ", num1, "\n")
  print("num2 = ", num2, "\n")
  return num1 + num2, num1 - num2
end

plus, minus = keisan(10,25)
print("result of add:", plus)
print("result of minus:", minus)
print("\n")
