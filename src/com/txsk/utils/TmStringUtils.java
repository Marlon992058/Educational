package com.txsk.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TmStringUtils {

	public static String formatDate(Date date, String pattern) {
		if (date != null) {
			String dateString = new SimpleDateFormat(pattern).format(date);
			return dateString;
		} else {
			return "";
		}
	}
	public static boolean isEmpty(String str) {
		return str == null || str.length() == 0 || str.equals("")
				|| str.matches("\\s*");
	}
	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}
}
