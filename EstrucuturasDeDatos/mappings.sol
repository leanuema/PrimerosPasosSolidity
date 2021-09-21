pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract mappings {

    //mapping que se pueda elegir un numero
    mapping(address => uint) public elegirNumero;

    function setElegirNumero(uint _k) public {
        elegirNumero[msg.sender] = _k;
    }

    function getElegirNumero() public view returns(uint) {
        return elegirNumero[msg.sender];
    }

    //mapping que relaciona el nombre de una persona con la cantidad de dinero
    mapping(string => uint) cantidadDeDinero;

    function setCantidadDeDinero(string memory nombre, uint cantidad) public {
        cantidadDeDinero[nombre] = cantidad;
    }

    function getCantidadDeDinero(string memory nombre) public view returns(uint) {
        return cantidadDeDinero[nombre];
    }

    //declaramos mapping con struct
    struct Persona {
        string name;
        uint edad;
    }
    mapping(uint => Persona) dniPersona;

    function setDniPersona(uint dni, string memory name, uint edad) public {
        dniPersona[dni] = Persona(name, edad);
    }

    function getDniPersona(uint dni) public view returns(Persona memory) {
        return dniPersona[dni];
    }
}
