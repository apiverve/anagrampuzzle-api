declare module '@apiverve/anagrampuzzle' {
  export interface anagrampuzzleOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface anagrampuzzleResponse {
    status: string;
    error: string | null;
    data: AnagramPuzzleGeneratorData;
    code?: number;
  }


  interface AnagramPuzzleGeneratorData {
      puzzles:    Puzzle[];
      count:      number;
      difficulty: string;
      html:       string;
  }
  
  interface Puzzle {
      original:    string;
      scrambled:   string;
      anagrams:    string[];
      letterCount: number;
      hint:        string;
  }

  export default class anagrampuzzleWrapper {
    constructor(options: anagrampuzzleOptions);

    execute(callback: (error: any, data: anagrampuzzleResponse | null) => void): Promise<anagrampuzzleResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: anagrampuzzleResponse | null) => void): Promise<anagrampuzzleResponse>;
    execute(query?: Record<string, any>): Promise<anagrampuzzleResponse>;
  }
}
