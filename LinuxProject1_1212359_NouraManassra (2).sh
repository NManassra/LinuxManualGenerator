#!/bin/bash
# Student's Name : Noura Awni Manassra
# Student's ID : 1212359
# Section : 5
# Instructor's Name : Dr. Abdel Salam Sayyad
FileOp=("ls" "mv" "rm" "cp" "cd" "mkdir" "pwd" "rmdir")
PerOp=("chown" "chmod")
ProOp=("ps" "kill")
SysOp=("top" "du" "df")
TxtOp=("grep" "sed" "cut" "sort" "awk" )
 

#to start with the program, there are 3 sections the user can choose, first is the description, second hs the verficatiom, and the last thing is the search 
while true; do  
	echo "______________________________________________________________________________"
	echo ""
	read -p "Selam, please enter the name of the command from the below list:), if you want to chech the verfication click 2 , to seach for a word inside the commands you checked in stage 3 click 3 or enter exit to log out  
	      1.ls
	      2.mv
	      3.rm
	      4.cp
	      5.cd
	      6.mkdir
	      7.rmdir
	      8.pwd
	      9.chmod
	      10.chown
	      11.ps
	      12.df
	      13.du
	      14.kill
	      15.top
	      16.grep
	      17.sed
	      18.cut
	      19.sort
	      20.awk
	      " x #this variable prenets the command the user needs to search 
	      touch temp.txt 

    case "$x" in
        "exit") #if the user chose to exist, then just stop the programm and get out of it
            echo "Allah Ma3aak"
            break
            ;;
        "ls") #if the user typed ls, go to this case
                man ls | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'  #note here that I used pipes with sed, so I will only print the lines od the descrption
echo "________________________________________________________________________________________________"
	        echo  -n "The Version is: " #this will print the current version
	       	uname -r
echo "________________________________________________________________________________________________"
		echo "Example:  ls -l"
		echo "               total 96
-rw-rw-r-- 1 noura noura    0 Dec 21 09:40 coco.16919_16919
drwxr-xr-x 3 noura noura 4096 Nov 30 17:05 Desktop
drwxr-xr-x 2 noura noura 4096 Nov 28 02:19 Documents
drwxr-xr-x 2 noura noura 4096 Dec 23 13:49 Downloads
-rwxrwxr-x 1 noura noura 2142 Dec 27 03:52 generate_manual.sh 
It will print the files with the premissions as it's shown here "
echo "________________________________________________________________________________________________"
		echo -n "Related Commands: "
                compgen -c | grep ^l #this command will grep all the commands at the manual which starts with the letter c, and print them to the user
echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "ls" ]; then
                echo "$comm"
                    fi
                    done
#for the commanded, you can see above that i created arrays, each one of them has the commands with th same topic (text operations, permission operations, etc...), and dependeing on the command the user selected, we will print the elements at the arrays expect the current command which is the user selected.                    
               if [ ! -e ls.txt ]; then #this if statment to make sure if the file exists, so don't create nother one, and if it doesn't exist, to make new one and print it's data inside it
                touch ls.txt
                man ls | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > ls.txt
                echo "________________________________________________________________________________________________">>ls.txt
	        echo  -n "The Version is: ">> ls.txt
	       	uname -r>> ls.txt
	       	echo "________________________________________________________________________________________________">>ls.txt
		echo "Example:  ls -l">> ls.txt
		echo "               total 96
