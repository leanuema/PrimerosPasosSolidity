pragma solidity >=0.5.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Required {

    function password(string memory _pass) public pure returns (string memory) {
        require(keccak256(abi.encodePacked(_pass)) == keccak256(abi.encodePacked("1234")), "Contrasenia incorrecta");
        return "Contrasenia correcta";
    }

    uint public cartera = 0;
    uint tiempo = 0;

    function pagar(uint cantidadAPagar) public returns (uint) {
        require(now > tiempo + 5 seconds, "Aun no se puede pagar");
        tiempo = now;
        cartera = cartera + cantidadAPagar;
        return cartera;
    }

    string[] nombres;

    function nuevoNombre(string memory nombre) public {
        for (uint i = 0; i < nombres.length; i ++) {
            require(keccak256(abi.encodePacked(nombre)) != keccak256(abi.encodePacked(nombres[i]))
            , "ya esta en la lista");
            nombres.push(nombre);
        }
    }

}
