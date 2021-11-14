#! ruby -Ku

hash = Hash["yamada" => "toukyou", "Katou" => "Osaka", "Endou" => "Fukuoka"]

print("before\n")
hash.each do |key, val|
  print("Key:", key.object_id, " val:", val.object_id, "\n")
end

print("after\n")
copyhash = Hash[hash]
copyhash.each do |key, val|
  print("Key:", key.object_id, " val:", val.object_id, "\n")
end

print("\n")

addressh1 = Hash.new("none")
addressh1["Itou"] = "Toukyou"

print("adders: ", addressh1["Itou"], "\n")
print("adders: ", addressh1["Yamada"], "\n")
print("\n")

addressh2  = Hash.new{|hash, key|
  hash[key] = key
}

print("adders: ", addressh2["Itou"], "\n")
print("adders: ", addressh2["Takahashi"], "\n")
print("number: ", addressh2.length() ,"\n")

addressh3 = Hash.new{|hash, key|
  key
}
print("\n")

print("address: ", addressh3["Yamada"], "\n")
print("address; ", addressh3["Takahashi"], "\n")
print("num; ", addressh3.length(), "\n")

print("\n")

addressh4 = Hash.new("none")

print("address: ", addressh4["Itou"], "\n")
print("address: ", addressh4.fetch("Yaamada", "nothing"), "\n")
print("address: ", addressh4.fetch("Endou"){|key|key}, "\n")
print("\n")

addressh5 = Hash.new()
addressh5.default = "none"
print("addressh: ", addressh5["Yamada"], "\n")
print("\n")

hash = {"Lemon" => 100, "Orange" => 150}
print("Lemon = ", hash["Lemon"], "\n")
print("Orange = ", hash["Orange"], "\n")

print("\n")
hash["Lemon"] = 120

print("Lemon = ", hash["Lemon"], "\n")
print("Orange = ", hash["Orange"], "\n")
print("number = ", hash.length, "\n")
print("\n")

hash.store("Peach", 210)
hash.store("Banana", 80)
print("Peach = ", hash["Peach"], "\n")
print("Banana = ", hash["Banana"], "\n")

print("\n")
hash = {"Lemon" => "100", "Orange"=> 150}
p hash
print("number: ", hash.length, "\n")

hash["Banana"] = 80
p hash
print("number; ", hash.size, "\n")

print("\n")
hash = {"Lemon" => 100, "Orange"=> 150, "Banana" => 250 }
print("each metjod\n")
hash.each{|key, value|
  print(key, "=>", value, "\n")
}
print("each_key methods\n")
hash.each_key{|key|
  print("key = ", key, "\n")
}
print("each_value methods \n")
hash.each_value{|value|
  print("value = ", value, "\n")
}

print("\n")

hash = {"Lemon" => 100,"Orange" => 150, "Banana"=>250}
p hash
print("\n")

print("keys methods \n")
key_array = hash.keys
p key_array

print("values methods \n")
value_array = hash.values
p value_array

print("to_a methods \n")
array = hash.to_a
p array

print("\n")

