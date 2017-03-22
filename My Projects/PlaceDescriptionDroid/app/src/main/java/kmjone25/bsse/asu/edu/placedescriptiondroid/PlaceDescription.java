package kmjone25.bsse.asu.edu.placedescriptiondroid;

/**
 * Created by Krystle on 3/19/17.
 */

import org.json.JSONObject;


public class PlaceDescription {

    /**
     * Created by lindquis on 1/14/16.
     */

        public String name, dscrpt, cat, addTtl, addDscrpt;
        public Double elev,lat,longi;

        PlaceDescription(){
            name = "";
            dscrpt = "";
            cat = "";
            addTtl = "";
            addDscrpt = "";
            elev = 0.0;
            lat = 0.0;
            longi = 0.0;
        }

        PlaceDescription(String jsonStr){
            try{
                JSONObject jo = new JSONObject(jsonStr);
                name = jo.getString("name");
                dscrpt = jo.getString("description");
                cat = jo.getString("category");
                addTtl = jo.getString("address-title");
                addDscrpt = jo.getString("address-description");
                elev = jo.getDouble("elevation");
                lat = jo.getDouble("latitude");
                longi = jo.getDouble("longitude");
            }catch(Exception ex){
                android.util.Log.w(this.getClass().getSimpleName(),
                        "error converting to/from json");
            }
        }
        public String toJsonString(){
            String ret = "";
            try{
                JSONObject jo = new JSONObject();
                jo.put("name",name);
                jo.put("description", dscrpt);
                jo.put("category", cat);
                jo.put("address-title", addTtl);
                jo.put("address-description", addDscrpt);
                jo.put("elevation", elev);
                jo.put("latitude", lat);
                jo.put("longitude", longi);
                ret = jo.toString();
            }catch (Exception ex){
                android.util.Log.w(this.getClass().getSimpleName(),
                        "error converting to/from json");
            }
            return ret;
        }

}
