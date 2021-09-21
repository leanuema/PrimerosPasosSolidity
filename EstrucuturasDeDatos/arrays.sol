pragma solidity >=0.5.4 <0.7.0;

contract arrays {

    //array de longitud fija
    uint[5] public arrayDeEnteros = [1, 2, 3, 4, 5];
    uint[15] arrayDeEnterosQuince;
    string[7] arraySiete;

    //array dinamico
    uint[] public arrayEnteroDinamico;

    struct Persona {
        string name;
        uint age;
    }

    Persona[] public personaList;

    //funcion push agrega un valor al ultimo lugar del array
    function modificarArray(uint _number, string memory name, uint age) public {
        arrayEnteroDinamico.push(_number);
        personaList.push(Persona(name, age));
        arrayDeEnteros[3] = 56;
    }
}
