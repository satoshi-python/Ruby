#! ruby -Ku
# coding: utf-8

def check(str)
  print(str, "is ^abc ")
  if /^abc/ =~ str then
    print("match.\n")
  else
    print("not match.\n")
  end
end

check("abcdef")
check("defabc")
check("abc¥ndef")
check("def¥nabc")

print("\n")

def check2(str)
  print(str, " is abc$ ")
  if /abc$/ =~ str then
    print(" match.\n")
  else
    print(" not match.\n")
  end
end

check2("abcdef")
check2("defabc")
check2("abc¥ndef")
check2("def¥nabc")


def check3(str)
  print(str, " is  ^abc$ ")
  if /^abc$/ =~ str then
    print("match. \n")
  else
    print("not match. \n")
  end
end

check3("abc")
check3("abcdef")
check3("defabc")
