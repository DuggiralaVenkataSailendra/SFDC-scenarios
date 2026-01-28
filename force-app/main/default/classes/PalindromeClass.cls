public class PalindromeClass 
{
    public static boolean palin(string ip)
    {
         if (string.isBlank(ip))
         {
            return false;
         }
        String cleaned = ip.replaceAll('[^a-zA-Z0-9]', '').toLowerCase();
        String reversed = '';

        for (Integer i = cleaned.length() - 1; i >= 0; i--) {
            reversed += cleaned.substring(i, i + 1);
        }

        return cleaned == reversed;
    }
        
}