require './chain.rb'# Require "chain.rb"

chains = Chain::AllSuperClass.new(100)# Give a object to Chain::AllSuperClass's constructor

results = ""
# Instance method "lookup" returns all super classes of a given object as Array
chains.lookup.map{|chain| results = results + '->' + chain.to_s}

puts results# outputs "->Integer->Numeric->Object->BasicObject"