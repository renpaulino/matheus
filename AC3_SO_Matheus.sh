#!/bin/bash
echo
echo  "$(tput setaf 10)$(tput setaf 7) 		            Matheus Silva Marques"
echo  "$(tput setaf 10)$(tput setaf 7) 				   RA: 01202103"
echo  "$(tput setaf 10)$(tput setaf 7) 				   Turma: 2ADSB"
echo
echo  "$(tput setaf 10)$(tput setaf 7) ---------------------------AC3 Sistemas Operacionais---------------------------"
echo
echo "$(tput setaf 10)$(tput setaf 7)                        Script Instalador de Java"	
echo
echo "$(tput setaf 10)$(tput setaf 7) -------------------------------------------------------------------------------"
echo
echo  "$(tput setaf 10)$(tput setaf 7) Verificando instalação de Java no sisteman um momentinho... Ok!"
sleep 3
echo
java -version
echo
if [ $? -eq 0 ]
	then
		echo "$(tput setaf 10)$(tput setaf 7) Instalação Java localizada."
echo  "$(tput setaf 10)$(tput setaf 7) ."
echo  "$(tput setaf 10)$(tput setaf 7) ."
echo  "$(tput setaf 10)$(tput setaf 7) ."
echo
echo  "$(tput setaf 10)$(tput setaf 7) Instalador encerrada, parabens agora voce tem o java"
echo
sleep 2 
 	else
		echo "$(tput setaf 10)$(tput setaf 7)  Não há java na sua maquina"
echo
		echo "$(tput setaf 10)$(tput setaf 7)  Deseja instalar o Java (S/N)?"
	read inst
	if [ \"$inst\" == \"s\" ]
		then
			echo "$(tput setaf 10)$(tput setaf 7)  Iniciando instalação..."
echo
sleep 3
			echo "$(tput setaf 10)$(tput setaf 7)  Adicionando o repositório..."
			sleep 2
			sudo add-apt-repository ppa:webupd8team/java -y
			clear
echo
			echo "$(tput setaf 10)$(tput setaf 7)  Atualizando..."
			sleep 2
			sudo apt update -y
			clear
			
			if [ $VERSAO -eq 11 ]
				then
					echo "$(tput setaf 10)$(tput setaf 7) Iniciando instalação Java 11. Confirme a instalação quando for solicitado"
					sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
					clear
					echo "$(tput setaf 10)$(tput setaf 7) Instalação Java realizada com sucesso!!!"
				fi
		else 	
		echo "$(tput setaf 10)$(tput setaf 7) Instalação abortada."
	fi
fi
echo "$(tput setaf 10)$(tput setaf 7) Confirma a instalação da aplicação? (S/N)"
      read inst
      if [ \"$inst\" == \"s\" ] 
	     then 
		      echo "$(tput setaf 10)$(tput setaf 7) Iniciando instalação..."
		      sudo apt-get install wget
		      wget https://transfer.sh/get/y70lh/java-swing-1.0-SNAPSHOT-jar-with-dependencies.jar
                      clear
 	       else
		      echo "$(tput setaf 10)$(tput setaf 7) Concluindo..."
echo
sleep 2
echo "$(tput setaf 10)$(tput setaf 7) Instalação finalizada."
echo
sleep 1      	
      fi		     
echo "$(tput setaf 10)$(tput setaf 7) Hey, ja possui cadastro em nossa plataforma ? *__* (S/N)"
        read inst
        if [ \"$inst\" == \"s\" ]
             then
                      echo "$(tput setaf 10)$(tput setaf 7) Iniciando aplicação..."
                      java -jar java-swing-1.0-SNAPSHOT-jar-with-dependencies.jar
               else
                      echo "$(tput setaf 10)$(tput setaf 7) Abrindo formulário de cadastro, um momento..."
		      google-chrome www.google.com.br
		      echo "$(tput setaf 10)$(tput setaf 7) Conseguiu finalizar o cadastro?"
		      read inst
        if [ \"$inst\" == \"s\" ]
             then
                      echo "$(tput setaf 10)$(tput setaf 7) Iniciando aplicação..."
                      java -jar java-swing-1.0-SNAPSHOT-jar-with-dependencies.jar
               else
                      echo "$(tput setaf 10)$(tput setaf 7) Aplicação não iniciada, tente novamente."
                      www.google.com.br
		fi
        fi

# ===================================================================
# Todos direitos reservados para o autor: Dra. Profa. Marise Miranda.
# Sob licença Creative Commons @2020
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================
