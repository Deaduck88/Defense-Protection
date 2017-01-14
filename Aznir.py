#-*- coding:utf-8 -*-
# AZNIR
# This tool show your system information
# Data: 15/01/2017
# Autor: Dead Duck
# Facebook: fb.com/dead.duck01
# Twitter: Deaduck88
# Telegram: @DuckSecurity
import os
import platform
def a():
 """
 ALL SYSTEM INFORMATION
 """
 # SYSTEM INFORMATION                       _      
 print "    /\              (_)     "
 print "   /  \    _____ __  _ _ __ "
 print "  / /\ \  |_  / '_ \| | '__|"
 print " / ____ \  / /| | | | | |   "
 print "/_/    \_\/___|_| |_|_|_|   "
 print "        By: Dead Duck"
 print "                            " 
 print "  ---System Information--- "
 print "                           "
 print "Operational System -> ",  platform.system()
 print "Platform -> ", platform.platform()
 print "Version -> ", platform.version()
 print "Processor -> ", platform.processor()
 print "Hardware Type: ", platform.machine() 
 if platform.system() == "Linux" or platform.system() == "linux":
   print "User -> ", os.getlogin()
   print " Distribution -> ", platform.linux_distribution()
print a()