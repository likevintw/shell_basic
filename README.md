
----- unfinished -----


----- finished -----
## 檔案中替換特定資料
sed/updated_and_export.sh
sed/change_ip.sh
## DIR folder 資料夾是否存在 
folder_exist\app.sh
##  新建立DIR
folder_exist\app.sh
## if else
folder_exist\app.sh
## 多行註解
multiple comment 



* alias, unalias    設定別名
* history
* cpu_mem_log    CPU MEM 占用資源監控 and watchdog
* wc 顯示資料夾內檔案之絕對路徑
* head 顯示檔案前十行的資料
* export 設定環境變數
* show_line 顯示文件特定行數
* exit shell script中之離開
* unset 重設環境變數
* set 觀察所有變數 (含環境變數與自訂變數)
* export： 自訂變數轉成環境變數
* locale 查看影響語系的變數
* read  讀取來自鍵盤輸入的變數
* declare 設定變數型態
* ulimit
* wildcard/ 萬用字元
#	註解符號：這個最常被使用在 script 當中，視為說明！在後的資料均不執行
    \	跳脫符號：將『特殊字元或萬用字元』還原成一般字元
    |	管線 (pipe)：分隔兩個管線命令的界定(後兩節介紹)；
    ;	連續指令下達分隔符號：連續性命令的界定 (注意！與管線命令並不相同)
    ~	使用者的家目錄
    $	取用變數前置字元：亦即是變數之前需要加的變數取代值
    &	工作控制 (job control)：將指令變成背景下工作
    !	邏輯運算意義上的『非』 not 的意思！
    /	目錄符號：路徑分隔的符號
    >, >>	資料流重導向：輸出導向，分別是『取代』與『累加』
    <, <<	資料流重導向：輸入導向 (這兩個留待下節介紹)
    ' '	單引號，不具有變數置換的功能 ($ 變為純文字)
    " "	具有變數置換的功能！ ($ 可保留相關功能)
    ` `	兩個『 ` 』中間為可以先執行的指令，亦可使用 $( )
    ( )	在中間為子 shell 的起始與結束
    { }	在中間為命令區塊的組合！
    *	代表『 0 個到無窮多個』任意字元
    ?	代表『一定有一個』任意字元
    [ ]	同樣代表『一定有一個在括號內』的字元(非任意字元)。例如 [abcd] 代表『一定有一個字元， 可能是 a, b, c, d 這四個任何一個』
    [ - ]	若有減號在中括號內時，代表『在編碼順序內的所有字元』。例如 [0-9] 代表 0 到 9 之間的所有數字，因為數字的語系編碼是連續的！
    [^ ]	若中括號內的第一個字元為指數符號 (^) ，那表示『反向選擇』，例如 [^abc] 代表 一定有一個字元，只要是非 a, b, c 的其他字元就接受的意思。


## if
>> 判斷環境變數，執行不同的指令
## 移除特定名稱之檔案
刪除特定檔名之檔案

----- Note -----
$0	目前的檔案檔名	
$n	n 從 1 開始，代表第幾個參數	
$#	傳遞到程式或函式目前有幾個參數	
$*	傳遞到程式或函式所有參數	
$@	類似 $* 但是在被雙引號包含時有些許不同	
$?	上一個指令退出狀態或是函式的返回值	
$$	目前 process PID