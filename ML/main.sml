fun level num =
    if(num >= 90.0) then
        "A+"
    else if(num >= 85.0) then
        "A"
    else if(num >= 80.0) then
        "A-"
    else if(num >= 77.0) then
        "B+"
    else if(num >= 73.0) then
        "B"
    else if(num >= 70.0) then
        "B-"
    else if(num >= 67.0) then
        "C+"
    else if(num >= 63.0) then
        "C"
    else if(num >= 60.0) then
        "C-"
    else if(num >= 50.0) then
        "D"
    else
        "E"

val NO = [1,2,3,4,5,6,7,8,9,10]
val ID = [410021001, 410021002, 410021003, 410021004, 410021005, 410021006, 410021007, 410021008, 410021009, 410021010]
val Name = ["Alan", "Bob", "Carrie", "David", "Ethan", "Frank", "Gary", "Helen", "Igor", "Jeff"]
val HW1 =  [90.0, 85.0, 90.0, 117.0, 85.0, 90.0, 117.0, 117.0, 63.0, 117.0]
val HW2 =  [84.5, 49.0, 110.5, 85.0, 56.0, 65.0, 110.5, 65.0, 59.5, 110.5]
val HW3 =  [117.0 ,80.0 ,117.0 , 0.0 ,50.0 ,65.0 ,65.0 ,50.0 ,50.0 ,117.0]
val Mid =   [60.0, 57.0, 68.0, 44.0, 57.0, 72.0, 69.0, 43.0, 51.0, 53.0]
val Final = [66.0, 64.0, 62.0, 55.0, 67.0, 66.0, 43.0, 54.0, 75.0, 75.0];

fun show n =
    if n > 9 then
        ()
    else (
        print (List.nth (Name,n) ^ " " ^ 
            Real.toString(0.1*(List.nth (HW1,n) + List.nth (HW2,n) + List.nth (HW3,n)) + 0.3*List.nth (Mid,n) + 0.4*List.nth (Final,n)) ^ " " ^ 
            level(0.1*(List.nth (HW1,n) + List.nth (HW2,n) + List.nth (HW3,n)) + 0.3*List.nth (Mid,n) + 0.4*List.nth (Final,n))^"\n");
            show (n + 1)
        );

show 0;
OS.Process.exit(OS.Process.success); 