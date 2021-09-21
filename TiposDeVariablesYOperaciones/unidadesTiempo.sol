pragma solidity >=0.5.4 <0.7.0;

contract tiempo {
    
    //unidades de tiempo
    
    //devuelve los segundos que tiene un minuto
    uint public unMinuto = 1 minutes;
    
    //devuelve el tiempo actual
    uint public tiempoActual = now;
    
    uint public dosHoras = 2 hours;
    uint public cincuentaDias = 50 days;
    uint public unaSemana = 1 weeks;
    
    function MasSegundos() public view returns(uint) {
        return now + 50 seconds;
    }
    
    function MasHoras() public view returns(uint) {
        return now + 1 hours;
    }
    
    function MasDias() public view returns(uint) {
        return now + 3 days;
    }
    
    function MasSemanas() public view returns(uint) {
        return now + 1 weeks;
    }
 
}