package util;

import java.sql.Date;
import java.util.function.Function;

public class WrapperConverter {
	public static final Function<String, Integer> parseInt = s -> s != null ? Integer.parseInt(s) : null;
	public static final Function<String, Long> parseLong = s -> s != null ? Long.parseLong(s) : null;
	public static final Function<String, Date> parseDate = s -> s != null ? Date.valueOf(s) : null;
	public static final Function<String, Boolean> parseBoolean = s -> s != null ? Boolean.parseBoolean(s) : null;
	public static final Function<String, Double> parseDouble = s -> s != null ? Double.parseDouble(s) : null;

}
