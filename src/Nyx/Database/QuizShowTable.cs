using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Nyx.Server.Game.ConquerStructures;
using System.IO;

namespace Nyx.Server.Database
{
    public class QuizData
    {
        public static void Load(QuizShow qz)
        {
            var path = Path.Combine(AppContext.BaseDirectory, "database", "QuizShow.txt");
            if (!File.Exists(path))
            {
                Console.WriteLine($"[QuizData] Missing '{path}'. Quiz show disabled until the file is present.");
                qz.AllQuestions = 0;
                return;
            }

            string[] lines = File.ReadAllLines(path);
            for (uint x = 0; x < lines.Length; x++)
            {
                string[] ln = lines[x].Split('#');
                QuizShow.Question quest = new QuizShow.Question();
                quest.All = ln;
                for (byte i = 1; i < 5; i++)
                {
                    string[] right = ln[i].Split(':');
                    if (byte.Parse(right[1]) == 2)
                    {
                        quest.AnswerRight = i;
                    }
                    quest.All[i] = quest.All[i].Split(':')[0].ToString();
                }
                qz.Questions.Add(quest);
            }
            qz.AllQuestions = qz.Questions.Count;
        }
    }
}