-rw-rw-r-- 1 noura noura    0 Dec 21 09:40 coco.16919_16919
drwxr-xr-x 3 noura noura 4096 Nov 30 17:05 Desktop
drwxr-xr-x 2 noura noura 4096 Nov 28 02:19 Documents
drwxr-xr-x 2 noura noura 4096 Dec 23 13:49 Downloads
-rwxrwxr-x 1 noura noura 2142 Dec 27 03:52 generate_manual.sh 
It will print the files with the premissions as it's shown here ">>ls.txt
echo "________________________________________________________________________________________________">>ls.txt
		echo -n "Related Commands: ">> ls.txt
                compgen -c | grep ^l >> ls.txt
                echo "________________________________________________________________________________________________">>ls.txt
                echo "Here are some recommended commands which are available to the user">> ls.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "ls" ]; then
                echo "$comm" >> ls.txt
                    fi
                    done
                   
                fi
            ;;
 
        "mv")
              man mv | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p'
              echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: mv example.txt /home/user/documents/" 
                echo "              To move a file from the current directory to another directory," 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^m 
                echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mv" ]; then
                echo "$comm"
                    fi
                    done
                 if [ ! -e mv.txt ]; then
                touch mv.txt
                man mv | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p' > mv.txt
                echo "________________________________________________________________________________________________">>mv.txt
                echo  -n "The Version is: " >> mv.txt
                uname -r >> mv.txt
                echo "________________________________________________________________________________________________">>mv.txt
                echo "Example: mv example.txt /home/user/documents/" >> mv.txt
                echo "              To move a file from the current directory to another directory," >> mv.txt
                echo "________________________________________________________________________________________________">>mv.txt
                echo -n "Related Commands: " >> mv.txt
                compgen -c | grep ^m >> mv.txt
                echo "________________________________________________________________________________________________">>mv.txt
                 echo "Here are some recommended commands which are available to the user" >> mv.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mv" ]; then
                echo "$comm" >> mv.txt
                    fi
                    done
                fi

            ;;
        "rm")

                man rm | awk '/^DESCRIPTION$/,/^OPTIONS$/' | grep -v 'OPTIONS$' 
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r
                echo "________________________________________________________________________________________________"
                echo "Example: rm oldfile.txt" 
                echo "              To delete a file" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^r 
                echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rm" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e rm.txt ]; then
                touch rm.txt
                man rm | awk '/^DESCRIPTION$/,/^OPTIONS$/' | grep -v 'OPTIONS$' > rm.txt
                echo "________________________________________________________________________________________________">>rm.txt
                echo  -n "The Version is: ">> rm.txt
                uname -r>> rm.txt
                echo "________________________________________________________________________________________________">>rm.txt
                echo "Example: rm oldfile.txt">> rm.txt
                echo "              To delete a file">> rm.txt
                echo "________________________________________________________________________________________________">>rm.txt
                echo -n "Related Commands: ">> rm.txt
                compgen -c | grep ^r >> rm.txt
                echo "________________________________________________________________________________________________">>rm.txt
                  echo "Here are some recommended commands which are available to the user" >> rm.txt
                  
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rm" ]; then
                echo "$comm" >> rm.txt
                    fi
                    done
                fi

            ;;

        "cp")
                 man cp | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: cp file.txt /backup/" 
                echo "              To copy a file from one location to another"
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^c 
                 echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cp" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e cp.txt ]; then
                touch cp.txt
                 man cp | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > cp.txt
                  echo "________________________________________________________________________________________________">>cp.txt
                echo  -n "The Version is: " >> cp.txt
                uname -r >> cp.txt
                 echo "________________________________________________________________________________________________">>cp.txt
                echo "Example: cp file.txt /backup/" >> cp.txt
                echo "              To copy a file from one location to another" >> cp.txt
                 echo "________________________________________________________________________________________________">>cp.txt
                echo -n "Related Commands: " >> cp.txt
                compgen -c | grep ^c >> cp.txt
                 echo "________________________________________________________________________________________________">>cp.txt
                  echo "Here are some recommended commands which are available to the user" >> cp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cp" ]; then
                echo "$comm" >> cp.txt
                    fi
                    done
                fi

            ;;
         "mkdir")

                man mkdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: mkdir myfolder"
                echo "              To create a single directory" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: "
                compgen -c | grep ^m  
                 echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mkdir" ]; then
                echo "$comm"
                    fi
                    done
                 if [ ! -e mkdir.txt ]; then
                touch mkdir.txt
                 man mkdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > mkdir.txt
                  echo "________________________________________________________________________________________________">>mkdir.txt
                echo  -n "The Version is: ">> mkdir.txt
                uname -r>> mkdir.txt
                 echo "________________________________________________________________________________________________">>mkdir.txt
                echo "Example: mkdir myfolder">> mkdir.txt
                echo "              To create a single directory">> mkdir.txt
                 echo "________________________________________________________________________________________________">>mkdir.txt
                echo -n "Related Commands: ">> mkdir.txt
                compgen -c | grep ^m >> mkdir.txt
                 echo "________________________________________________________________________________________________">>mkdir.txt
                 echo "Here are some recommended commands which are available to the user" >> mkdir.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mkdir" ]; then
                echo "$comm" >> mkdir.txt >> mkdir.txt
                    fi
                    done
                fi

            ;;
         "rmdir")

                 man rmdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: rm myfolder"
                echo "              To delete a single directory if it exists"
                 echo "________________________________________________________________________________________________" 
                echo -n "Related Commands: " 
                compgen -c | grep ^r 
                 echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rmdir" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e rmdir.txt ]; then
                touch rmdir.txt
                man rmdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > rmdir.txt
                 echo "________________________________________________________________________________________________">>rmdir.txt
                echo  -n "The Version is: ">> rmdir.txt
                uname -r>> rmdir.txt
                 echo "________________________________________________________________________________________________">>rmdir.txt
                echo "Example: rm myfolder">> rmdir.txt
                echo "              To delete a single directory if it exists">> rmdir.txt
                 echo "________________________________________________________________________________________________">>rmdir.txt
                echo -n "Related Commands: ">> rmdir.txt
                compgen -c | grep ^r>> rmdir.txt
                 echo "________________________________________________________________________________________________">>rmdir.txt
                echo "Here are some recommended commands which are available to the user" >> rmdir.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rmdir" ]; then
                echo "$comm" >> rmdir.txt
                    fi
                    done
                fi

            ;;
         "cd")

                 man cd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: "
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: cd /path/to/directory" 
                echo "              To change to a specific directory, provide the directory path as an argument"
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                 compgen -c | grep ^c
                  echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cd" ]; then
                echo "$comm"
                    fi
                    done
                 if [ ! -e cd.txt ]; then
                touch cd.txt
                 man cd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > cd.txt
                  echo "________________________________________________________________________________________________">>cd.txt
                echo  -n "The Version is: " >> cd.txt
                uname -r >> cd.txt
                 echo "________________________________________________________________________________________________">>cd.txt
                echo "Example: cd /path/to/directory" >> cd.txt
                echo "              To change to a specific directory, provide the directory path as an argument" >> cd.txt
                 echo "________________________________________________________________________________________________">>cd.txt
                echo -n "Related Commands: " >> cd.txt
                compgen -c | grep ^c >> cd.txt
                 echo "________________________________________________________________________________________________">>cd.txt
                echo "Here are some recommended commands which are available to the user" >> cd.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cd" ]; then
                echo "$comm" >> cd.txt
                    fi
                    done
                fi

            ;;
          "chmod")

                 man chmod | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,10p'
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: "  
                uname -r
                 echo "________________________________________________________________________________________________"
                echo "Example: chmod 644 filename" 
                echo "             To change the permissions of a file using octal notation, where each digit represents the permission for the owner, group, and others"
                 echo "________________________________________________________________________________________________" 
                echo -n "Related Commands: " 
                compgen -c | grep ^c 
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chmod" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e chmod.txt ]; then
                touch chmod.txt
                 man chmod | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,10p' > chmod.txt
                  echo "________________________________________________________________________________________________">>chmod.txt
                echo  -n "The Version is: " >> chmod.txt
                uname -r >> chmod.txt
                 echo "________________________________________________________________________________________________">>chmod.txt
                echo "Example: chmod 644 filename" >> chmod.txt
                echo "             To change the permissions of a file using octal notation, where each digit represents the permission for the owner, group, and others" >> chmod.txt
                 echo "________________________________________________________________________________________________">>chmod.txt
                echo -n "Related Commands: " >> chmod.txt
                compgen -c | grep ^c>> chmod.txt
                 echo "________________________________________________________________________________________________">>chmod.txt
                 echo "Here are some recommended commands which are available to the user" >> chmod.txt
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chmod" ]; then
                echo "$comm" >> chmod.txt
                    fi
                    done
                fi
            ;;
            
          "chown")
                man chown | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,13p'
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: "
                uname -r
                 echo "________________________________________________________________________________________________"
                echo "Example: chown john document.txt"
                echo "              To change the owner of a file" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^c
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chown" ]; then
                echo "$comm"
                    fi
                    done 
                  if [ ! -e chown.txt ]; then
                touch chown.txt
                man chown | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,13p' > chown.txt
                 echo "________________________________________________________________________________________________">>chown.txt
                echo  -n "The Version is: " >> chown.txt
                uname -r >> chown.txt
                 echo "________________________________________________________________________________________________">>chown.txt
                echo "Example: chown john document.txt" >> chown.txt
                echo "              To change the owner of a file" >> chown.txt
                 echo "________________________________________________________________________________________________">>chown.txt
                echo -n "Related Commands: " >> chown.txt
                compgen -c | grep ^c >> chown.txt
                 echo "________________________________________________________________________________________________">>chown.txt
                echo "Here are some recommended commands which are available to the user" >> chown.txt
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chown" ]; then
                echo "$comm" >> chown.txt
                    fi
                    done
                fi

            ;;
          "pwd")

                man pwd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: #!/bin/bash 
                               current_directory=$\(pwd)" 
                echo "The current working directory is: \home\noura"
                echo "You can use the pwd command in a shell script to capture the current working directory and use it in subsequent commands" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: "
                compgen -c | grep ^p
                 echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "pwd" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e pwd.txt ]; then
                touch pwd.txt
                man pwd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > pwd.txt
                 echo "________________________________________________________________________________________________">>pwd.txt
                echo  -n "The Version is: " >> pwd.txt
                uname -r >> pwd.txt
                 echo "________________________________________________________________________________________________">>pwd.txt
                echo "Example: #!/bin/bash 
                               current_directory=\$(pwd)" >> pwd.txt
                echo "The current working directory is: \home\noura" >> pwd.txt
                echo "You can use the pwd command in a shell script to capture the current working directory and use it in subsequent commands" >> pwd.txt
                 echo "________________________________________________________________________________________________">>pwd.txt
                echo -n "Related Commands: " >> pwd.txt
                compgen -c | grep ^p >> pwd.txt
                 echo "________________________________________________________________________________________________">>pwd.txt
                 echo "Here are some recommended commands which are available to the user" >> pwd.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "pwd" ]; then
                echo "$comm" >> pwd.txt
                    fi
                    done
                fi
            ;;
          "ps")
               
                man ps | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,4p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: ps -l"
                echo "To display detailed information about processes, including additional columns like user, %CPU, %MEM, and command details" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
               compgen -c | grep ^p
                echo "________________________________________________________________________________________________"
               echo "Here are some recommended commands which are available to the user" 
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "ps" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e ps.txt ]; then
                touch ps.txt
                man ps | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,4p' > ps.txt
                 echo "________________________________________________________________________________________________">>ps.txt
                echo  -n "The Version is: " >> ps.txt
                uname -r >> ps.txt
                 echo "________________________________________________________________________________________________">>ps.txt
                echo "Example: ps -l" >> ps.txt
                echo "To display detailed information about processes, including additional columns like user, %CPU, %MEM, and command details" >> ps.txt
                 echo "________________________________________________________________________________________________">>ps.txt
                echo -n "Related Commands: " >> ps.txt
                compgen -c | grep ^p>> ps.txt
                 echo "________________________________________________________________________________________________">>ps.txt
                echo "Here are some recommended commands which are available to the user"  >> ps.txt
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "ps" ]; then
                echo "$comm" >> ps.txt
                    fi
                    done
                fi
            ;;
          "df")
                
                man df | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: "
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: ps -h" 
                echo "To display disk space usage in a more human-readable format" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^d
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "df" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e df.txt ]; then
                touch df.txt
                 man df | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' > df.txt
                  echo "________________________________________________________________________________________________">>df.txt
                echo  -n "The Version is: " >> df.txt
                uname -r >> df.txt
                 echo "________________________________________________________________________________________________">>df.txt
                echo "Example: ps -h" >> df.txt
                echo "To display disk space usage in a more human-readable format" >> df.txt
                 echo "________________________________________________________________________________________________">>df.txt
                echo -n "Related Commands: " >> df.txt
                compgen -c | grep ^d >> df.txt
                 echo "________________________________________________________________________________________________">>df.txt
                echo "Here are some recommended commands which are available to the user" >> df.txt
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "df" ]; then
                echo "$comm" >> df.txt
                    fi
                    done
                fi
            ;;
          "kill")
                
                 man kill | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: kill 1234" 
                echo "To terminate a process by its Process ID" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^k 
                echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "kill" ]; then
                echo "$comm"
                    fi
                    done
                 if [ ! -e kill.txt ]; then
                touch kill.txt
                man kill | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' > kill.txt
                echo "________________________________________________________________________________________________">>kill.txt
                echo  -n "The Version is: ">> kill.txt
                uname -r>> kill.txt
                echo "________________________________________________________________________________________________">>kill.txt
                echo "Example: kill 1234">> kill.txt
                echo "To terminate a process by its Process ID">> kill.txt
                echo "________________________________________________________________________________________________">>kill.txt
                echo -n "Related Commands: ">> kill.txt
                compgen -c | grep ^k>> kill.txt
                echo "________________________________________________________________________________________________">>kill.txt
                echo "Here are some recommended commands which are available to the user"  >> kill.txt
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "kill" ]; then
                echo "$comm" >> kill.txt
                    fi
                    done
                 fi
            ;;
          "top")

                 man top | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p'
                 echo "________________________________________________________________________________________________" 
                echo  -n "The Version is: " 
                uname -r
                echo "________________________________________________________________________________________________"
                echo "Example: top -o %CPU" 
                echo "You can run top with the -o option to sort processes by a specific field" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^t
                echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "top" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e top.txt ]; then
                touch top.txt
                 man top | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' > top.txt
                 echo "________________________________________________________________________________________________">>top.txt
                echo  -n "The Version is: " >> top.txt
                uname -r >> top.txt
                echo "________________________________________________________________________________________________">>top.txt
                echo "Example: top -o %CPU" >> top.txt
                echo "You can run top with the -o option to sort processes by a specific field" >> top.txt
                echo "________________________________________________________________________________________________">>top.txt
                echo -n "Related Commands: " >> top.txt
                compgen -c | grep ^t >> top.txt
                echo "________________________________________________________________________________________________">>top.txt
                echo "Here are some recommended commands which are available to the user"  >> top.txt
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "top" ]; then
                echo "$comm" >> top.txt
                    fi
                    done
                fi
            ;;
          "du")

                 man du | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: du directoryname" 
                echo "To display the disk usage of a specific directory" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: "
                compgen -c | grep ^d
                echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "dy" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e du.txt ]; then
                touch du.txt
                man du | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > du.txt
                echo "________________________________________________________________________________________________">>du.txt
                echo  -n "The Version is: ">> du.txt
                uname -r>> du.txt
                echo "________________________________________________________________________________________________">>du.txt
                echo "Example: du directoryname">> du.txt
                echo "To display the disk usage of a specific directory">> du.txt
                echo "________________________________________________________________________________________________">>du.txt
                echo -n "Related Commands: ">> du.txt
                compgen -c | grep ^d>> du.txt
                echo "________________________________________________________________________________________________">>du.txt
                echo "Here are some recommended commands which are available to the user" >> du.txt
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "du" ]; then
                echo "$comm" >> du.txt
                    fi
                    done
                fi
            ;;
          "grep")

                 man grep | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: grep \"example\" myfile.txt" 
                echo "To search for a specific string in a file" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^g
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "grep" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e grep.txt ]; then
                touch grep.txt
                 man grep | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p'> grep.txt
                 echo "________________________________________________________________________________________________">>grep.txt
                echo  -n "The Version is: ">> grep.txt
                uname -r>> grep.txt
                echo "________________________________________________________________________________________________">>grep.txt
                echo "Example: grep \"example\" myfile.txt">> grep.txt
                echo "To search for a specific string in a file">> grep.txt
                echo "________________________________________________________________________________________________">>grep.txt
                echo -n "Related Commands: ">> grep.txt
                compgen -c | grep ^g>> grep.txt
                echo "________________________________________________________________________________________________">>grep.txt
                 echo "Here are some recommended commands which are available to the user" >> grep.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "grep" ]; then
                echo "$comm" >> grep.txt
                    fi
                    done
                fi
            ;;
          "sed")
               
                 man sed | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: sed 's/apple/orange/' fruits.txt" 
                echo "To replace a specific string with another string in a file" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^s
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sed" ]; then
                echo "$comm"
                    fi
                    done
                if [ ! -e sed.txt ]; then
                touch sed.txt
                man sed | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' > sed.txt
                
                echo "________________________________________________________________________________________________">>sed.txt
                echo  -n "The Version is: ">> sed.txt
                uname -r>> sed.txt
                 echo "________________________________________________________________________________________________">>sed.txt
                echo "Example: sed 's/apple/orange/' fruits.txt">> sed.txt
                echo "To replace a specific string with another string in a file">> sed.txt
                 echo "________________________________________________________________________________________________">>sed.txt
                echo -n "Related Commands: ">> sed.txt
                compgen -c | grep ^s>> sed.txt
                 echo "________________________________________________________________________________________________">>sed.txt
                 echo "Here are some recommended commands which are available to the user" >> sed.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sed" ]; then
                echo "$comm" >> sed.txt
                    fi
                    done
                fi
            ;;
          "awk")
             
                man awk | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,9p' 
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: awk '{print \$2}' data.txt
                if the file containes these data 
                AbObaida KING Jan
                Abdallah Bed Laptop
                it will print this
                KING
                Bed" 
                echo "To print specific columns from a file"
                echo "________________________________________________________________________________________________" 
                echo -n "Related Commands: " 
                compgen -c | grep ^a 
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "awk" ]; then
                echo "$comm"
                    fi
                    done
               if [ ! -e awk.txt ]; then
               touch awk.txt
               man awk | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,9p'> awk.txt
                echo "________________________________________________________________________________________________">>awk.txt
                echo  -n "The Version is: ">> awk.txt
                uname -r>> awk.txt
                echo "________________________________________________________________________________________________">>awk.txt
                echo "Example: awk '{print \$2}' data.txt
                if the file containes these data 
                AbObaida KING Jan
                Abdallah Bed Laptop
                it will print this
                KING
                Bed">> awk.txt
                echo "To print specific columns from a file">> awk.txt
                echo "________________________________________________________________________________________________">>awk.txt
                echo -n "Related Commands: ">> awk.txt
                compgen -c | grep ^a>> awk.txt
                echo "________________________________________________________________________________________________">>awk.txt
                 echo "Here are some recommended commands which are available to the user" >> awk.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "awk" ]; then
                echo "$comm" >> awk.txt
                    fi
                    done
                fi
            ;;
          "sort")
