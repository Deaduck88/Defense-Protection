#!/usr/bin/python
#-*- coding:utf-8 -*-
# JCcrack
# By: Dead Duck
# Facebook: fb.com/dead.duck01
# Twitter: @Deaduck88
# Github: github.com/Deaduck88
# Telegram: @DuckSecurity
# Youtube Channel: youtube.com/channel/UCsTgsqiQBEjdsdxf8GqITrw
# -- GEEKS LAB -- BROTHERS:
# - Esponja
# - Alien (Geek-x)
# - Blade (Derxs)
import hashlib
import os
import platform
import time
def enc():
	print " ▐▄▄▄ ▄▄· ▄▄▄   ▄▄▄·  ▄▄· ▄ •▄ "
	print "  ·██▐█ ▌▪▀▄ █·▐█ ▀█ ▐█ ▌▪█▌▄▌▪"
	print "▪▄ ████ ▄▄▐▀▀▄ ▄█▀▀█ ██ ▄▄▐▀▀▄·"
	print "▐▌▐█▌▐███▌▐█•█▌▐█ ▪▐▌▐███▌▐█.█▌"
	print "▀▀▀•·▀▀▀ .▀  ▀ ▀  ▀ ·▀▀▀ ·▀  ▀ "
	print "       ______________          "
	print "      |By: Dead Duck |         "
	print "                               "
	print " ______________________________"
	print "                               "
	print "   [+] INFORMAÇÃO EXTRA [+]    "
	print " ______________________________"
	print "                               "
	print "| [+] Sistema Operacional: ", platform.system()
	print "| [+] Versão: ", platform.version()
	print "| [+] Tipo de máquina: ", platform.machine()
	print "| [+] Processador: ", platform.processor()
	print " _______________________________"
	print "                                "
	md5 = hashlib.md5()
	sha1 = hashlib.sha1()
	sha256 = hashlib.sha256()
   	a = raw_input ("[+] Digite o texto desejado: ")
   	md5.update(a)
   	sha1.update(a)
   	sha256.update(a)
   	print "A) MD5"
   	print "B) SHA1"
   	print "C) SHA256"
   	print "         "
   	b = raw_input ("Escolha o algoritmo desejado: ")
   	if b == "A" or b == "a":
   		if platform.system() == "Linux":
   			os.system("reset")
   			time.sleep(1)
   		print " __  __ _____  _____"
 		print "|  \/  |  __ \| ____|"
 		print "| \  / | |  | | |__  "
 		print "| |\/| | |  | |___ \ "
 		print "| |  | | |__| |___) |"
 		print "|_|  |_|_____/|____/ "
 		print "      Algoritmo        "
 		print "                       "
 		print "[+] HASH: ", md5.hexdigest()
 	elif b == "B" or b == "b":
   		if platform.system() == "Linux":
   	  		os.system("reset")
   	   		time.sleep(1)
   	   	print "   _____ _    _         __"
		print "  / ____| |  | |   /\  /_ | "
		print " | (___ | |__| |  /  \  | | "
		print "  \___ \|  __  | / /\ \ | | "
		print "  ____) | |  | |/ ____ \| | "
		print " |_____/|_|  |_/_/    \_\_| "
		print "         ALgoritmo          "
		print "                            "
		print "[+] HASH: ", sha1.hexdigest()
	elif b == "C" or b == "c":
   		if platform.system() == "Linux":
   			os.system("reset")
   			time.sleep(1)
		print "   _____ _    _          ___  _____   __  "
		print "  / ____| |  | |   /\   |__ \| ____| / /  "
		print " | (___ | |__| |  /  \     ) | |__  / /_  "
		print "  \___ \|  __  | / /\ \   / /|___ \| '_ \ "
		print "  ____) | |  | |/ ____ \ / /_ ___) | (_) |"
		print " |_____/|_|  |_/_/    \_\____|____/ \___/ "
		print "               ALgoritmo                  "
		print "                                          "
		print "[+] HASH: ", sha256.hexdigest()
	else:
		for x in range(0,1):
			os.system("clear")
			print "[-] Escolha somente escolha uma dessas opções!"
			time.sleep(2)
			os.system("reset")
			return enc()
print enc()                       
                                          
                           
                           
                      



