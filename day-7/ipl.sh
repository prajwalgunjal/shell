echo "Please select your favourite team in IPL"
echo "rcb gt mi sh gt rr"
read teamName

#Variables Declared Globally
matchPlayed=14
win=0
lose=0
nrr=""
points=0
position=0

#Functions
function errorHandler() {
    echo "Please Check your input $1, It is invalid"
}
#step 4
function playoffEligibility() {
    if [ $1 -le 4 ]
    then
        echo "$2 Is Eligible for Playoffs"
    else
        echo "$2 Is Not-Eligible for Playoffs"
fi
}
# step 3
function pointsCalculator() {
lose=$(($matchPlayed-$3))
points=$(($3*2))
echo "Name of Team $1"
echo "Place $2"
echo "Matches Played $matchPlayed"
echo "Won $3 and Lost $lose"
echo "RunRate $4"
echo "Points Secured $points"
playoffEligibility $2 $1
}
#Step1
if [ $teamName == "mi" ]
then
    position=10
elif [ $teamName == "rcb" ]
then
    position=4
elif [ $teamName == "csk" ]
then
    position=9
elif [ $teamName == "sh" ]
then 
    position=8
elif [ $teamName == "gt" ]
then 
    position=1
elif [ $teamName == "rr" ]
then 
    position=2
else
    errorHandler $teamName
fi
#Step2
if [ $position -gt 0 ]
then
    case $position in
        10)
            win=4
            nrr="-0.506"
            pointsCalculator $teamName $position $win $nrr  
        ;;
        9)
            win=4
            nrr="-0.203"
            pointsCalculator $teamName $position $win $nrr
        ;;
        4)
            win=8
            nrr="-0.253"
            pointsCalculator $teamName $position $win $nrr
        ;;
        8)
            win=8
            nrr="-0.379"
            pointsCalculator $teamName $position $win $nrr
        ;;
        1)
            win=10
            nrr="+0.316"
            pointsCalculator $teamName $position $win $nrr
        ;;
        
        2)
            win=9
            nrr="+0.298"
            pointsCalculator $teamName $position $win $nrr
        ;;
        *)
            echo " "
        ;;
    esac
fi
