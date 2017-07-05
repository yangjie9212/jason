package com.utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;

public class MD5Encrypt {

  public MD5Encrypt() {

  }

  private final static String[] hexDigits = {
      "0", "1", "2", "3", "4", "5", "6", "7",
      "8", "9", "a", "b", "c", "d", "e", "f"};

  /**
   * 转换字节数组为16进制字串
   * @param b 字节数组
   * @return 16进制字串
   * http://www.jq-school.com
   */
  public static String byteArrayToString(byte[] b) {
    StringBuffer resultSb = new StringBuffer();
    for (int i = 0; i < b.length; i++) {
      resultSb.append(byteToHexString(b[i]));//若使用本函数转换则可得到加密结果的16进制表示，即数字字母混合的形式
//      resultSb.append(byteToNumString(b[i]));//使用本函数则返回加密结果的10进制数字字串，即全数字形式
    }
    return resultSb.toString();
  }
/*
  private static String byteToNumString(byte b) {

    int _b = b;
    if (_b < 0) {
      _b = 256 + _b;
    }

    return String.valueOf(_b);
  }
*/
  private static String byteToHexString(byte b) {
    int n = b;
    if (n < 0) {
      n = 256 + n;
    }
    int d1 = n / 16;
    int d2 = n % 16;
    return hexDigits[d1] + hexDigits[d2];
  }

  public static String MD5Encode(String origin) {
    String resultString = null;

    try {
      resultString = new String(origin);
      MessageDigest md = MessageDigest.getInstance("MD5");
      resultString = byteArrayToString(md.digest(resultString.getBytes()));
    }
    catch (Exception ex) {
    	ex.printStackTrace();
    }
    return resultString;
  }
  
  public static String reCodePassword(String password){
	  //MD5Encrypt md5Encrypt=new MD5Encrypt();
	  StringBuffer sb = new StringBuffer("paul");
		sb.append(password);
		sb.append("ye");
		byte[] getChange = sb.toString().getBytes();
		for(int i=0;i<getChange.length;i++){
			getChange[i]^=0x16;
		}
		 String md5Password= new String(getChange);
		String newMd5Password=MD5Encrypt.MD5Encode(md5Password);
	  return newMd5Password;
  }
  public static String checksum (String file) throws IOException {
		FileInputStream fis = new FileInputStream(new File(file));
		return org.apache.commons.codec.digest.DigestUtils.md5Hex(fis);
	}
  
  /**
   * 
   * @param args
   */
  public static void main(String[] args) {
//    MD5Encrypt md5encrypt = new MD5Encrypt();
	  StringBuffer sb = new StringBuffer("paul");
	  String p = "123456";
	  sb.append(p);
	  sb.append("ye");
	  System.out.println(sb);
	  byte[] a = sb.toString().getBytes();
	  for(int i = 0; i < a.length; i++){
		  a[i] ^= 0x16;
	  }
	  String p1 = new String(a);
	  System.err.println(p1);
    System.out.println(MD5Encode(p1));
    String p2 = new String("paul123456ye");
    System.out.println(MD5Encode(p2));
  }
}

