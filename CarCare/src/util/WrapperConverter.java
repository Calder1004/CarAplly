package util;

import java.sql.Date;
import java.util.function.Function;

public class WrapperConverter {
    public static final Function<String, Integer> parseInt = Integer::parseInt;
    public static final Function<String, Long> parseLong = Long::parseLong;
    public static final Function<String, Date> parseDate = Date::valueOf;
    public static final Function<String, Boolean> parseBoolean = Boolean::parseBoolean;
    public static final Function<String, Double> parseDouble = Double::parseDouble;
}
