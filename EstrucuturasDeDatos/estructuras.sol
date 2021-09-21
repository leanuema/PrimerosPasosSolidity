pragma solidity >=0.5.4 <0.7.0;

contract estructuras {

    //cliente de una pagina de pago
    struct Cliente {
        uint id;
        string name;
        string dni;
        string email;
        uint phoneNumber;
        uint cardNumber;
        uint secretNumber;
    }
    Cliente clienteUno = Cliente(1, "leandro", "123214", "lean@uyde.com", 123142, 213123, 321);

    //amazon
    struct Producto {
        string name;
        uint prize;
    }
    Producto productoUno = Producto("laptop", 2342);

    //proyecto operativo de ong para ayudar en diversas causas
    struct Ong {
        address ongAddress;
        string name;
    }
    Ong caritas = Ong(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, "caritas");

    struct Causa {
        uint id;
        string name;
        uint prize;
    }
    Causa causa = Causa(1, "medicamentos", 123);
}