man sort | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
echo "________________________________________________________________________________________________"
     echo  -n "The Version is: " 
    uname -r 
    echo "________________________________________________________________________________________________"
    echo "Example: sort unsorted.txt, suppose that the words inside unsorted.txt where as follows:
    8 9 2 1 3
    THE OUTPUT WILL BE LIKE THIS:
    1 2 3 8 9" 
    echo "You can use the sort command to alphabetically sort the lines"
    echo "________________________________________________________________________________________________"
    echo -n "Related Commands: " 
    compgen -c | grep ^s
    echo "________________________________________________________________________________________________"
     echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sort" ]; then
                echo "$comm"
                    fi
                    done
if [ ! -e sort.txt ]; then
 touch sort.txt
    man sort | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > sort.txt
    echo "________________________________________________________________________________________________">>sort.txt
    echo  -n "The Version is: " >> sort.txt
    uname -r >> sort.txt
    echo "________________________________________________________________________________________________">>sort.txt
    echo "Example: sort unsorted.txt, suppose that the words inside unsorted.txt where as follows:
    8 9 2 1 3
    THE OUTPUT WILL BE LIKE THIS:
    1 2 3 8 9
    " >> sort.txt
    echo "You can use the sort command to alphabetically sort the lines" >> sort.txt
    echo "________________________________________________________________________________________________">>sort.txt
    echo -n "Related Commands: " >> sort.txt
    compgen -c | grep ^s>> sort.txt
    echo "________________________________________________________________________________________________">>sort.txt
     echo "Here are some recommended commands which are available to the user" >> sort.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sort" ]; then
                echo "$comm">>sort.txt
                    fi
                    done
