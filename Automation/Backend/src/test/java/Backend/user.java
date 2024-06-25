package Backend;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class user {
    @Test
    Karate testSample(){
        return  Karate.run("classpath:Backend/user.feature").relativeTo(getClass());
    }

}
