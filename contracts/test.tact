import "@stdlib/deploy";

message ForwardPayload{
    to: map<Address, Int as coins>;
}
contract Test with Deployable {

    receive(m: ForwardPayload){
//        let mmm: ForwardPayload = ForwardPayload.fromSlice(m.forwardPayloadCell);
        foreach(addr, amount in m.to){
            dump(addr);
            dump(amount);
        }
    }
}
