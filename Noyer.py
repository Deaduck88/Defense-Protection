#-*- coding:utf-8 -*-
# Noyer
# Este script encripta os textos que você deseja, para MD5,SHA1, e SHA256
# Autor: Dead Duck
# Data: 15/01/2017
import hashlib
def enc():
 print " _   _                       "
 print "| \ | |                      "
 print "|  \| | ___  _   _  ___ _ __ "
 print "| . ` |/ _ \| | | |/ _ \ '__|"
 print "| |\  | (_) | |_| |  __/ |  " 
 print "|_| \_|\___/ \__, |\___|_| "  
 print "              __/ | "         
 print "             |___/          "       
 print "   By: Dead Duck          "
 print " --------------------------"
 texto = raw_input ("Digite um texto: ")
 md5 = hashlib.md5()
 sha1 = hashlib.sha1()
 sha256 = hashlib.sha256()
 a = md5.update(texto)
 b = sha1.update(texto)
 c = sha256.update(texto) 
 print "[+] MD5 -> ", md5.hexdigest()
 print "[+] SHA1 -> ", sha1.hexdigest()
 print "[+] SHA256 -> ", sha256.hexdigest()
print enc()