fi
                
            ;;
"cut")

         man cut | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
         echo "________________________________________________________________________________________________"
        echo  -n "The Version is: " 
        uname -r 
        echo "________________________________________________________________________________________________"
        echo "Example: Noura,Abdallah,25,DeirDebwan
Abu Obaida, Gaza ,30, Gaza
Abu Hamza,King,22,Ramallah
and I used this command cut -d',' -f1,3 example.txt
the output is :
Noura,25
Abo Obaida,30
Abo Hamza,22"
        echo "To cut fields based on a range of bytes or comma's using a specific delimiter" 
        echo "________________________________________________________________________________________________"
        echo -n "Related Commands: " 
        compgen -c | grep ^c 
        echo "________________________________________________________________________________________________"
         echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "cut" ]; then
                echo "$comm"
                    fi
                    done
 if [ ! -e cut.txt ]; then
        touch cut.txt
        man cut | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > cut.txt
        echo "________________________________________________________________________________________________">>cut.txt
        echo  -n "The Version is: ">> cut.txt 
        uname -r >> cut.txt
        echo "________________________________________________________________________________________________">>cut.txt
        echo "Example: Noura,Abdallah,25,DeirDebwan
Abu Obaida, Taj Ras Abo Mazen,30, Gaza
Abu Hamza,King,22,Ramallah
and I used this command cut -d',' -f1,3 example.txt
the output is :
Noura,25
Abo Obaida,30
Abo Hamza,22" >> cut.txt
        echo "To cut fields based on a range of bytes or comma's using a specific delimiter">>cut.txt
        echo "________________________________________________________________________________________________">>cut.txt
        echo -n "Related Commands: " >> cut.txt
       compgen -c | grep ^c>> cut.txt
       echo "________________________________________________________________________________________________">>cut.txt
        echo "Here are some recommended commands which are available to the user" >> cut.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "cut" ]; then
                echo "$comm" >> cut.txt
                    fi
                    done
    fi
    ;;
