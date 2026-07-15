declare module '@apiverve/anagrampuzzle' {
  export interface anagrampuzzleOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface anagrampuzzleResponse {
    status: string;
    error: string | null;
    data: AnagramPuzzleGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AnagramPuzzleGeneratorData {
      puzzles:    Puzzle[];
      count:      number | null;
      difficulty: null | string;
      html:       null | string;
      image:      Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }
  
  interface Puzzle {
      original:    null | string;
      scrambled:   null | string;
      anagrams:    (null | string)[];
      letterCount: number | null;
  }

  export default class anagrampuzzleWrapper {
    constructor(options: anagrampuzzleOptions);

    execute(callback: (error: any, data: anagrampuzzleResponse | null) => void): Promise<anagrampuzzleResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: anagrampuzzleResponse | null) => void): Promise<anagrampuzzleResponse>;
    execute(query?: Record<string, any>): Promise<anagrampuzzleResponse>;
  }
}
