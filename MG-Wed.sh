#!/bin/bash
# MG-Wed 1.0
# #This script, encript and decrypt the files you want
#Autor:Dead Duck
#Facebook: /dead.duck01
#Twitter: @Deaduck88
#Telegram: @DuckSecurity
echo " ----------------- "
echo "   MG-Wed "
echo " ----------------- "
echo "                   "
encrypt(){
echo -n " What do you want encrypt? Directory(D) or Archive(A)"
read -t 6 wnt
sleep 2
reset
case $wnt in
A | a)
  echo -n " Write the archive -->      "
  read -t 10 dir
  if test -f $dir
  then
   echo -n " Your system is Red Hat(R) or  Debian(D)"
   read -t 10 my
   case $my in
    R | r)
     echo " [ + ] processing ... "
     sleep 1
     echo " [ :: ] You have to do the download of the Ccrypt"
     exit 0;;
    D | d)
     echo -n " Do you want to do repository update of your system? Yes(Y)"
     read -t 6 yn
     if [ $yn = y||Y ]
     then
      apt-get update
      if [ $? -eq 0 ]
      then
       echo " [ + ] Sucessfully update "
       sleep 1
       reset
      elif [ $? -eq 1 ] || [ $? -eq 127 ]
      then
       echo " [ - ] ERROR! "
       reset
      fi
     fi
     echo " [ + ] Downloading ..."
     apt-get install ccrypt
     echo " [ + ] processing "
     sleep 2
     ccrypt $dir
     if [ $? -eq 0 ]
     then
      echo " [ + ] Sucessfully. Archive Encripted!  "
      sleep 1
      reset
      exit 0
     else
      echo " Error ... Shutdown! "
      exit 0
     fi;;
    *)
     echo " Try Again "
     exit 0;;
   esac
  else
  echo "[ - ] Is not archive"
  sleep 1
  exit 0
  fi;; 
D | d)
echo -n " Write the directory -->      "
  read -t 10 dir
  if test -d $dir
  then
   echo -n " Your system is Red Hat(R) or  Debian(D)"
   read -t 10 my
   case $my in
    R | r)
     echo " [ + ] processing ... "
     sleep 1
     echo " You have to do the download of the Ccrypt"
    sleep 3
     exit 0;;
    D | d)
     echo -n " Do you want to do repository update of your system? Yes(Y)"
     read -t 6 yn
     if [ $yn = y||Y ]
     then
      apt-get update
      if [ $? -eq 0 ]
      then
       echo " [ + ] Sucessfully update "
       sleep 1
       reset
      elif [ $? -eq 1 ] || [ $? -eq 127 ]
      then
       echo " [ - ] ERROR! "
       reset
      fi
     fi
     echo " [ + ] Downloading ..."
     apt-get install ccrypt
     echo " [ + ] processing "
     sleep 2
     ccrypt -r $dir
     if [ $? -eq 0 ]
     then
      echo " [ + ] Sucessfully. Directory Encripted!  "
      sleep 2
      exit 0
     else
      echo " [ - ] Error ... Shutdown! "
      exit 0
     fi;;
    *)
     echo " Try Again "
     exit 0;;
   esac
  else
  echo "[ - ] Is not archive"
  sleep 1
  exit 0
  fi;;
*)
  echo " [ ' ] Just use the sintaxe "
  exit 0;;
esac
}
decrypt(){
case $wnt in
A | a)
  echo -n " Write the archive for decrypt -->      "
  read -t 10 dir
  if test -f $dir
  then
   echo -n " Your system is Red Hat(R) or  Debian(D)"
   read -t 10 my
   case $my in
    R | r)
     echo " [ + ] processing ... "
     sleep 1
     echo " [ :: ] You have to do Ccrypt download"
     exit 0;;
    D | d)
     echo -n " Do you want to do repository update of your system? Yes(Y)"
     read -t 6 yn
     if [ $yn = y||Y ]
     then
      apt-get update
      if [ $? -eq 0 ]
      then
       echo " [ + ] Sucessfully update "
       sleep 1
       reset
      elif [ $? -eq 1 ] || [ $? -eq 127 ]
      then
       echo " [ - ] ERROR! "
       reset
      fi
     fi
     echo " [ + ] Downloading ..."
     apt-get install ccrypt
     echo " [ + ] processing "
     sleep 2
     ccrypt $dir
     if [ $? -eq 0 ]
     then
      echo " [ + ] Sucessfully. Archive Decrypted!  "
      sleep 1
      reset
      exit 0
     else
      echo " Error ... Shutdown! "
      exit 0
     fi;;
    *)
     echo " [ - ] Try Again "
     exit 0;;
   esac
  else
  echo "[ - ] Is not archive"
  sleep 1
  exit 0
  fi;;
D | d)
echo -n " Write the directory -->      "
  read -t 10 dir
  if test -d $dir
  then
   echo -n " Your system is Red Hat(R) or  Debian(D)"
   read -t 10 my
   case $my in
    R | r)
     echo " [ + ] processing ... "
     sleep 1
     echo " You have to do the download of the Ccrypt"
    sleep 3
     exit 0;;
    D | d)
 
echo -n " Do you want to do repository update of your system? Yes(Y)"
     read -t 6 yn
     if [ $yn = y||Y ]
     then
      apt-get update
      if [ $? -eq 0 ]
      then
       echo " [ + ] Sucessfully update "
       sleep 1
       reset
      elif [ $? -eq 1 ] || [ $? -eq 127 ]
      then
       echo " [ - ] ERROR! "
       reset
      fi
     fi
     echo " [ + ] Downloading ..."
     apt-get install ccrypt
     echo " [ + ] processing "
     sleep 2
     ccrypt -r $dir
     if [ $? -eq 0 ]
     then
      echo " [ + ] Sucessfully. Directory Encripted!  "
      sleep 2
      exit 0
     else
      echo " [ - ] Error ... Shutdown! "
      exit 0
     fi;;
    *)
     echo " Try Again "
     exit 0;;
   esac
  else
  echo "[ - ] Is not archive"
  sleep 1
  exit 0
  fi;;
*)
  echo " [ ' ] Just use the sintaxe "
  exit 0;;
esac
}
menu(){
echo -n " Do you want encrypt(E) or decrypt(D) ?"
read -t 5 ed
case $ed in
E|e)
  encrypt;;
D|d)
  decrypt;;
*)
  echo " ERROR!"
  sleep 3
  exit 0;;
esac
}
menu
