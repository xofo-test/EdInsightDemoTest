using System;
namespace Edinsight
{
    public partial class StandardsMastery : System.Web.UI.Page
    {
        public class Row
        {
            public string Code;
            public string Description;
            public int Average;
            public int[] Scores;
            public bool Squashed;
        }

        protected static readonly string[] Students = { "Collier,Ty", "Nguyen,Pauline" };

        protected static readonly Row[] Rows =
        {
            R("SC.6.N.1.1", "Define a problem from the sixth grade curriculum, use appropriate reference materials to support scientific understanding, plan and carry out scientific investigation of various types, such as systematic observations or experiments, identify variables, collect and organize data, interpret data in charts, tables, and graphics, analyze information, make predictions, and defend conclusions.", 33, 67, 0),
            R("SC.6.N.1.2", "Explain why scientific investigations should be replicable.", 33, 0, 67),
            R("SC.6.N.1.3", "Explain the difference between an experiment and other types of scientific investigation, and explain the relative benefits and limitations of each.", 83, 67, 100),
            R("SC.6.N.1.4", "Discuss, compare, and negotiate methods used, results obtained, and explanations among groups of students conducting the same investigation.", 50, 33, 67),
            R("SC.6.N.2.2", "Explain that scientific knowledge is durable because it is open to change as new evidence or interpretations are encountered.", 50, 67, 33),
            R("SC.6.N.3.1", "Recognize and explain that a scientific theory is a well-supported and widely accepted explanation of nature and is not simply a claim posed by an individual. Thus, the use of the term theory in science is very different than how it is used in everyday life.", 67, 67, 67),
            R("SC.6.P.13.1", "Investigate and describe types of forces including contact forces and forces acting at a distance, such as electrical, magnetic, and gravitational.", 75, 100, 50),
            R("SC.6.P.13.2", "Explore the Law of Gravity by recognizing that every object exerts gravitational force on every other object and that the force depends on how much mass the objects have and how far apart they are.", 100, 100, 100),
            R("SC.6.P.13.3", "Investigate and describe that an unbalanced force acting on an object changes its speed, or direction of motion, or both.", 67, 67, 67),
            R("SS.6.G.1.1", "Use latitude and longitude coordinates to understand the relationship between people and places on the Earth.", 17, 33, 0),
            R("SS.6.W.1.2", "Identify terms (decade, century, epoch, era, millennium, BC/BCE, AD/CE) and designations of time periods.", 88, 100, 75),
            new Row { Code = "SS.6.W.1.3", Description = "Interpret primary and secondary sources.", Average = 62, Scores = new[] { 75, 50 }, Squashed = true },
            R("SS.6.W.2.1", "Compare the lifestyles of hunter-gatherers with those of settlers of early agricultural communities.", 50, 100, 0),
            R("SS.6.W.2.2", "Describe how the developments of agriculture and metallurgy related to settlement, population growth, and the emergence of civilization.", 71, 86, 57),
            R("SS.6.W.2.4", "Compare the economic, political, social, and religious institutions of ancient river civilizations.", 25, 0, 50),
            R("SS.6.W.2.7", "Summarize the important achievements of Mesopotamian civilization.", 50, 50, 50),
            R("MA.6.NSO.2.1", "Multiply and divide positive multi-digit numbers with decimals to the thousandths, including using a standard algorithm with procedural fluency.", 38, 25, 50),
            R("MA.6.NSO.2.2", "Extend previous understanding of multiplication and division to compute products and quotients of positive fractions by positive fractions, including mixed numbers, with procedural fluency.", 0, 0, 0),
            R("MA.6.NSO.2.3", "Solve multi-step real-world problems involving any of the four operations with positive multi-digit decimals or positive fractions, including mixed numbers.", 25, 25, 25),
            R("MA.6.NSO.3.1", "Given a mathematical or real-world context, find the greatest common factor and least common multiple of two whole numbers.", 60, 60, 60),
            R("MA.6.NSO.3.2", "Rewrite the sum of two composite whole numbers having a common factor, as a common factor multiplied by the sum of two whole numbers.", 25, 25, 25),
            R("MA.6.NSO.3.5", "Rewrite positive rational numbers in different but equivalent forms including fractions, terminating decimals and percentages.", 38, 25, 50),
            R("ELA.6.R.1.1", "Analyze how the interaction between characters contributes to the development of a plot in a literary text.", 67, 33, 100),
            R("ELA.6.R.1.2", "Analyze the development of stated or implied theme(s) throughout a literary text.", 25, 0, 50),
            R("ELA.6.R.1.3", "Explain the influence of multiple narrators and/or shifts in point of view in a literary text.", 75, 50, 100),
            R("ELA.6.R.1.4", "Describe the impact of various poetic forms on meaning and style.", 25, 50, 0),
            R("ELA.6.R.2.1", "Explain how individual text sections and/or features convey meaning in texts.", 75, 50, 100),
            R("ELA.6.R.2.2", "Analyze the central idea(s), implied or explicit, and its development throughout a text.", 50, 67, 33),
            R("ELA.6.R.2.3", "Analyze authors' purpose(s) in multiple accounts of the same event or topic.", 50, 50, 50),
            R("ELA.6.R.2.4", "Track the development of an argument, identifying the types of reasoning used.", 25, 0, 50),
            R("ELA.6.R.3.1", "Explain how figurative language contributes to tone and meaning in text(s).", 67, 67, 67),
            R("ELA.6.R.3.3", "Compare and contrast how authors from different time periods address the same or related topics.", 50, 0, 100),
            R("ELA.6.R.3.4", "Identify rhetorical appeals in a text.", 50, 50, 50),
            R("ELA.6.V.1.2", "Apply knowledge of Greek and Latin roots and affixes to determine meanings of words and phrases in grade-level content.", 75, 100, 50),
            R("ELA.6.V.1.3", "Apply knowledge of context clues, figurative language, word relationships, reference materials, and/or background knowledge to determine the connotative and denotative meaning of words and phrases, appropriate to grade level.", 50, 67, 33),
        };

        private static Row R(string code, string description, int average, params int[] scores)
        {
            return new Row { Code = code, Description = description, Average = average, Scores = scores };
        }

        /// <summary>The level band for a score, by the report's cutoffs: 75, 50 and 0.</summary>
        protected static string Level(int score)
        {
            return score >= 75 ? "lv-green" : score >= 50 ? "lv-yellow" : "lv-red";
        }

        protected void Page_Load(object sender, EventArgs e) { }
    }
}
