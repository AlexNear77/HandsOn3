(deffacts Segmentos
    (Segmento "Clientes frecuentes" (listaClientes (create$)))
    (Segmento "Clientes mayoristas" (listaClientes (create$)))
    (Segmento "Compradores de smartphones" (listaClientes (create$)))
    (Segmento "Clientes menudistas" (listaClientes (create$)))
    (Segmento "Clientes con historial de compras" (listaClientes (create$)))
)

(deffacts Smartphones
    (Smartphone (marca "Apple") (modelo "iPhone 13") (color "rojo") (precio 1000))
    (Smartphone (marca "Samsung") (modelo "Galaxy S21") (color "azul") (precio 900))
    (Smartphone (marca "Google") (modelo "Pixel 6") (color "negro") (precio 800))
    (Smartphone (marca "Huawei") (modelo "P40 Pro") (color "verde") (precio 850))
    (Smartphone (marca "OnePlus") (modelo "9 Pro") (color "plata") (precio 950)))


(deffacts Computadoras
    (Computadora (marca "Dell") (modelo "XPS 15") (color "plateado") (precio 1500))
    (Computadora (marca "HP") (modelo "Pavilion 14") (color "negro") (precio 900))
    (Computadora (marca "Apple") (modelo "MacBook Air") (color "gris") (precio 1300))
    (Computadora (marca "Lenovo") (modelo "ThinkPad X1 Carbon") (color "negro") (precio 1200))
    (Computadora (marca "Asus") (modelo "ZenBook Pro") (color "azul") (precio 1400)))

(deffacts Accesorios
    (Accesorio (tipo "Funda") (color "Negro") (marca "Spigen") (precio 20))
    (Accesorio (tipo "Mica") (color "Transparente") (marca "Belkin") (precio 15))
    (Accesorio (tipo "Auriculares") (color "Blanco") (marca "Sony") (precio 50))
    (Accesorio (tipo "Teclado") (color "Plateado") (marca "Logitech") (precio 30))
    (Accesorio (tipo "Cargador Inalámbrico") (color "Negro") (marca "Samsung") (precio 40)))

(deffacts TarjetasCredito
    (TarjetaCredito (banco "BBVA") (grupo "Visa") (fecha-expiracion "01-12-24"))
    (TarjetaCredito (banco "Santander") (grupo "Mastercard") (fecha-expiracion "05-10-23"))
    (TarjetaCredito (banco "Banamex") (grupo "Amex") (fecha-expiracion "15-09-25"))
    (TarjetaCredito (banco "HSBC") (grupo "Visa") (fecha-expiracion "03-08-24"))
    (TarjetaCredito (banco "Citibank") (grupo "Mastercard") (fecha-expiracion "22-11-23")))

(deffacts DatosClientes
    (Cliente (nombre-persona "Juan Perez") (tipo "mayorista") (segmento "Clientes mayoristas"))
    (Cliente (nombre-persona "María González") (tipo "menudista") (segmento "Clientes menudistas"))
    (Cliente (nombre-persona "Carlos Rodríguez") (tipo "Compradores de smartphones") (segmento "Clientes menudistas"))
    (Cliente (nombre-persona "Ana Martínez") (tipo "mayorista") (segmento "Clientes mayoristas"))
    (Cliente (nombre-persona "Luis García") (tipo "Clientes frecuentes") (segmento "Clientes mayoristas")))

(deffacts OrdenesClientes
    (OrdenCompra (productos (smartphone "iPhone 13" "rojo") (accesorio "Funda" "Negro")) (cliente "Juan Perez"))
    (OrdenCompra (productos (computadora "Dell XPS 15" "plateado") (accesorio "Auriculares" "Blanco")) (cliente "María González"))
    (OrdenCompra (productos (smartphone "Samsung Galaxy S21" "azul") (accesorio "Mica" "Transparente")) (cliente "Carlos Rodríguez"))
    (OrdenCompra (productos (computadora "MacBook Air" "gris") (accesorio "Teclado" "Plateado")) (cliente "Ana Martínez"))
    (OrdenCompra (productos (smartphone "iPhone 12" "negro") (accesorio "Funda" "Azul")) (cliente "Juan Perez"))
    (OrdenCompra (productos (computadora "HP Pavilion" "gris") (accesorio "Mouse" "Negro")) (cliente "María González"))
    (OrdenCompra (productos (smartphone "Samsung Galaxy S20" "blanco") (accesorio "Mica" "Transparente")) (cliente "Carlos Rodríguez"))
    (OrdenCompra (productos (computadora "Lenovo ThinkPad" "negro") (accesorio "Teclado" "Blanco")) (cliente "Ana Martínez"))
    (OrdenCompra (productos (smartphone "Google Pixel 5" "verde") (accesorio "Cargador Inalámbrico" "Negro")) (cliente "Luis García"))
    (OrdenCompra (productos (smartphone "Google Pixel 6" "negro") (accesorio "Cargador Inalámbrico" "Negro")) (cliente "Luis García")))

(deffacts Vales
    (Vale (valor 10))
    (Vale (valor 25))
    (Vale (valor 50))
    (Vale (valor 15)))