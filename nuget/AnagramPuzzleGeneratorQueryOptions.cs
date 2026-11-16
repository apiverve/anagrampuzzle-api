using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AnagramPuzzleGenerator
{
    /// <summary>
    /// Query options for the Anagram Puzzle Generator API
    /// </summary>
    public class AnagramPuzzleGeneratorQueryOptions
    {
        /// <summary>
        /// Specific word to create anagram for (letters a-z only; accents are folded, digits, spaces and symbols return 400)
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Number of puzzles
        /// </summary>
        [JsonProperty("count")]
        public int? Count { get; set; }

        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }

        /// <summary>
        /// Set to true to generate a downloadable puzzle image
        /// </summary>
        [JsonProperty("image")]
        public bool? Image { get; set; }
    }
}