#######################################################################################################
##################### S E C O N D                S T A G E ############################################
#######################################################################################################
#for the verification stage, the user supposed to make sure that he checked the description in stage 1 for the specfic command he wants, and here I did the following:
# all the commands chosed and checked by the user in stage one, will be saved in files, so here for the verfication, will print to the user the description and save it inot temp.txt file, and will compare the data inside temp.txt file with the files we saved at stage one                      
    "2") echo "Salam, i just want to make u know that you are now at the verfication section -_-"
    echo "Make sure that you have tried the command you need to verfy or you will fail the verfication cuz you even didn't checked it :) "
    echo "now, please enter the name of the command you need to verify from this list"
	      read -p " 1.ls
	      2.mv
	      3.rm
	      4.cp
	      5.cd
	      6.mkdir
	      7.rmdir
	      8.pwd
	      9.chmod
	      10.chown
	      11.ps
	      12.df
	      13.du
	      14.kill
	      15.top
	      16.grep
	      17.sed
	      18.cut
	      19.sort
	      20.awk
	       " y
	      case "$y" in
	      "ls")
	       man ls | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'  
	       echo "________________________________________________________________________________________________"
	        echo  -n "The Version is: "
	       	uname -r
	       	echo "________________________________________________________________________________________________"
		echo "Example:  ls -l"
		echo "               total 96
