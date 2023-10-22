(deftemplate Smartphone
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio))

(deftemplate Computadora
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio))

(deftemplate Accesorio
    (slot tipo)   ;; Por ejemplo, tipo de accesorio: funda, mica, auriculares, etc.
    (slot color)
    (slot marca)  ;; Marca del accesorio, si es aplicable.
    (slot precio)) ;; Precio del accesorio


(deftemplate TarjetaCredito
    (slot banco)
    (slot grupo)
    (slot fecha-expiracion))

(deftemplate OrdenCompra
    (multislot productos)
    (slot cliente))

(deftemplate Cliente
    (slot nombre)
    (slot tipo)
    (slot segmento))

(deftemplate Vale
    (slot valor))

(deftemplate Segmento
    (slot nombre)
    (multislot listaClientes))
