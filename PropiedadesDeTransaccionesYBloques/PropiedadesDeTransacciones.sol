pragma solidity >=0.5.4 <0.7.0;

contract funciones_globales {
    
    //Funcion msg.sender
    function MsgSender() public view returns(address) {
        return msg.sender;
    }
    
    //Funcion block.coinbase
    function BlockCoinbase() public view returns(address) {
        return block.coinbase;
    }
    
    //Funcion block.difficulty
    function blockDifficulty() public view returns(uint) {
        return block.difficulty;
    }
    
    //Funcion now
    function Now() public view returns(uint) {
        return now;
    }

    //Funcion block.number
    function blockNumber() public view returns(uint) {
        return block.number;
    }
    
    //Funcion msg.sig
    function MsgSig() public view returns(bytes4) {
        return msg.sig;
    }
    
    //Funcion tx.gasprice
    function TxGasPrice() public view returns(uint) {
        return tx.gasprice;
    }
}