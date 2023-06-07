using System;

class Program
{
    static void Main()
    {
        Random random = new Random();

        Console.WriteLine("10 random numbers:");

        for (int i = 0; i < 10; i++)
        {
            int randomNumber = random.Next(0, 100); // Generates a random number between 0 and 100.
            Console.WriteLine(randomNumber);
        }
    }
}
