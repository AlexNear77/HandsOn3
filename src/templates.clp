(deftemplate Smartphone
    (slot producto-id)
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio))

(deftemplate Computadora
    (slot producto-id)
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio))

(deftemplate Accesorio
    (slot producto-id)
    (slot tipo)   ;; Por ejemplo, tipo de accesorio: funda, mica, auriculares, etc.
    (slot color)
    (slot marca)  ;; Marca del accesorio, si es aplicable.
    (slot precio)) ;; Precio del accesorio


(deftemplate TarjetaCredito
    (slot banco)
    (slot grupo)
    (slot numero-tarjeta)
    (slot fecha-expiracion))

(deftemplate Cliente
    (slot cliente-id)
    (slot nombre-persona)
)

(deftemplate OrdenCompra
    (slot orden-id)
    (slot producto-id)
    (slot cantidad)
    (slot numero-tarjeta)
    (slot cliente-id))



(deftemplate Vale
    (slot cliente-id)
    (slot grupo)
    (slot mes)
    (slot ano)
    (slot valor))

(deftemplate Segmento
    (slot segmento)
    (slot cliente-id))

(defglobal ?*contador-compras* = 0)
