acs = read.csv('C:/Users/hlc42705/Desktop/NewIncome.csv', header=TRUE, stringsAsFactors=FALSE)
hh = read.csv('C:/Users/hlc42705/Desktop/generated_households.csv', header=TRUE, stringsAsFactors=FALSE)

for (i in 1:length(hh$household_income)){
  if (hh$household_income[i] == '<=0'){
    for (j in 1:length(acs$Hhsize_tracts)){
      if (hh$tract[i] == acs$Hhsize_tracts[j]{
        if (hh$num_people[i] == 1){
           hh$household_income[i] = acs$h1[j]
        } else if (hh$num_people == 2){
           hh$household_income[i] = acs$h2[j]
        } else if (hh$num_people == 3){
           hh$household_income[i] = acs$h3[j]
        } else{
           hh$household_income[i] = acs$h4[j]
        }
     } else {
        for (x in 1:length(acs$all_tracts)){
          if (hh$tract[i] == acs$all_tracts[x]){
            hh$household_income[i] = acs$Income[x]
          }
        }
       }
   }
  }
}

