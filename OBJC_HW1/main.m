//
//  main.m
//  OBJC_HW1
//
//  Created by user on 14.02.2024.
//  Copyright © 2024 user. All rights reserved.

#import <Foundation/Foundation.h>
#import <math.h>

// 1. Решить квадратные уравнения:
// x^2 – 8x + 12 = 0,
// 12x^2 – 4x + 2 = 0,
// x^2 – 100x - 2 = 0
// (заменять константы в коде).
void solveQuadraticEquation(double a, double b, double c) {
    NSLog(@"\nZadacha 1");
    double discriminant = b*b - 4*a*c;
    
    if (discriminant > 0) {
        double x1 = (-b + sqrt(discriminant)) / (2*a);
        double x2 = (-b - sqrt(discriminant)) / (2*a);
        NSLog(@"x1 = %f, x2 = %f", x1, x2);
    } else if (discriminant == 0) {
        double x = -b / (2*a);
        NSLog(@"x = %f", x);
    } else {
        NSLog(@"No decisions");
    }
}

// 2. Создать программу, которая находит большее число среди 3-х чисел
int findMax(int num1, int num2, int num3) {
    NSLog(@"\nZadacha 1");
    
    int max = num1;
    
    if (num2 > max) {
        max = num2;
    }
    
    if (num3 > max) {
        max = num3;
    }
    
    return max;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1
        solveQuadraticEquation(1, -8, 12); // x^2 – 8x + 12 = 0
        solveQuadraticEquation(12, -4, 2); // 12x^2 – 4x + 2 = 0
        solveQuadraticEquation(1, -100, -2); // x^2 – 100x - 2 = 0
        
        //2
        int num1, num2, num3;
        
        printf("Введите три числа: ");
        scanf("%d %d %d", &num1, &num2, &num3);
        
        int maxNumber = findMax(num1, num2, num3);
        
        NSLog(@"Наибольшее число среди введенных: %d", maxNumber);    }
    return 0;
}
