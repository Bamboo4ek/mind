using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace S
{
    public static class Square
    {
        private static double Scircle(int[] X)
        {
            double S;
            S = Math.PI * X[0] * X[0];
            return S;
        }

        private static double Striangle(int[] X)
        {
            double S, P;
            P = (X[0] + X[1] + X[2]) / 2;
            S = Math.Sqrt(P * (P - X[0]) * (P - X[1]) * (P - X[2]));
            return S;
        }

        private static bool rectangular(int[] X)
        {
            bool f = false;
            Array.Sort(X);
            if (X[2] * X[2] == X[1] * X[1] + X[0] * X[0])
            {
                f = true;
            }
            return f;
        }
        public static void input()
        {
            Console.WriteLine("Введите количество элементов:");
            int n;
            double S;
            n = Convert.ToInt32(Console.ReadLine());
            int[] X = new int[n];
            Console.WriteLine("Введите элементы:");
            for (int i = 0; i < n; i++)
            {
                X[i] = Convert.ToInt32(Console.ReadLine());
            }
            Console.WriteLine();
            if (n == 1)
            {
                S = (Scircle(X));
                Console.WriteLine("Площадь круга");
                Console.WriteLine(S);
            }
            else if (n == 3)
            {
                S = (Striangle(X));
                Console.WriteLine("Площадь треугольника");
                Console.WriteLine(S);
                if (rectangular(X))
                {
                    Console.WriteLine("Треугольник прямоугольный");
                }
            }
        }
    }
    
}

