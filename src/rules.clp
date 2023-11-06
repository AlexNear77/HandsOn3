
;; ( 1 )  oferta del 15% ala compra de Smartphone con tarjetas del grupo VISA

(defrule descuento-grupo-VISA-Smartphone
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id) (numero-tarjeta ?number))
    (Smartphone (producto-id ?pr) (marca ?mar) (precio ?pre))
    (TarjetaCredito (numero-tarjeta ?number) (grupo "Visa"))
    =>
    (printout t ?nom "-- Tiene un 12% de descuento por comprar un smartphone con una tarjeta VISA. De: $" ?pre " a $" (* ?pre 0.95) crlf)
)

; ( 2 )  Oferta de 24 meses por un iPhone:

(defrule oferta-24-meses-iPhone
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Smartphone (producto-id ?pr) (marca "Apple") (precio ?pre))
    =>
    (printout t ?nom "-- Oferta especial: ¡Llévate un iPhone a 24 meses sin intereses!" crlf)
)

; ( 3 )  Oferta de 12 meses por un Samsung:

(defrule oferta-12-meses-Samsung
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Smartphone (producto-id ?pr) (marca "Samsung") (precio ?pre))
    =>
    (printout t ?nom "-- Oferta exclusiva: ¡Adquiere un Samsung a 12 meses sin intereses!" crlf)
)

; ( 4 )  Oferta de funda o mica:

(defrule oferta-funda-o-mica
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Accesorio (producto-id ?pr) (tipo "Funda" | "Mica")) 
    =>
    (printout t ?nom "-- ¡Mitad de precio! Funda o mica con tu compra. ¡Aprovecha esta oferta especial!" crlf)
)

; ( 5 )  Oferta por compra de contado:

(defrule oferta-compra-contado
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    =>
    (printout t ?nom "-- Descuento adicional del 5% por pago al contado. ¡No te lo pierdas!" crlf)
)

; ( 6 )  Oferta por Compra de Accesorios:

(defrule oferta-compra-accesorios
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Accesorio (producto-id ?pr))
    =>
    (printout t ?nom "-- ¡Obtén un 10% de descuento en accesorios adicionales con tu compra!" crlf)
)

; ( 6 )  Oferta por Compra de Computadora y Smartphone:

(defrule oferta-compra-computadora-smartphone
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr1) (cliente-id ?id))
    (OrdenCompra (producto-id ?pr2) (cliente-id ?id))
    (Computadora (producto-id ?pr1 | ?pr2))
    (Smartphone (producto-id ?pr1 | ?pr2))
    =>
    (printout t ?nom "-- ¡Compra una computadora y un smartphone y obtén un 15% de descuento en ambos productos!" crlf)
)

; ( 7 )  Oferta por Compra al Mayor:
(defrule oferta-compra-mayor
    (Cliente (cliente-id ?id) (nombre-persona ?nom) )
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    =>  
    (printout t ?nom "-- ¡Grandes descuentos por compras al por mayor! Contáctanos para más detalles." crlf)
)

; ( 8 )  Oferta por Compra en Línea:
(defrule oferta-compra-linea
    (Cliente (cliente-id ?id) (nombre-persona ?nom) )
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    =>
    (printout t ?nom "-- ¡Obtén un 7% de descuento adicional por realizar tu compra en línea!" crlf)
)

; ( 9 )  Oferta para Productos  Superiores a $1000:
(defrule oferta-compra-superior-1000
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (or 
        (Smartphone (producto-id ?pr)  (precio ?precio &:(>= ?precio 1000)))
        (Computadora (producto-id ?pr)  (precio ?precio &:(>= ?precio 1000)))
    )
    =>
    (printout t ?nom "-- ¡Felicidades! Por tu compra superior a $5000, obtienes un 20% de descuento adicional." crlf)
)
;-------------------------DESCUENTOS-----------------------------
; ( 10 ) Descuento por Compra de Productos de Alto Valor:

(defrule descuento-producto-alto-valor
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Computadora (producto-id ?pr) (precio ?pre &:(>= ?pre 1000)))
    =>
    (printout t ?nom "-- ¡Obtén un 10% de descuento por comprar una computadora de alto valor!" crlf)
)

