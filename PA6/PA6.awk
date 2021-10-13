BEGIN { P = "~/_/pokey/usr/toukmond" }
function cddir(action) { system("cd "P"; "action) }
{
    while(1) {
        printf "$ "; getline x < "-"
        print x
        num = split(x, command, " ")
        if (num == 0) continue
        if (command[1] == "cat") {
        
            if (num == 1) {
                print "Usage: cat <ascii-file-name>"
                continue
            } else if (command[2] ~ /.*\/.*/) {
                print "cat: only files in current directory allowed."
            } else if (system("[ -f "P"/"command[2]" ]")) {
                print "File not found."
            } else if (command[2] == "description") {
                cddir("cat description")
            } else {
                print "Ascii files only."
            }
            
        } else if (command[1] == "exit") {
        
            exit
            
        } else if (command[1] == "pwd") {
        
            cddir("pwd | sed 's/.*pokey//;s_$_/_'")
            
        } else if (command[1] == "echo") {
        
            for (i = 2; i < num; ++i) {
               printf("%s ", command[i]) 
            }
            if (num != 1) {
               print command[num]
            }else {
               print "" 
            }
            
        } else if (command[1] != "ls" && command[1] != "cd") {
        
            gsub("./", "", command[1])
            print command[1]": not found."
            
        } else {
            if (num == 1) {
            
                if (command[1] == "cd") {
                    print "Usage: cd <path>"
                    continue
                }
                split(x" .", command, " ")
                
            }
            if (command[2] ~ /^\/.*/) {
            
                command[2] = "~/_/pokey"command[2]
                
            } else {
            
                command[2] = P"/"command[2]
                
            }
            if (system("[ -d "command[2]" ]")) {
            
                print "No such directory."
                
            } else if (command[1] == "cd") {
            
                P = command[2]
                
            } else if (command[1] == "ls") {
            
                system("ls -rtl "command[2]" | sed 's/  */ /g' | cut -f3,4 --complement -d' ' | sed 's/+//; s/197[12]/1970/; s/  */ /g; /toukmond/!{/^d/bY}; /des/!s/ . /@/; :Y; /@/!s/ . /~/; s/~[^ ]\\{2,\\}/~2048/' | sed '2{h; s/./d/; s/[^ ]*$/./; s/[~@][0-9]*/~2048/; s/.*/&\\n&./; G; /10423/s/~/@/; s/2048/512/;}; s/~/ 3 root     staff~/g; s/@/ 1 toukmond restricted~/g; s/~/             ~/g; s/\\([~@]\\)\\([^ ]*\\)/\\2\\1/g; tZ; :Z; s/\\([^\\n]\\{36\\}\\) \\(.....\\)~/\\1\\2~/; tZ; s/~//g'")
                
            }
        }
    }
}
