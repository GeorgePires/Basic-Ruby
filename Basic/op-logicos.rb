num1 = 55
num2 = 12
num3 = 4
num4 = 7

if (num1 > num2) and (num3 < num4) # 2 casos podemos usar: and ou &&
    puts "Condição atendida nos dois casos"
else
    puts "Condição não atendida!!"
end


if (num1 > num2) or (num3 > num4) # or - ou 
    puts "Pelo menos UMA Condição atendida"
else
    puts "Condição NÃO atendida nos dois casos!!"
end


if !(num1 > num2) # ! - not: somente um elemento
    puts "Negação atendida"
else
    puts "Negação não atendida!!"
end