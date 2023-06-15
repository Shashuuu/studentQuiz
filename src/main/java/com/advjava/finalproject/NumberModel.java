package com.advjava.finalproject;

//Model class to generate numbers for performing mathematical operations.
public class NumberModel {
    public int[] number_one = new int[10];
    public int[] number_two = new int[10];


    public NumberModel() {
    }

//    method to generate new random numbers when called.
    public void refresh() {
        for(int i = 0; i < 10; i++) {
            number_one[i] = (int)(Math.random() * 10 + 10);
            number_two[i] = (int)(Math.random() * 10 + 4);
        }
    }
}
