package com.eazybytes.method.reference;

@FunctionalInterface
public interface ArithmeticOperation {

    public int performOperation(int a, int b);

    default int sum(){
       return 10+20;

    }

}
