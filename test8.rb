#! ruby -Ku
# coding: utf-8

def check(str)
  if /ab.cd/ =~ str then
    print("O ", str, " \n")
  else
    print("X " , str, "\n")
  end
end

print("do you match ab.cd ?\n")
check("ab6cd")
check("abycd")
check("ab\tcd")
check("ab\ncd")
check("abcd")
check("abpocd")


def check2(str)
  if /Go*gle/ =~ str then
    print("O ", str, "\n")
  else
    print("X ", str,"\n")
  end
end

print("\n")

print("Do you match Go*gle ?\n")
check2("Ggle")
check2("Gogle")
check2("Google")
check2("Goooooogle")
check2("Gmgle")
check2("Gomogle")


def check3(str)
  if /Go+gle/ =~ str then
    print("O ", str, " \n")
  else
    print("X ", str, "\n")
  end
end

print("\nDo you match Go+gle. \n")
check3("Ggle")
check3("Gogle")
check3("Google")
check3("Goooooogle")
check3("Gmgle")
check3("Gomogle")


def check4(str)
  if /Go?gle/ =~ str then
    print("O ", str, " \n")
  else
    print("X ", str, "\n")
  end
end

print("\nDo you match Go?gle ? \n")

check4("Ggle")
check4("Gogle")
check4("Google")
check4("Goooooogle")
check4("Gmgle")
check4("Gomogle")

def check5(str)
  if /Go{2,3}gle/ =~ str then
    print("O ", str, "\n")
  else
    print("X ", str, "\n")
  end
end

print("\ndo you match GO{2,3}gle ?\n")

check5("Ggle")
check5("Gogle")
check5("Google")
check5("Gooogle")
check5("Goooogle")
check5("Gooooogle")

def check6(str)
  if /G(oog)+le/ =~ str then
    print("O ", str, " \n")
  else
    print("X ", str, "\n")
  end
end


print("\nDo you match Go(og)+le ?\n")
check6("Gle")
check6("Goole")
check6("Google")
check6("Googoogle")
check6("Googoogoogle")
check6("Googole")
check6("Googgle")
check6("Googogole")


def check7(str)
  if /G.+G/ =~ str then
    print("O ", str, " \n")
  else
    print("X ", str, " \n")
  end
end

print("\nDo you match G.+G?\n")

check7("GooG")
check7("GomaG")
check7("G1234321G")
check7("Gpp¥nopoG")

def check8(str)
  if /a.+b/ =~ str then
    print("O ", str, "(" ,$&, ")" , "\n")
  else
    print("X ", str, "\n")
  end
end

print("\nDo you match a.+b ?\n")
check8("00a11b22b33b44")
