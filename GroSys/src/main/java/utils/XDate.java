/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import com.grosys.help.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Sang
 */
public class XDate {
    static SimpleDateFormat formatter = new SimpleDateFormat();
    public static Date toDate(String date, String pattern) {
        try {
            formatter.applyPattern(pattern);
            return formatter.parse(date);
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }
    public static String toString(Date date, String pattern) {
        formatter.applyPattern(pattern);
        return formatter.format(date);
    }
    public static Date addDays(Date date, long days)  {
        date.setTime(date.getTime() + days * 24 * 60 * 60 * 1000);
        return date;
    }
}
