#!/bin/bash



Pu(){
    echo
echo "Usage: ./frida-scripts-fetcher.sh -s 'search_keyword_here'"
echo "Example: ./frida-scripts-fetcher.sh -s 'jailbreak'"
echo 
echo "If you want to search multipe words then use the format(\|) without spaces: 'word1\|word2'"
echo "Example: ./frida-scripts-fetcher.sh -s 'root\|jail'"
}


Mf(){
echo
i=1

echo -e "\e[32m[+] Extracting all the scripts with the word "${Kword}" in their names.\e[0m"
echo
while [ $i -le 20 ]
do
curl -ks1 "https://codeshare.frida.re/browse?page=${i}" | grep -i '<h2>' | grep -i "${Kword}"

((i++))
done 
}



Banner(){
echo -e '\e[32m
================================================================================
=        ===============  ============      ====================================
=  =====================  ===========  ====  ===================================
=  =====================  ===========  ====  =========================  ========
=  =======  =   ==  ====  ==   =======  =======   ==  =   ==  =    ==    ==   ==
=      ===    =  =====    =  =  ========  ====  =  =    =  ====  =  ==  ==  =  =
=  =======  ======  =  =  ====  ==========  ==  ====  ======  =  =  ==  ===  ===
=  =======  ======  =  =  ==    =====  ====  =  ====  ======  =    ===  ====  ==
=  =======  ======  =  =  =  =  =====  ====  =  =  =  ======  =  =====  ==  =  =
=  =======  ======  ==    ==    ======      ===   ==  ======  =  =====   ==   ==
================================================================================
=        ==================  ==================                                 
=  ========================  ==================                                 
=  ==============  ========  ==================                                 
=  ========   ==    ==   ==  =====   ==  =   ==                                 
=      ===  =  ==  ==  =  =    ==  =  =    =  =                                 
=  =======     ==  ==  ====  =  =     =  ======                                 
=  =======  =====  ==  ====  =  =  ====  ======                                 
=  =======  =  ==  ==  =  =  =  =  =  =  ======                                 
=  ========   ===   ==   ==  =  ==   ==  ======                                 
===============================================   
\e[0m'
echo -e "\e[33m============= Made By Kamaldeep Bhati (@DarkLotusKDB) <3 ================\e[0m"
}

while getopts 's:' flag; do
    case "${flag}" in
        s) Kword="${OPTARG}";;
        *) Pu
           exit 1;;
    esac
done

if [ "$#" -eq 2 ]; then
    Banner
    Mf | tee scripts.log

else
    Banner
    Pu
fi

echo -e "\n\e[92mFollow Me On\e[0m" "\e[34mTwitter\e[0m" "\e[5m\e[93m@DarkLotusKDB\e[0m"
echo -e "\e[92mHappy Hacking\e[0m"
