package util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.function.Function;

public class WrapperConverter {
	// 메서드 참조를 이용한 데이터 타입 변환 //s 가 매개 변수 string의 약어 s가 아닐 경우 null 타입  맞을 경우 s 매개변수 데이터를 타입변환함 아니면 null 처리함
	public static final Function<String, Integer> parseInt = s -> s != null ? Integer.parseInt(s) : null;
	public static final Function<String, Long> parseLong = s -> s != null ? Long.parseLong(s) : null;
	public static final Function<String, Date> parseDate = s -> s != null ? Date.valueOf(s) : null;
	public static final Function<String, Boolean> parseBoolean = s -> s != null ? Boolean.parseBoolean(s) : null;
	public static final Function<String, Double> parseDouble = s -> s != null ? Double.parseDouble(s) : null;
	

    public static final Function<String, java.util.Date> parseUtilDate = s -> {
        try {
            if (s != null) {
                return new SimpleDateFormat("yyyy-MM-dd").parse(s);
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    };

    public static final Function<String, java.sql.Date> parseSqlDate = s -> {
        try {
            java.util.Date utilDate = s != null ? new SimpleDateFormat("yyyy-MM-dd").parse(s) : null;
            return utilDate != null ? new java.sql.Date(utilDate.getTime()) : null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    };
}
