for i in `seq 1 2`; do
	eval echo "El valor del parametro $i es: " \$$i
done

uno="Valor de variable 'uno'"
dos="Valor de variable 'dos'"

echo ${!1}
echo ${!2}

