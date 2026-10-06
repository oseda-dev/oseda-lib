// would want a generic instead

import java.util.List;
public class HOF {

    interface Mappable {
        public int apply(int i);
    }
    
    public static List<Integer> map(List<Integer> list, Mappable m){
        for(int i = 0; i < list.size(); i ++){
            int newValue = m.apply(
                list.get(i)
            );
            list.set(newValue, i);
        }

        return list;
    }
}


