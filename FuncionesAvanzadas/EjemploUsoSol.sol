pragma solidity >=0.5.4 <0.7.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";

contract EjemploUsoSol {

    using SafeMath for uint;

    function suma(uint _a, uint _b) public pure returns (uint){
        return _a.add(_b);
    }

    function resta(uint _a, uint _b) public pure returns (uint){
        return _a.sub(_b);
    }

    function multiplicacion(uint _a, uint _b) public pure returns (uint){
        return _a.mul(_b);
    }
}
