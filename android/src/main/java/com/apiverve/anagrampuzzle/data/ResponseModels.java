// Converter.java

// To use this code, add the following Maven dependency to your project:
//
//
//     com.fasterxml.jackson.core     : jackson-databind          : 2.9.0
//     com.fasterxml.jackson.datatype : jackson-datatype-jsr310   : 2.9.0
//
// Import this package:
//
//     import com.apiverve.data.Converter;
//
// Then you can deserialize a JSON string with
//
//     AnagramPuzzleGeneratorData data = Converter.fromJsonString(jsonString);

package com.apiverve.anagrampuzzle.data;

import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.util.*;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;

public class Converter {
    // Date-time helpers

    private static final DateTimeFormatter DATE_TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_INSTANT)
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ssX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetDateTime parseDateTimeString(String str) {
        return ZonedDateTime.from(Converter.DATE_TIME_FORMATTER.parse(str)).toOffsetDateTime();
    }

    private static final DateTimeFormatter TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_TIME)
            .parseDefaulting(ChronoField.YEAR, 2020)
            .parseDefaulting(ChronoField.MONTH_OF_YEAR, 1)
            .parseDefaulting(ChronoField.DAY_OF_MONTH, 1)
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetTime parseTimeString(String str) {
        return ZonedDateTime.from(Converter.TIME_FORMATTER.parse(str)).toOffsetDateTime().toOffsetTime();
    }
    // Serialize/deserialize helpers

    public static AnagramPuzzleGeneratorData fromJsonString(String json) throws IOException {
        return getObjectReader().readValue(json);
    }

    public static String toJsonString(AnagramPuzzleGeneratorData obj) throws JsonProcessingException {
        return getObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader reader;
    private static ObjectWriter writer;

    private static void instantiateMapper() {
        ObjectMapper mapper = new ObjectMapper();
        mapper.findAndRegisterModules();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        SimpleModule module = new SimpleModule();
        module.addDeserializer(OffsetDateTime.class, new JsonDeserializer<OffsetDateTime>() {
            @Override
            public OffsetDateTime deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
                String value = jsonParser.getText();
                return Converter.parseDateTimeString(value);
            }
        });
        mapper.registerModule(module);
        reader = mapper.readerFor(AnagramPuzzleGeneratorData.class);
        writer = mapper.writerFor(AnagramPuzzleGeneratorData.class);
    }

    private static ObjectReader getObjectReader() {
        if (reader == null) instantiateMapper();
        return reader;
    }

    private static ObjectWriter getObjectWriter() {
        if (writer == null) instantiateMapper();
        return writer;
    }
}

// AnagramPuzzleGeneratorData.java

package com.apiverve.anagrampuzzle.data;

import com.fasterxml.jackson.annotation.*;

public class AnagramPuzzleGeneratorData {
    private Puzzle[] puzzles;
    private long count;
    private String difficulty;
    private String html;

    @JsonProperty("puzzles")
    public Puzzle[] getPuzzles() { return puzzles; }
    @JsonProperty("puzzles")
    public void setPuzzles(Puzzle[] value) { this.puzzles = value; }

    @JsonProperty("count")
    public long getCount() { return count; }
    @JsonProperty("count")
    public void setCount(long value) { this.count = value; }

    @JsonProperty("difficulty")
    public String getDifficulty() { return difficulty; }
    @JsonProperty("difficulty")
    public void setDifficulty(String value) { this.difficulty = value; }

    @JsonProperty("html")
    public String getHTML() { return html; }
    @JsonProperty("html")
    public void setHTML(String value) { this.html = value; }
}

// Puzzle.java

package com.apiverve.anagrampuzzle.data;

import com.fasterxml.jackson.annotation.*;

public class Puzzle {
    private String original;
    private String scrambled;
    private String[] anagrams;
    private long letterCount;
    private String hint;

    @JsonProperty("original")
    public String getOriginal() { return original; }
    @JsonProperty("original")
    public void setOriginal(String value) { this.original = value; }

    @JsonProperty("scrambled")
    public String getScrambled() { return scrambled; }
    @JsonProperty("scrambled")
    public void setScrambled(String value) { this.scrambled = value; }

    @JsonProperty("anagrams")
    public String[] getAnagrams() { return anagrams; }
    @JsonProperty("anagrams")
    public void setAnagrams(String[] value) { this.anagrams = value; }

    @JsonProperty("letterCount")
    public long getLetterCount() { return letterCount; }
    @JsonProperty("letterCount")
    public void setLetterCount(long value) { this.letterCount = value; }

    @JsonProperty("hint")
    public String getHint() { return hint; }
    @JsonProperty("hint")
    public void setHint(String value) { this.hint = value; }
}