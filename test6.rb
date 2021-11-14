#! ruby -Ku

str = "Hello"

if /e.+o/ =~str then
  print("ok\n")
else
  print("bad\n")
end


def check(str)
  print(str, " include /abc/ ")
  if /abc/ =~ str then
    print("match. \n")
  else
    print("not math. \n")
  end
end

check("abc")
check("Ababcde")
check("PAbcD")
check("aoabbca")

def check1(str)
  print(str, " is ")

  reg = Regexp.compile("enter")
  if reg =~ str then
    print("math. \n")
  else
    print("not match.\n ")
  end
end

check1("Ruby enter")
check1("I enter")
check1("entrance")

print("\n")
def check2(str)
  print(str, "is /abc/")

  reg = Regexp.compile("abc")
  pos = (reg =~ str)
  if pos then
    print("match.\n")
    print("position is ", pos, ".\n")
  else
    print("not math.\n")
  end
end

check2("abc")
check2("pabc")
check2("ppabc")
check2("ppabcppabc")
check2("pab")

print("\n")
def check3(str)
  print(str, " is img/")
  if %r!img/! =~ str then
    print(" match.\n")
  else
    print(" not match,\n")
  end
end

check3("img/a.png")
check3("/usr/local/bin")
check3("book/img/local")
