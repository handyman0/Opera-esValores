#!/bin/bash

read -p "Informe o primeiro valor: " VALOR1
read -p "Informe o segundo valor: " VALOR2
echo ""
echo "Escolha uma Operação: "
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"
read -p "Opção: " opcao
echo ""
case "$opcao" in
	1)
		echo "Você escolheu soma!"
		echo ""
		RESULTADO=$(expr $VALOR1 + $VALOR2)
		echo "$expr $VALOR1 + $VALOR2 = $RESULTADO"
		sleep 3
		;;
	2)
                echo "Você escolheu subtração!"
		expr $VALOR1 - $VALOR2
		sleep 3
                ;;
	3)
                echo "Você escolheu Multiplicação!"
		expr $VALOR1 * $VALOR2
		sleep 3
                ;;
	4)
                echo "Você escolheu Divisão!"
                expr $VALOR1 / $VALOR2
		sleep 3
		;;
	Q|q) 
                echo "Saindo ..."
		exit 0
                ;;
	*)
                echo "Escolha uma opção valida"
		exit 1
                ;;
esac
