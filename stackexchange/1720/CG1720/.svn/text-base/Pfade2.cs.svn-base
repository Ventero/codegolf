using System;

namespace Pfade
{
    class Program
    {
        static void Main(string[] args)
        {
            var input = Console.In.ReadToEnd();
            //            var input = @"1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 5 5 5 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 5 5 5 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 5 5 5 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
            //1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1";

            var lines = input.Split("\r\n".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
            //Console.WriteLine(lines.Length);

            int[,] grid = new int[lines.Length, lines.Length];

            for (int i = 0; i < lines.Length; i++)
            {
                var line = lines[i].Split();
                //Console.WriteLine("." + line.Length + "<"+lines[i]+">");
                for (int j = 0; j < line.Length; j++)
                {
                    grid[i, j] = Convert.ToInt32(line[j]);
                }
            }

            //for (int i = 0; i < grid.GetLength(0); i++)
            //{
            //    for (int j = 0; j < grid.GetLength(1); j++)
            //    {
            //        Console.Write("{0,4}", grid[i, j]);
            //    }
            //    Console.WriteLine();
            //}

            int width = grid.GetLength(1);
            int height = grid.GetLength(0);

            int[,] sums = new int[grid.GetLength(0), grid.GetLength(1)];

            for (int x = 0; x < grid.GetLength(1); x++)
            {
                sums[0, x] = grid[0, x];
            }

            for (int y = 1; y < grid.GetLength(0); y++)
            {
                for (int x = 0; x < grid.GetLength(1); x++)
                {
                    if (x == 0)
                    {
                        sums[y, x] = grid[y, x] + Math.Max(sums[y - 1, x], sums[y - 1, x + 1]);
                    }
                    else if (x == width - 1)
                    {
                        sums[y, x] = grid[y, x] + Math.Max(sums[y - 1, x], sums[y - 1, x - 1]);
                    }
                    else
                    {
                        sums[y, x] = grid[y, x] + Math.Max(Math.Max(sums[y - 1, x], sums[y - 1, x - 1]), sums[y - 1, x + 1]);
                    }
                }
            }

            var maxY = sums[height - 1, 0];
            for (int i = 0; i < width; i++)
            {
                maxY = Math.Max(maxY, sums[height - 1, i]);
            }

            for (int x = 0; x < width; x++)
            {
                for (int y = 0; y < height; y++)
                {
                    sums[y, x] = 0;
                }
            }

            for (int x = 0; x < grid.GetLength(0); x++)
            {
                sums[x, 0] = grid[x, 0];
            }

            for (int x = 1; x < grid.GetLength(0); x++)
            {
                for (int y = 0; y < grid.GetLength(1); y++)
                {
                    if (y == 0)
                    {
                        sums[y, x] = grid[y, x] + Math.Max(sums[y, x - 1], sums[y + 1, x - 1]);
                    }
                    else if (y == height - 1)
                    {
                        sums[y, x] = grid[y, x] + Math.Max(sums[y, x - 1], sums[y - 1, x - 1]);
                    }
                    else
                    {
                        sums[y, x] = grid[y, x] + Math.Max(Math.Max(sums[y, x - 1], sums[y - 1, x - 1]), sums[y + 1, x - 1]);
                    }
                }
            }

            var maxX = sums[height - 1, 0];
            for (int i = 0; i < height; i++)
            {
                maxX = Math.Max(maxX, sums[i, width - 1]);
            }

//            print(sums);
//            Console.WriteLine();
            Console.WriteLine("{0} {1}", maxX, maxY, Math.Round((double)maxX / maxY, 3, MidpointRounding.AwayFromZero));
//            Console.ReadLine();
        }

        private static void print(int[,] grid)
        {
            for (int i = 0; i < grid.GetLength(0); i++)
            {
                for (int j = 0; j < grid.GetLength(1); j++)
                {
                    Console.Write("{0,3} ", grid[i, j]);
                }
                Console.WriteLine();
            }

        }
    }
}
