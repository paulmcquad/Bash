#We just started a new exclusive restaurant and it only has a capacity to allow 5 customers at a time!

# Challenge 1
#Can you write a script using a while loop to make sure we only allow in 5 customers total? Can you make sure we saw welcome to each customer that comes in as well?

#<---Challenge 1 code--->
customers=0
while [ $customers -le 5 ]
do
  echo "Welcome customer number $customers!"
  ((customers++))
done
#<---Challenge 1 code end--->

# Challenge 2 Comment out your Challenge 1 answer before starting!
#Can you make a for loop that will ask each of our 5 customers what they would like for dinner and then print it out back to them?

#<---Challenge 2 code--->
for customer in 1 2 3 4 5
do
  echo "What can I get you customer number $customer?"
  read order
  echo "Thank you customer number $customer for ordering $order!"
done
#<---Challenge 2 code end--->

#Challenge 3 Comment out your Challenge 1 and 2 answers before starting!
#This challenge will be a bit harder and you will need to combine several concepts from the previous BASH episodes.

#Nobody can leave until all of the customers are done, so make sure all of the customers are done, if one customer isn't done, we need to ask all of the customers again. 

#<---Challenge 3 code--->
customers=5
until [ "$customers" -lt 1 ]
do
  for customer in 1 2 3 4 5
  do
    echo "Are you finished customer number $customers?"
    read answer
    if [ "$answer" != "yes" ];
    then
      echo "Okay take your time! I will ask again later!"
      break
    else
      echo "Awesome! Thanks for coming customer number $customer!"
    ((customers--))
    fi
  done
done
#<---Challenge 3 code end--->