-rw-rw-r-- 1 noura noura    0 Dec 21 09:40 coco.16919_16919
drwxr-xr-x 3 noura noura 4096 Nov 30 17:05 Desktop
drwxr-xr-x 2 noura noura 4096 Nov 28 02:19 Documents
drwxr-xr-x 2 noura noura 4096 Dec 23 13:49 Downloads
-rwxrwxr-x 1 noura noura 2142 Dec 27 03:52 generate_manual.sh 
It will print the files with the premissions as it's shown here "
echo "________________________________________________________________________________________________"
		echo -n "Related Commands: "
                compgen -c | grep ^l
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "ls" ]; then
                echo "$comm"
                    fi
                    done
                    echo "________________________________________________________________________________________________"
		man ls | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
		echo "________________________________________________________________________________________________">>temp.txt
	        echo  -n "The Version is: ">> temp.txt
	       	uname -r>> temp.txt
	       	echo "________________________________________________________________________________________________">>temp.txt
		echo "Example:  ls -l">> temp.txt
		echo "               total 96
-rw-rw-r-- 1 noura noura    0 Dec 21 09:40 coco.16919_16919
drwxr-xr-x 3 noura noura 4096 Nov 30 17:05 Desktop
drwxr-xr-x 2 noura noura 4096 Nov 28 02:19 Documents
drwxr-xr-x 2 noura noura 4096 Dec 23 13:49 Downloads
-rwxrwxr-x 1 noura noura 2142 Dec 27 03:52 generate_manual.sh 
It will print the files with the premissions as it's shown here ">> temp.txt
echo "________________________________________________________________________________________________">>temp.txt
		echo -n "Related Commands: ">> temp.txt
                compgen -c | grep ^l>> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user">> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "ls" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                    
                ;;
                "mv")
                man mv | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p' 
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r
                echo "________________________________________________________________________________________________"
                echo "Example: mv example.txt /home/user/documents/" 
                echo "              To move a file from the current directory to another directory," 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^m
                echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mv" ]; then
                echo "$comm"
                    fi
                    done
               man mv | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p' > temp.txt
               echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: mv example.txt /home/user/documents/" >> temp.txt
                echo "              To move a file from the current directory to another directory," >> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^m >> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                  echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mv" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "rm")
                 man mv | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p'
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: mv example.txt /home/user/documents/" 
                echo "              To move a file from the current directory to another directory," 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^r
                echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rm" ]; then
                echo "$comm"
                    fi
                    done
                man rm | awk '/^DESCRIPTION$/,/^OPTIONS$/' | grep -v 'OPTIONS$' > temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: rm oldfile.txt" >> temp.txt
                echo "              To delete a file" >> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^r >> temp.txt
                echo "________________________________________________________________________________________________">>temp.txt
                  echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rm" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                 "cp")
                 man cp | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r
                 echo "________________________________________________________________________________________________"
                echo "Example: cp file.txt /backup/"
                echo "              To copy a file from one location to another" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^c
                 echo "________________________________________________________________________________________________"
                  echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cp" ]; then
                echo "$comm"
                    fi
                    done
                man cp | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: cp file.txt /backup/" >> temp.txt
                echo "              To copy a file from one location to another" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^c >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                  echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cp" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "mkdir")
                 man mkdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r
                 echo "________________________________________________________________________________________________"
                echo "Example: mkdir myfolder" 
                echo "              To create a single directory"
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^m
                 echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mkdir" ]; then
                echo "$comm"
                    fi
                    done
                man mkdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: mkdir myfolder" >> temp.txt
                echo "              To create a single directory" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^m>> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                 echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "mkdir" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                 "rmdir")
                  man rmdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                   echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: rm myfolder" 
                echo "              To delete a single directory if it exists" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^r 
                 echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rmdir" ]; then
                echo "$comm"
                    fi
                    done
                man rmdir | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: rm myfolder" >> temp.txt
                echo "              To delete a single directory if it exists" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^r>> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                 echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "rmdir" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                
         "cd")
                 man cd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: cd /path/to/directory" 
                echo "              To change to a specific directory, provide the directory path as an argument" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^c
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cd" ]; then
                echo "$comm"
                    fi
                    done
                man cd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: cd /path/to/directory" >> temp.txt
                echo "              To change to a specific directory, provide the directory path as an argument" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^c >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "cd" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "chmod")
                 man chmod | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,10p' 
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: chmod 644 filename" 
                echo "             To change the permissions of a file using octal notation, where each digit represents the permission for the owner, group, and others" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^c
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chmod" ]; then
                echo "$comm"
                    fi
                    done
                man chmod | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,10p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: chmod 644 filename" >> temp.txt
                echo "             To change the permissions of a file using octal notation, where each digit represents the permission for the owner, group, and others" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^c >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chmod" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "chown")
                man chown | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,13p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: chown john document.txt" 
                echo "              To change the owner of a file" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^c
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chown" ]; then
                echo "$comm"
                    fi
                    done
                man chown | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,13p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: chown john document.txt" >> temp.txt
                echo "              To change the owner of a file" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^c >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${PerOp[@]}"; do
                    if [ "$comm" != "chown" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "pwd")
                 man pwd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: #!/bin/bash 
                               current_directory=$\(pwd)" 
                echo "The current working directory is: \home\noura" 
                echo "You can use the pwd command in a shell script to capture the current working directory and use it in subsequent commands" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^p
                 echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "pwd" ]; then
                echo "$comm"
                    fi
                    done
                man pwd | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: #!/bin/bash 
                               current_directory=\$(pwd)">> temp.txt
                echo "The current working directory is: \home\noura" >> temp.txt
                echo "You can use the pwd command in a shell script to capture the current working directory and use it in subsequent commands" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^p >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                 echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${FileOp[@]}"; do
                    if [ "$comm" != "pwd" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "ps")
                man ps | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,4p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: ps -l" 
                echo "To display detailed information about processes, including additional columns like user, %CPU, %MEM, and command details" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: "
                compgen -c | grep ^p
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "ps" ]; then
                echo "$comm"
                    fi
                    done
                man ps | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,4p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: ps -l" >> temp.txt
                echo "To display detailed information about processes, including additional columns like user, %CPU, %MEM, and command details" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^p >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "ps" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "df")
                 man df | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' 
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                 echo "________________________________________________________________________________________________"
                echo "Example: ps -h" 
                echo "To display disk space usage in a more human-readable format" 
                 echo "________________________________________________________________________________________________"
                echo -n "Related Commands: "
                compgen -c | grep ^d 
                 echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "df" ]; then
                echo "$comm"
                    fi
                    done
                man df | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: ps -h" >> temp.txt
                echo "To display disk space usage in a more human-readable format" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^d >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user"  >> temp.txt
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "df" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                 "kill")
                  man kill | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' 
                  echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: kill 1234" 
                echo "To terminate a process by its Process ID" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^k
                echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "kill" ]; then
                echo "$comm"
                    fi
                    done
                man kill | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: kill 1234" >> temp.txt
                echo "To terminate a process by its Process ID" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^k >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user"  >> temp.txt
                for comm in "${ProOp[@]}"; do
                    if [ "$comm" != "kill" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "top")
                 man top | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: top -o %CPU" 
                echo "You can run top with the -o option to sort processes by a specific field"
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^t 
                echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "top" ]; then
                echo "$comm"
                    fi
                    done
                man top | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,8p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: top -o %CPU" >> temp.txt
                echo "You can run top with the -o option to sort processes by a specific field" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^t >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "top" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "du")
                man du | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' 
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: du directoryname" 
                echo "To display the disk usage of a specific directory" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: "
                compgen -c | grep ^d
                echo "________________________________________________________________________________________________"
                echo "Here are some recommended commands which are available to the user" 
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "du" ]; then
                echo "$comm"
                    fi
                    done
                man du | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: du directoryname" >> temp.txt
                echo "To display the disk usage of a specific directory" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^d >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${SysOp[@]}"; do
                    if [ "$comm" != "du" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "grep")
                man grep | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p' 
                 echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: grep \"example\" myfile.txt" 
                echo "To search for a specific string in a file" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^g
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "grep" ]; then
                echo "$comm"
                    fi
                    done
                man grep | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,5p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: grep \"example\" myfile.txt" >> temp.txt
                echo "To search for a specific string in a file" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^g >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                 echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "grep" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "sed")
                man sed | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' 
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: sed 's/apple/orange/' fruits.txt" 
                echo "To replace a specific string with another string in a file" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^s
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sed" ]; then
                echo "$comm"
                    fi
                    done
                man sed | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,7p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: sed 's/apple/orange/' fruits.txt" >> temp.txt
                echo "To replace a specific string with another string in a file" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^s >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                 echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sed" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "awk")
                man awk | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,9p'
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
                uname -r 
                echo "________________________________________________________________________________________________"
                echo "Example: awk '{print \$2}' data.txt
                if the file containes these data 
                AbObaida KING Jan
                Abdallah Bed Laptop
                it will print this
                KING
                Bed" 
                echo "To print specific columns from a file" 
                echo "________________________________________________________________________________________________"
                echo -n "Related Commands: " 
                compgen -c | grep ^a
                echo "________________________________________________________________________________________________"
                 echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "awk" ]; then
                echo "$comm"
                    fi
                    done
                man awk | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,9p' > temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo  -n "The Version is: " >> temp.txt
                uname -r >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo "Example: awk '{print \$2}' data.txt
                if the file containes these data 
                AbObaida KING Jan
                Abdallah Bed Laptop
                it will print this
                KING
                Bed" >> temp.txt
                echo "To print specific columns from a file" >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                echo -n "Related Commands: " >> temp.txt
                compgen -c | grep ^a >> temp.txt
                 echo "________________________________________________________________________________________________">>temp.txt
                 echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "awk" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
                ;;
                "sort")
                man sort | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                echo "________________________________________________________________________________________________"
                echo  -n "The Version is: " 
    uname -r 
    echo "________________________________________________________________________________________________"
    echo "Example: sort unsorted.txt, suppose that the words inside unsorted.txt where as follows:
    8 9 2 1 3
    THE OUTPUT WILL BE LIKE THIS:
    1 2 3 8 9" 
    echo "You can use the sort command to alphabetically sort the lines" 
    echo "________________________________________________________________________________________________"
    echo -n "Related Commands: " 
    compgen -c | grep ^s
    echo "________________________________________________________________________________________________"
     echo "Here are some recommended commands which are available to the user"
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sort" ]; then
                echo "$comm"
                    fi
                    done
    man sort | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
     echo "________________________________________________________________________________________________">>temp.txt
    echo  -n "The Version is: " >> temp.txt
    uname -r >> temp.txt
     echo "________________________________________________________________________________________________">>temp.txt
    echo "Example: sort unsorted.txt, suppose that the words inside unsorted.txt where as follows:
    8 9 2 1 3
    THE OUTPUT WILL BE LIKE THIS:
    1 2 3 8 9
    " >> temp.txt
    echo "You can use the sort command to alphabetically sort the lines" >> temp.txt
     echo "________________________________________________________________________________________________">>temp.txt
    echo -n "Related Commands: " >> temp.txt
    compgen -c | grep ^s >> temp.txt
     echo "________________________________________________________________________________________________">>temp.txt
     echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "sort" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
    ;;
                "cut")
                 man cut | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p'
                 echo "________________________________________________________________________________________________" 
        echo  -n "The Version is: " 
        uname -r
        echo "________________________________________________________________________________________________"
        echo "Example: Noura,Abdallah,25,DeirDebwan
