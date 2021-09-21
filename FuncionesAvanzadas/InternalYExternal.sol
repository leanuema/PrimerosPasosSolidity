pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Comida {

    struct Plato {
        string nombre;
        string ingrediente;
        uint tiempoCoccion;
    }

    Plato[] platoList;
    mapping(string => string) ingredienteMapping;

    function nuevoPlato(string memory nombre, string memory ingrediente, uint tiempo) internal {
        platoList.push(Plato(nombre, ingrediente, tiempo));
        ingredienteMapping[nombre] = ingrediente;
    }

    function buscarIngrediente(string memory nombre) internal view returns (string memory){
        return ingredienteMapping[nombre];
    }
}

contract Sandwich is Comida {

    function crearSandich(string memory ingredientes, uint tiempo) external {
        nuevoPlato("sandwich", ingredientes, tiempo);
    }

    function verIngredientes() external view returns (string memory) {
        return buscarIngrediente("sandwich");
    }
}