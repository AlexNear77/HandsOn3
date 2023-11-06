(deffacts Hechos-Smartphones
    (Smartphone (producto-id 1) (marca "Samsung") (modelo "Galaxy S21") (color "Negro") (precio 799.99))
    (Smartphone (producto-id 2) (marca "Apple") (modelo "iPhone 13") (color "Plata") (precio 899.99))
    (Smartphone (producto-id 3) (marca "Google") (modelo "Pixel 6") (color "Blanco") (precio 749.99))
    (Smartphone (producto-id 4) (marca "OnePlus") (modelo "9 Pro") (color "Azul") (precio 849.99))
    (Smartphone (producto-id 5) (marca "Xiaomi") (modelo "Mi 11") (color "Verde") (precio 699.99))
    (Smartphone (producto-id 6) (marca "Sony") (modelo "Xperia 1 III") (color "Gris") (precio 899.99))
    (Smartphone (producto-id 7) (marca "Huawei") (modelo "Mate 40 Pro") (color "Dorado") (precio 749.99))
)

(deffacts Hechos-Computadoras
    (Computadora (producto-id 1) (marca "Dell") (modelo "Inspiron 15") (color "Plateado") (precio 699.99))
    (Computadora (producto-id 2) (marca "HP") (modelo "Pavilion x360") (color "Gris") (precio 799.99))
    (Computadora (producto-id 3) (marca "Lenovo") (modelo "ThinkPad X1 Carbon") (color "Negro") (precio 1199.99))
    (Computadora (producto-id 4) (marca "Asus") (modelo "ROG Strix G15") (color "Negro/Rojo") (precio 1499.99))
    (Computadora (producto-id 5) (marca "Acer") (modelo "Swift 3") (color "Azul") (precio 599.99))
    (Computadora (producto-id 6) (marca "Microsoft") (modelo "Surface Laptop 4") (color "Plata") (precio 1299.99))
    (Computadora (producto-id 7) (marca "Apple") (modelo "MacBook Air") (color "Oro Rosa") (precio 999.99))
)

(deffacts Hechos-Accesorios
    (Accesorio (producto-id 1) (tipo "Funda") (color "Negro") (marca "Spigen") (precio 19.99))
    (Accesorio (producto-id 2) (tipo "Mica") (color "Transparente") (marca "Belkin") (precio 9.99))
    (Accesorio (producto-id 3) (tipo "Auriculares") (color "Blanco") (marca "Apple") (precio 129.99))
    (Accesorio (producto-id 4) (tipo "Teclado") (color "Negro") (marca "Logitech") (precio 49.99))
    (Accesorio (producto-id 5) (tipo "Mouse") (color "Rojo") (marca "Razer") (precio 39.99))
    (Accesorio (producto-id 6) (tipo "Cargador inalámbrico") (color "Blanco") (marca "Samsung") (precio 29.99))
    (Accesorio (producto-id 7) (tipo "Batería externa") (color "Azul") (marca "Anker") (precio 34.99))
)

(deffacts Hechos-TarjetasCredito
    (TarjetaCredito (banco "BBVA") (grupo "Visa") (numero-tarjeta "1234-5678-9012-3456") (fecha-expiracion "12/25"))
    (TarjetaCredito (banco "Santander") (grupo "Mastercard") (numero-tarjeta "9876-5432-1098-7654") (fecha-expiracion "08/24"))
    (TarjetaCredito (banco "HSBC") (grupo "Visa") (numero-tarjeta "2468-1357-8642-9753") (fecha-expiracion "06/23"))
    (TarjetaCredito (banco "Banamex") (grupo "Mastercard") (numero-tarjeta "5555-4444-3333-2222") (fecha-expiracion "10/26"))
    (TarjetaCredito (banco "Citibank") (grupo "Visa") (numero-tarjeta "1122-3344-5566-7788") (fecha-expiracion "04/22"))
)

(deffacts Hechos-Clientes
    (Cliente (cliente-id 1) (nombre-persona "Juan Pérez")  )
    (Cliente (cliente-id 2) (nombre-persona "María González")  )
    (Cliente (cliente-id 3) (nombre-persona "Empresa XYZ") )
    (Cliente (cliente-id 4) (nombre-persona "Luis Rodríguez") )
    (Cliente (cliente-id 5) (nombre-persona "Ana Martínez") )
    (Cliente (cliente-id 6) (nombre-persona "Alex Gomez") )
)

(deffacts Hechos-OrdenesCompra
    (OrdenCompra (orden-id 1) (producto-id 1) (cantidad 2) (numero-tarjeta "1234-5678-9012-3456") (cliente-id 1))
    (OrdenCompra (orden-id 2) (producto-id 3) (cantidad 1) (numero-tarjeta "5555-4444-3333-2222") (cliente-id 4))
    (OrdenCompra (orden-id 3) (producto-id 5) (cantidad 3) (numero-tarjeta "1122-3344-5566-7788") (cliente-id 5))
    (OrdenCompra (orden-id 4) (producto-id 2) (cantidad 2) (numero-tarjeta "9876-5432-1098-7654") (cliente-id 2))
    (OrdenCompra (orden-id 5) (producto-id 4) (cantidad 1) (numero-tarjeta "2468-1357-8642-9753") (cliente-id 3))
    (OrdenCompra (orden-id 6) (producto-id 6) (cantidad 2) (numero-tarjeta "1234-5678-9012-3456") (cliente-id 1))
    (OrdenCompra (orden-id 7) (producto-id 7) (cantidad 1) (numero-tarjeta "5555-4444-3333-2222") (cliente-id 4))
    (OrdenCompra (orden-id 8) (producto-id 7) (cantidad 1) (numero-tarjeta "5555-4444-3333-2222") (cliente-id 4))
)

(deffacts Hechos-Vales
    (Vale (cliente-id 1) (grupo "Visa") (mes 10) (ano 2023) (valor 50))
    (Vale (cliente-id 2) (grupo "Mastercard") (mes 11) (ano 2023) (valor 30))
    (Vale (cliente-id 3) (grupo "Visa") (mes 12) (ano 2023) (valor 25))
    (Vale (cliente-id 4) (grupo "Mastercard") (mes 10) (ano 2023) (valor 40))
    (Vale (cliente-id 5) (grupo "Visa") (mes 11) (ano 2023) (valor 35))
    (Vale (cliente-id 1) (grupo "Visa") (mes 12) (ano 2023) (valor 60))
    (Vale (cliente-id 3) (grupo "Visa") (mes 10) (ano 2023) (valor 45))
)