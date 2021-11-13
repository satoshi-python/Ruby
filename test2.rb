#! ruby -Ku
# coding: utf-8

require "kconv" #日本語に変換可能にするモジュール 

print(10, "\n")
print(3.14, "\n")

#print(Kconv.tosjis("こんにちは\nお元気ですか？"), "\n")
#print(Kconv.tosjis('こんにちは\nお元気ですか？'), "\n")
#print(Kconv.tosjis("こんにちは\"山田\"さん"), "\n")
#print(Kconv.tosjis('こんにちは\'山田\'さん'), "\n")

name = "tokyou"
print("i am from #{name}.", "\n")

print("i am #{20 - 5 }.", "\n")

print(Kconv.tosjis(<<"EOS"))
hellow 
       how are you?
           good bye
EOS

words = "hellow!! "
words = words * 10
print(words, "\n")

word1 = "tokyou"
word1 << ", oita"
print(word1, "\n")

word1 = "toukyou"
word1.concat(", oita")
print(word1,"\n")

if 10 % 3 != 0 then
  print("not 0\n")
  print(10 % 3,"\n")
end

if 10% 3 != 0 then
  print("not 0\n")
  print(10 % 3,"\n")
end


num = 10
if ! (num > 20) then
  print("under 20", "\n")
end

num = 10
if 10 % 3 == 0 then
  print("ok\n")
else
  print(10 % 3, "\n")
end
if 10 % 2 == 0 then
  print("ok\n")
else
  print(10 % 2, "\n")
end  

city = "Nagoya"
if city == "Nagoya"
  print("this is nagoya.\n")
elsif city == "Osaka"
  print("this is Osaka.\n")
elsif city == "Toyko"
  print("This is Tokyo.\n")
else
  print("this is ", city, ".\n")
end

old = 40
unless old < 20 then
  print("you are over 20 years olds.\n")
end

sum = 0
product = "Apple"
case product
when "Melon", "Banana" then
  sum = sum + 500
  print(product, ":500 yen\n")
when "Apple", "Lemon", "Orange" then
  sum = sum + 150
  print(product,":150 yen\n")
end

product = "Banana"
case product
when "Melon", "Banana" then
  sum = sum + 500
  print(product, ":500 yen\n")
when "Apple", "Lemon", "Orange" then
  sum = sum + 150
  print(product, ":150 yen\n")
end
print("sum price:", sum, " yen\n")

result = 80
flg = result > 60 ? "good" : "bad"
print("your score:", result,"\n")
print(flg, "\n")

reuslt = 50
flg = result > 60 ? "good" : "bad"
print("you score:", result, "\n")
print(flg, "\n")

num = 20
pref = "Tokyo"
debug = nil
print("num = ", num, "\n") if debug

debug = "on"
print("pref = ", pref, "\n") if debug

num = 0
print("start\n")

while num < 5 do
  print("num = ", num, "\n")
  num += 1
end
print("end\n")

num =  5
print("start\n")

until num <= 0 do
  print("num = ", num,"\n")
  num -= 1
end
print("end\n")

print("start \n")
for num in 1..4 do
  print("num = ", num, "\n")
end
print("end \n")

print("18..20\n")
for num in 18..20 do
  print("num = ",num,"\n")
end

print("18...20\n")
for num in 18...20 do
  print("num = ", num,"\n")
end

print("\"Ax\"..\"Bc\" is \n")
for str in "Ax".."Bb" do
  print("str = "+str + "\n")
end
