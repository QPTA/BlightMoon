package com.darkfantasy.util;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;

import lombok.experimental.UtilityClass;

@UtilityClass
public class TimeUtil {
    public static final ZoneId VN_ZONE = ZoneId.of("Asia/Ho_Chi_Minh");

    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public static String formatInstant(Instant instant) {
        return instant.atZone(VN_ZONE)
                .format(DATE_TIME_FORMATTER);
    }

    public static LocalDateTime toLocalDateTime(Instant instant) {
        return LocalDateTime.ofInstant(
                instant,
                VN_ZONE);
    }

    public static Instant toInstant(LocalDateTime localDateTime) {
        return localDateTime.atZone(VN_ZONE)
                .toInstant();
    }
}
