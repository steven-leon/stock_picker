def stock_picker(precios)
    dia_compra = 0
    dia_venta = 0
    ganancia = 0
    for i in 0...(precios.length - 1)
        for j in (i + 1)...precios.length
                aux = precios[j] - precios[i]
                if aux > ganancia
                    ganancia = aux
                    dia_compra = i
                    dia_venta = j
                end
        end
    end
    return [dia_compra, dia_venta]
end

puts stock_picker(precios = [17,3,6,9,15,8,6,1,10])
