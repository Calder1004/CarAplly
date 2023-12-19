package util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.function.Function;

public class WrapperConverter {
	// �޼��� ������ �̿��� ������ Ÿ�� ��ȯ //s �� �Ű� ���� string�� ��� s�� �ƴ� ��� null Ÿ��  ���� ��� s �Ű����� �����͸� Ÿ�Ժ�ȯ�� �ƴϸ� null ó����
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
