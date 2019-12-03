FILES=$(ls -lah  | awk '{print $9}' | grep 'Unix\|Audio\|Browsers\|Business\|networks\|Creativity\|Economics\|Education\|Electronics\|Email\|Health\|History\|Home\|operations\|interviews\|Law\|Life\|Media\|Mobile\|Politics\|Privacy\|design\|Psychology\|Safety\|Science\|development\|Travel\|Writing') #| grep '*' | sed 's/* //')

for F in $FILES
do
	cat $F | grep '*' | sed 's/* //' | sed 's/\\n/\\n\\n/'
done
