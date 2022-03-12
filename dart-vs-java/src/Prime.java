import java.util.ArrayList;
import java.util.List;

public class Prime {
    public static void main(String[] args) {
        long time = System.currentTimeMillis();
        List<Integer> primes = new Prime().findPrime(100000000);
        long elapsed = System.currentTimeMillis() - time;
        System.out.println("Elapsed time: " + elapsed + " ms. Found " + primes.size());
    }

    List<Integer> findPrime(int max)  {
        List<Integer> found = new ArrayList<>();
        found.add(2);
        outer:
        for (int i=3; i<=max; i = i + 2 ) {
            for (int p : found){
                if (i % p == 0) continue outer;
                if (p * p > i) break;
            }
            found.add(i);
        }
        return found;
    }
}
