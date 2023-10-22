;; ----------------------------Ofertas-----------------------------------------
;; Oferta de 24 meses por un IPHONE
(defrule oferta-24-meses-sin-intereses
    (OrdenCompra (productos $? (smartphone (marca "apple") (modelo "iPhone15") (color ?color)) $?)
                 (cliente ?cliente))
    (TarjetaCredito (banco "Banamex") (grupo "visa"))
    =>
    (assert (Oferta "24 meses sin intereses para iPhone 15" (cliente ?cliente))))
;; Oferta de 12 meses Por un Samnsung
(defrule oferta-12-meses-sin-intereses
    (OrdenCompra (productos $? (smartphone (marca "Samsung") (modelo "Note 12") (color ?color)) $?)
                 (cliente ?cliente))
    (TarjetaCredito (banco "Liverpool") (grupo "visa"))
    =>
    (assert (Oferta "12 meses sin intereses para Samsung Note 12" (cliente ?cliente))))
;; Oferta de funda y mica 
(defrule descuento-funda-y-mica
    (OrdenCompra (productos $? (smartphone (marca ?marca) $?)
                                 (accesorio "funda") (accesorio "mica") $?)
                 (cliente ?cliente))
    =>
    (assert (Descuento "15% de descuento en funda y mica" (cliente ?cliente))))
;; Oferta por compra de contado
(defrule descuento-por-compra-al-contado
    (OrdenCompra (productos $? (smartphone (marca "apple") (modelo "iPhone15") (color ?color)) $?)
                 (productos $? (computadora (marca "apple") (modelo "MacBookAir") (color ?color)) $?)
                 (cliente ?cliente))
    =>
    (assert (Descuento "100 pesos en vales por cada 1000 pesos de compra al contado" (cliente ?cliente))))

;; Oferta por Compra de Accesorios
(defrule oferta-accesorios-gratis
    (OrdenCompra (productos $? (accesorio ?tipo) $?))
    =>
    (assert (Oferta "Obtén accesorios gratis con tu compra" (tipo ?tipo))))

;; Oferta por Compra de Computadora y Smartphone:
(defrule oferta-bundle-computadora-smartphone
    (OrdenCompra (productos $? (smartphone) $?)
                 (productos $? (computadora) $?))
    =>
    (assert (Oferta "Descuento especial por comprar una computadora y un smartphone juntos")))

;; Oferta por Compra al Mayor:
(defrule oferta-mayorista
    (OrdenCompra (productos $? ?productos $?)
                 (cliente (tipo "mayorista")))
    =>
    (assert (Oferta "Descuentos exclusivos para mayoristas" (productos ?productos))))

;; Oferta por Compra en Línea:
(defrule oferta-compra-en-linea
    (OrdenCompra (cliente ?cliente))
    =>
    (assert (Oferta "Oferta especial para compras en línea" (cliente ?cliente))))
;; Oferta por Compra de Computadora:
(defrule oferta-computadora
    (OrdenCompra (productos $? (computadora) $?))
    =>
    (assert (Oferta "Obtén un descuento en accesorios al comprar una computadora")))

;; Oferta para Compras Superiores a $5000:
(defrule oferta-compras-altas
    (OrdenCompra (total ?total&:(> ?total 5000)))
    =>
    (assert (Oferta "Recibe un regalo sorpresa por compras superiores a $5000")))


;; ---------------------Descuentos aplicar------------------------------
;; Descuento por Lealtad del Cliente:
(defrule descuento-lealtad-cliente
    (OrdenCompra (cliente ?cliente))
    (Cliente (nombre ?cliente) (tipo "frecuente"))
    =>
    (assert (Descuento "Descuento especial para clientes frecuentes" (cliente ?cliente))))

;; Descuento por Compra Voluminosa:
(defrule descuento-compra-voluminosa
    (OrdenCompra (productos $?)
                 (cliente (tipo "mayorista")))
    =>
    (assert (Descuento "Descuento por compra voluminosa" (cliente ?cliente))))

;; Descuento por Tarjeta de Crédito Específica:
(defrule descuento-tarjeta-especifica
    (OrdenCompra (cliente ?cliente))
    (TarjetaCredito (banco "BBVA") (grupo "visa"))
    =>
    (assert (Descuento "Descuento especial para tarjetas BBVA Visa" (cliente ?cliente))))

;; Descuento por Compra de Accesorios Caros:
(defrule descuento-accesorios-caros
    (OrdenCompra (productos $? (accesorio ?tipo&:(= ?tipo "funda") (precio ?precio&:(> ?precio 500))) $?))
    =>
    (assert (Descuento "Descuento especial en fundas caras" (tipo "funda"))))

;; Descuento por Compra de Tarjeta de Crédito:
(defrule descuento-por-tarjeta
    (OrdenCompra (productos $? (tarjeta-credito) $?))
    =>
    (assert (Descuento "Descuento adicional por comprar una tarjeta de crédito")))



;; ---------------------------Segmentar clientes por--------------------------
;; Segmentación por Tipo de Producto Consumido:
;; (defrule segmentacion-por-producto
;;    (OrdenCompra (productos $? (smartphone) $?))
;;    =>
;;    (assert (Segmento "Compradores de smartphones")))

(defrule segmentacion-por-producto
    ?cliente <- (OrdenCompra (cliente ?nombre) (productos $? (smartphone) $?))
    ?segmento <- (Segmento (nombre "Compradores de smartphones") (listaClientes ?clientes))
    =>
    (modify ?segmento (listaClientes (create$ ?nombre (implode$ ?clientes)))))

;; Segmentación de Clientes Menudistas:
;; (defrule segmentacion-menudistas
;;    (Cliente (tipo "menudista"))
;;    =>
;;    (assert (Segmento "Clientes menudistas")))

(defrule segmentacion-menudistas
    ?cliente <- (Cliente (tipo "menudista"))
    ?segmento <- (Segmento (nombre "Clientes menudistas") (listaClientes ?clientes))
    =>
    (modify ?segmento (listaClientes (create$ ?cliente (implode$ ?clientes)))))  

;; Segmentación de Clientes Mayoristas:
;;(defrule segmentacion-mayoristas
;;    (Cliente (tipo "mayorista"))
;;    =>
;;    (assert (Segmento "Clientes mayoristas")))

(defrule segmentacion-mayoristas
    ?cliente <- (Cliente (tipo "mayorista"))
    ?segmento <- (Segmento (nombre "Clientes mayoristas") (listaClientes ?clientes))
    =>
    (modify ?segmento (listaClientes (create$ ?cliente (implode$ ?clientes)))))


;;Segmentación por Historial de Compras:
;;(defrule segmentacion-por-historial
;;    (OrdenCompra (cliente ?cliente))
;;    (>= (count ?historial) 3) ;; Ejemplo: Cliente con al menos 3 compras anteriores.
;;    =>
;;    (assert (Segmento "Clientes con historial de compras")))

(defrule segmentacion-por-historial
    (OrdenCompra (cliente ?cliente))
    (>= (count ?historial) 3)
    (Segmento (nombre "Clientes con historial de compras") (listaClientes ?clientes))
    =>
    (modify ?clientes (create$ ?cliente)))

;; Segmentación por Frecuencia de Compra:
(defrule segmentar-cliente-frecuente
    (Cliente (nombre ?nombre) (tipo "frecuente"))
    =>
    (modify (Segmento "Clientes frecuentes") (listaClientes (create$ ?nombre (get-list-facts "Clientes frecuentes" listaClientes)))))