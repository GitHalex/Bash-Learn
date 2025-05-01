function prepare-directory-structure(
  mkdir apps
  cd apps
  mkdir app1 app2 app3
  touch app1/app1.txt app2/app2.txt app3/app3.txt
)

prepare-directory-structure

function add(){
  sum=$(( $1 + $2 ))
  echo $sum
}

result=$(add 3 5)
echo "The result is $result"