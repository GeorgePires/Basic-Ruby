first_lambda = -> (names){ names.each { |name |puts name.capitalize} }

names = ["joão", "maria", "pedro"]

first_lambda.call(names)