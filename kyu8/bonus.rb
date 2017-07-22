# 1
def bonus_time(salary, bonus)
  if bonus == true
     salary = "$#{salary * 10}"
   else
     salary = "$#{salary}"
  end
end

#  refactor

def bonus_time(salary, bonus)
  bonus == true ? "$#{ salary * 10 }" : "$#{ salary }"
end