; ( 11 ) Descuento por Compra de Cantidad Mayor a 2 Unidades:
(defrule descuento-cantidad-mayor-2
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id) (cantidad ?cant))
    (test (> ?cant 2))
    =>
    (printout t ?nom "-- ¡Felicidades! Por tu compra de más de 2 unidades, obtienes un 5% de descuento adicional." crlf)
)

; ( 12 ) Descuento por Compra de Productos con Precio Reducido:
(defrule descuento-precio-reducido
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Smartphone (producto-id ?pr) (precio ?pre))
    (test (= ?pre 600)) ;; Supongamos que el precio reducido es $150 para el Smartphone
    =>
    (printout t ?nom "-- ¡Gran elección! Obtén un 15% de descuento por comprar un smartphone a precio reducido." crlf)
)

; ( 13 ) Descuento por Compra de Accesorios Caros:

(defrule descuento-accesorios-caros
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Accesorio (producto-id ?pr) (precio ?pre))
    (test (>= ?pre 50))
    =>
    (printout t ?nom "-- ¡Obtén un 10% de descuento por comprar un accesorio caro!" crlf)
)

; ( 14 ) Descuento por Tarjeta de Crédito Específica

(defrule descuento-tarjeta-especifica
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id) (numero-tarjeta ?number))
    (TarjetaCredito (numero-tarjeta ?number) (banco "BBVA"))
    =>
    (printout t ?nom "-- ¡Paga con tu tarjeta BBVA y obtén un 5% de descuento adicional!" crlf)
)

; ( 15 ) Descuento por Comprar con Vales:

(defrule descuento-compra-con-vales
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Vale (cliente-id ?id))
    =>
    (printout t ?nom "-- ¡Utiliza tus vales y obtén un 20% de descuento en tu compra!" crlf)
)

;( 16 ) Descuento por Compra de Computadoras de la Marca "Apple":

(defrule descuento-computadora-apple
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr) (cliente-id ?id))
    (Computadora (producto-id ?pr) (marca "Apple"))
    =>
    (printout t ?nom "-- ¡Compra una Computadora Apple y obtén un 8% de descuento!" crlf)
)
; ( 17 ) Descuento por Compra de Computadora y Smartphone Juntos

(defrule descuento-computadora-smartphone
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (producto-id ?pr1) (cliente-id ?id))
    (OrdenCompra (producto-id ?pr2) (cliente-id ?id))
    (Computadora (producto-id ?pr1 | ?pr2))
    (Smartphone (producto-id ?pr1 | ?pr2))
    =>
    (printout t ?nom "-- ¡Compra una computadora y un smartphone juntos y obtén un 12% de descuento!" crlf)
)

;---------------------------SEGMENTOS-------------------------
; ( 18 ) Regla para Segmentar Mayoristas (Más de 1 Compras):

(defrule segmentar-mayoristas
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (OrdenCompra (cliente-id ?id))
    (not (Segmento (cliente-id ?id) (segmento "Mayorista")))
    =>
    (bind ?*contador-compras* (+ ?*contador-compras* 1))
    (if (>= ?*contador-compras* 1)
        then
        (printout t ?nom "-- Eres un cliente mayorista por realizar más de 1 compras." crlf)
        (assert (Segmento (cliente-id ?id) (segmento "Mayorista")))
    )
    (bind ?*contador-compras* 0) ; Resetea el contador al final de la regla
)
; ( 19 ) Regla para Segmentar Minoristas (Menos de 1 Compra):

(defrule segmentar-minoristas
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (not (Segmento (cliente-id ?id) (segmento "Mayorista")))
    (not (OrdenCompra (cliente-id ?id)))
    =>
    (printout t ?nom "-- Eres un cliente minorista por realizar una compra o ninguna." crlf)
    (assert (Segmento (cliente-id ?id) (segmento "Minorista")))
)

; (20) Regla para Segmentar Compradores Nuevos:

(defrule segmentar-nuevo
    (Cliente (cliente-id ?id) (nombre-persona ?nom))
    (not (OrdenCompra (cliente-id ?id)))
    (not (Segmento (cliente-id ?id) (segmento "Nuevo")))
    =>
    (printout t ?nom "-- Eres un cliente nuevo por no realizar ninguna compra." crlf)
    (assert (Segmento (cliente-id ?id) (segmento "Nuevo")))
)


