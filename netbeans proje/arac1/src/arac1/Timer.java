/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arac1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
/**
 *Kronometre vazifesi gören bu sınıf geçen süreyi nanosaniye, milisaniye ya da saniye cinsinden hesaplar.
 * @author Kübra
 */
public class Timer {
     private static Connection baglan;
    private static long start;
    private static long end;
    private static boolean started;
 
    /**
     * Kronometre durmuş vaziyette mi?
     */
    private static boolean isStopped() {
        return !started;
    }
 
    /**
     * Kronometre başlamış vaziyette mi?
     * @return 
     */
    private static boolean isStarted() {
        return started;
    }
 
    /**
     * Kronometreyi başlatır. Eğer zaten başlamış durumda ise RunTimeException hatası atar.
     */
    public static void start() {
        if (isStopped()) {
            startTimer();
        } else {
            throw new RuntimeException("Hata: Kronometre (Timer) zaten başlatılmış durumda!!!\n");
        }
    }
 
    private static void startTimer() {
        start = System.nanoTime();
        started = true;
    }
 
    /**
     * Kronometreyi durdurur. Eğer zaten başlamamış ise RunTimeException hatası atar.
     */
    public static void stop() {
        if (isStarted()) {
            stopTimer();
        } else {
            throw new RuntimeException("Hata: Kronometre (Timer) başlatılmadı!!!\n");
        }
    }
 
    private static void stopTimer() {
        end = System.nanoTime();
        started = false;
    }
 
    /**
     * Timer.start() ile Timer.stop() arasında geçen süreyi nanosaniye olarak döndürür.
     */
    public static long getElapsedTime() {
        if (isStopped()) {
            return end - start;
        } else {
            throw new RuntimeException("Hata: Kronometre (Timer) durdurulmadı!!!\n");
        }
 
    }
 
    /**
     * Timer.start() ile Timer.stop() arasında geçen süreyi milisaniye cinsinden döndürür.
     */
    public static double getElapsedMilliseconds() {
        double seconds = (double) getElapsedTime() / 1000000.0;
        return seconds;
    }
 
    /**
     * Timer.start() ile Timer.stop() arasında geçen süreyi saniye cinsinden döndürür.
     */
    public static double getElapsedSeconds() {
        double seconds = (double) getElapsedTime() / 1000000000.0;
        return seconds;
    } 
    
    public static boolean InsertDataLog(String methodadi, String  SorguTipi, double Sure){
        boolean result=false;
        
        try
        {  
           baglan=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=kirala;user=admin;password=12345");
           Statement EklemeKomutu=baglan.createStatement();
           EklemeKomutu.executeUpdate("INSERT INTO log(MethodAdi,SorguTipi, Sure) values('" +
                                       methodadi +
                                "','" +SorguTipi +
                                "','" +Sure+"')");
           result =true;
           
        }              
        catch(Exception ex)
        { 
            result=false;
  
        }
        
        return result;
    }
}
