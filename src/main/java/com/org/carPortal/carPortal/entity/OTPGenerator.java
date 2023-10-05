package com.org.carPortal.carPortal.entity;

import org.apache.commons.lang3.RandomStringUtils;

public class OTPGenerator {
	public static String generateOTP(int length) {
        return RandomStringUtils.randomNumeric(length);
    }
}
