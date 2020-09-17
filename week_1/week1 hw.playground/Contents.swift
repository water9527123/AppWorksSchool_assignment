import Cocoa
//Git & GitHub2

 //●  git status -> 顯示修改檔案清單
 //●  git add -> 註冊檔案到索引內
 //●  git commit ->提交添加到索引的檔案
 //●  git log -> 查看提交紀錄
 //●  git push [ Repo_name ] [ Branch_name ] -> 將指定分支上傳到遠端數據庫
 //●  git remote -v -> 顯示遠端數據庫的詳細情況
 //●  git branch -> 顯示分之清單
 //●  fork -> 將一分相同的專案放到自己的帳號下對其做參與變更

//Git & GitHub3

//step1.在github網站按＋，選擇newrepoitory，填寫專案名稱，上傳現有檔案
//step2.在終端機打git remote add origin 在github上的網址
//             ,git branch -M master
//             ,git push -u origin master.

//Basic 1

let pi = 3.14
var radius : Int

//Basic 2

let x1 = 110
let y1 = 20
let avg = (x1+y1)/2

//Basic 3
//3-1
let avg1 : Double = Double(x1+y1)/2
print(avg1)
//3-2

//整數int 和浮點數Double的差別，Double可以儲存更多小數點。

//Basic 4

var flag : Bool = true
var inputString : String = "Hello World."
var bitsInBites : Int = 8
var averageScore : Double = 86.8

//Basic 5

var s = 22000
s += 28000

//Basic 6

//  ==

//Basic 7

let x = 10
let y = 3
let remain = x%y

//Basic 8

//let的值無法變動，var的值可以變動。

//Basic 9

//不能使用數學符號，不能使用箭頭，不能使用保留字(如 if 、while)，    不能用數字做為名子的第一個字元，不能使用連線與製表字元，使用駝峰是命名法。

//Basic 10

//比如說var x = 10 ，swift自動推斷x的型別為Int，所省略    var x : Int = 10 的過程，就是類型推斷。

//Basic 11

//swift已經自動半段phoneNumber為Int，後面就無法將String      assign給phoneNumber。

//Collection 1

var myFriends : [String] = []

//Collection 2

myFriends.append(contentsOf: ["Ian","Bomi","Kevin"])

//Collection 3

myFriends.insert("Michael", at: 3)

//Collection 4

myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//Collection 5

for item in myFriends{
    print(item)

}
//Collection 6

//會顯示error，因為在index5並沒有string。

//Collection 7

myFriends[0]

//Collection 8

myFriends.last

//Collection 9

var myCountryNumber : [String:Int] = [:]

//Collection 10

myCountryNumber = ["US":1,"GB":44,"JP":81]


//Collection 11

myCountryNumber["GB"] = 0

//Collection 12

let emptyDictionary = myCountryNumber[""]
print(emptyDictionary ?? "Empty Dictionary")

//Collection 13

myCountryNumber.removeValue(forKey: "US")
print(myCountryNumber)
print("----")

//Control Flow 1
let lottoNumbers = [10,9,8,7,6,5]
for index in lottoNumbers[3...5]{
    print(index)
}
print("----")

//Control Flow 2 for

for index in lottoNumbers.reversed(){
    print(index)
}
print("----")
let lottoNumbers2 = [lottoNumbers[0],lottoNumbers[2],lottoNumbers[4]]
for index in lottoNumbers2{
    print(index)
}
print("----")

//Control Flow 3 while
let lottonumbersreverse = [lottoNumbers[5],lottoNumbers[4],lottoNumbers[3],lottoNumbers[2],lottoNumbers[1],lottoNumbers[0]]
var i = lottonumbersreverse.count


while i > 0 {
    print(lottonumbersreverse)
    i-=6
}
//let i = lottoNumbers.count
//while i > 0 {
//    print(lottoNumbers.reversed())
//    i-=6
//}
var p = lottoNumbers2.count
while p > 0 {
    print(lottoNumbers2)
    p-=3
}
print("----")

//Control Flow 4 repeat while
repeat {
    print(lottonumbersreverse)
    i-=6
} while i > 0

print("----")

repeat {
    print(lottoNumbers2)
    p-=3
} while p>0

//Control Flow 5

//兩者都是循環執行程式，差別在後者會檢查條件前，就先執行一次內部程式。

//Control Flow 6

var isRaining = true
if isRaining {
    print("It’s raining,I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}
//Control Flow 7
var jobLevel = 1
switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job.")
}


//Function 1

func greet(person: String){
    print("Hello,\(person)")
}
greet(person: "Celetc")

//Function 2
func mutiply(a:Int,b:Int = 10){
    a*b
}
mutiply(a: 4)
//Function 3

//parameter name 就如同字面的意思：是參數的名字，也是實作 function 時的參考對象；而 argument label 則是用來描述或形容參數的，是在呼叫 function 時所需加上的標籤
//Function 4

//Answer: func birthday( ) -> String {}->所要返回的類型為整數，func payment( ) -> Double { } ->所要返回的類型為浮點數。 

