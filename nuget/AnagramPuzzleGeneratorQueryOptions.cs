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
        /// Specific word to create anagram for
        /// Example: listen
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Number of puzzles (1-20)
        /// Example: 5
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Difficulty: easy, medium, hard
        /// Example: medium
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