Abu Obaida, Taj Ras Abo Mazen,30, Gaza
Abu Hamza,King,22,Ramallah
and I used this command cut -d',' -f1,3 example.txt
the output is :
Noura,25
Abo Obaida,30
Abo Hamza,22"
        echo "To cut fields based on a range of bytes or comma's using a specific delimiter" 
        echo "________________________________________________________________________________________________"
        echo -n "Related Commands: " 
        compgen -c | grep ^c
        man cut | awk '/^DESCRIPTION$/,/^OPTIONS$/' | sed -n '1,3p' > temp.txt
         echo "________________________________________________________________________________________________">>temp.txt
        echo  -n "The Version is: " >> temp.txt
        uname -r >> temp.txt
         echo "________________________________________________________________________________________________">>temp.txt
        echo "Example: Noura,Abdallah,25,DeirDebwan
Abu Obaida, Taj Ras Abo Mazen,30, Gaza
Abu Hamza,King,22,Ramallah
and I used this command cut -d',' -f1,3 example.txt
the output is :
Noura,25
Abo Obaida,30
Abo Hamza,22" >> temp.txt
        echo "To cut fields based on a range of bytes or comma's using a specific delimiter" >> temp.txt
         echo "________________________________________________________________________________________________">>temp.txt
        echo -n "Related Commands: " >> temp.txt
        compgen -c | grep ^c >> temp.txt
         echo "________________________________________________________________________________________________">>temp.txt
        echo "Here are some recommended commands which are available to the user" >> temp.txt
                for comm in "${TxtOp[@]}"; do
                    if [ "$comm" != "cut" ]; then
                echo "$comm" >> temp.txt
                    fi
                    done
        ;;
        *)
        echo "the verfication failed -_-, focus please!"
        ;;       
        esac
        echo "_____________________________________________________________________________"
        echo " The verfication will be PASSED if the content is the same as the conent saved at the file, otherwise FAILED will be printed -_-"
        ##HERE IS THE VERFICATION BASIC CODE
        file1="$y.txt" #to look for the file the user entered it's name
        temp1="temp.txt" #to compare it with temp file
        echo $file1
        if cmp -s "$file1" "$temp1"; then # this commands compare between the files if they are identical or not, and if they are identical will be true so will print pass, otherwise will print falies
    echo "The result is : PASS"
