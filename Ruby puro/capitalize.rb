def nameCapitalize(lambdaName)
    lambdaName.call("george")
end

lambdaName = -> (name) { puts name.upcase}

nameCapitalize(lambdaName)