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
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Number of puzzles
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
