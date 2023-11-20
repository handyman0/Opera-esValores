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
		RESULTADO=$((VALOR1 + VALOR2))
		echo "$VALOR1 + $VALOR2 = $RESULTADO"
		sleep 3
		;;
	2)
		echo "Você escolheu subtração!"
		RESULTADO=$((VALOR1 - VALOR2))
		echo "$VALOR1 - $VALOR2 = $RESULTADO"
		sleep 3
		;;
	3)
		echo "Você escolheu Multiplicação!"
		RESULTADO=$((VALOR1 * VALOR2))
		echo "$VALOR1 * $VALOR2 = $RESULTADO"
		sleep 3
		;;
	4)
		echo "Você escolheu Divisão!"
		RESULTADO=$((VALOR1 / VALOR2))
		echo "$VALOR1 / $VALOR2 = $RESULTADO"
		sleep 3
		;;
	[Qq])
		echo "Saindo ..."
		exit 0
		;;
	*)
		echo "Escolha uma opção válida"
		exit 1
		;;
esac