else
    echo "The result is : FAILED or you enterd a command before checking it's description at stage 1"
fi

    ;;
    #######################################################################################################
#####################   T H I R D                S T A G E ############################################
#######################################################################################################
#for this stage I did two things, the first one is i sorted the commands in a file, as the alphapet sort, so the commands when they are printed to the user will be using this order
#the second thing is a gave the user capability to look for a specfic word in all files in the same directory, and the output will be the name of these files. 
# the second feature i dound it useful for users cuz maybe they need to look for all commands that have the word \"abiliy\", so it will print all the files that have this word inside
    3) echo "You are now at the search section, please enter the word you need to look for here, and please make sure that you checked the _command's name_  you think that you will find the word you look for inside and the current directory e.g: /home/noura,
    and here is the list for the commands sorted, enjoy dear!"
    touch sorted.txt
    echo "  ls
	      mv
	      rm
	      cp
	      cd
	      mkdir
	      rmdir
	      pwd
	      chmod
	      chown
	      ps
	      df
	      du
	      kill
	      top
	      grep
	      sed
	      cut
	      sort
	      awk
"> sorted.txt
sort sorted.txt #using this command, the commands inside the file will be sorted
    read -p "here please enter the directory: " dir #because we need to look for the files at the same directory
    read -p "now please enter the word you are looking for" word #the word the user needs to look for
find "$dir" -type f -name "*.txt" -exec grep -l "$word" {} +
#this command will look  for all files in the given directory (find command), and we need only the regular files not directories (-type f command), and only the files that their name ends with .txt ( -name "*.txt" command), and only to grep the files that have this specfic word (-exec grep -l "$word" command), and to give this line the capability to look for all files one by one and run the command inside the files one by one ({} +)
    ;;
        *)
        #in case the user entered not availbale option
            echo "Sorry, this command is not at this list, try man \"your_command\" and press enter inshallah you will find what you what ^_-"
        ;;
    esac
done




   
